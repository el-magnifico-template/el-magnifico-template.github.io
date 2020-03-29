// importScripts('/cache-polyfill.js');

const siteCacheName = 'Your-awesome-titlev1';
const dependenciesUrls = [
  "/favicon.ico",
   "/offline.html",
   "/"
]

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
    caches.open(siteCacheName).then(async (cache) => {
      return cache.match(event.request).then((response) => {
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      });
    })
  );
});




// strategies from the offline cookbook by jake archibald
// https://jakearchibald.com/2014/offline-cookbook/#serving-suggestions-responding-to-requests



  // Promise.race is no good to us because it rejects if
  // a promise rejects before fulfilling. Let's make a proper
  // race function:
  function promiseAny(promises) {
    return new Promise((resolve, reject) => {
      // make sure promises are all promises
      promises = promises.map(p => Promise.resolve(p));
      // resolve this promise as soon as one resolves
      promises.forEach(p => p.then(resolve));
      // reject if all promises reject
      promises.reduce((a, b) => a.catch(() => b))
        .catch(() => reject(Error("All failed")));
    });
  };

  self.addEventListener('fetch', function(event) {
    event.respondWith(
      promiseAny([
        caches.match(event.request),
        fetch(event.request)
      ])
    );
  });

