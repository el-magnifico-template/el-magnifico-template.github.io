---
layout: 
---

const offlinePageUrl = '/offline.html'
const siteCacheName = '{{ site.title | replace: " ", "-"}}v1'
const dependenciesUrls = [
{% for page in site.pages %}
{% if page.permalink %}
"{{ page.permalink | prepend: site.baseurl }}",
{% else %}
"{{ page.url | prepend: site.baseurl }}",
{% endif %}
{% endfor %}
  "/manifest.json",
  "/favicon.ico",
    "/",
   "/img/online.svg"
];

self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(siteCacheName).then((cache) => {
      return cache.addAll(dependenciesUrls);
    })
  );
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((cacheNames) => {
      return Promise.all(
        cacheNames.filter((cacheName) => {
          return cacheName !== siteCacheName
        }).map((cacheName) => {
          return caches.delete(cacheName);
        })
      );
    })
  );
});

self.addEventListener('fetch', (event) => {
  event.respondWith(
    caches
    .open(siteCacheName)
    .then((cache) => (
      cache
      .match(event.request)
      .then((cacheResponse) => {
        return cacheResponse || fetch(event.request)
          .then((fetchResponse) => {
            cache.put(event.request, fetchResponse.clone())
            return fetchResponse
          })
      })
      .catch(() => {
        if (event.request.mode === 'navigate' ||  
            (event.request.method === 'GET' && event.request.headers.get('accept').includes('text/html'))
        ) {
          return caches.match(offlinePageUrl)
        }
      })
    ))
  )  
})








self.addEventListener('message', (event) => {
  const isARefresh = (event) => event.data.message === 'refresh'

  const createDeleteOperationFor = (url, siteCache, requests) => siteCache
    .delete(requests
    .find((request) => request.url === url))

  const createDeleteOperationsForImages = (siteCache, requests) => requests
    .filter((request) => request.url.endsWith('.jpg') && request.url.includes('posts'))
    .map((request) => siteCache.delete(request))

  const sendRefreshCompletedMessageToClient = (event) => event.ports[0].postMessage({refreshCompleted: true})

  if (isARefresh(event)) {
    caches.open(siteCacheName).then((siteCache) => {
      siteCache.keys().then((requests) => {
        const deleteRequestToBeRefreshed = createDeleteOperationFor(event.data.url, siteCache, requests)
        const deleteRequestsForImagesToBeRefreshed = createDeleteOperationsForImages(siteCache, requests)
        Promise.all([
          deleteRequestToBeRefreshed, 
          ...deleteRequestsForImagesToBeRefreshed
        ])
          .then(() => sendRefreshCompletedMessageToClient(event))
          .catch(() => sendRefreshCompletedMessageToClient(event))
      })
    }) 
  }
})
