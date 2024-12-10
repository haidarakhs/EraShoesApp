'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "07aadb4484265ecb809085af182f4bae",
"version.json": "b1daa3b923404323d4db852e0ea9e072",
"index.html": "b1ef1064f310b205d9551d635cc84234",
"/": "b1ef1064f310b205d9551d635cc84234",
"main.dart.js": "c787ea22761492e83b32dea1f71f167d",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d36ecf3d87eff023d27bdb45c31d31d1",
"assets/AssetManifest.json": "cfdfa4590763d5eb6c81f9f928855143",
"assets/NOTICES": "3bd6dee772aad3ec04d3fb8dcd999bbd",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "0213bff9ccbb8bd5de94ebb701a30915",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "437ad525ffaed6c63bac30df236864d5",
"assets/fonts/MaterialIcons-Regular.otf": "64823526cca413f7a2379b4b7e1f8564",
"assets/assets/images/protro%25203.jpg": "599057e42e2e0803e9f5c9bd2ca3d45c",
"assets/assets/images/image%2520iphone.png": "298c4db646182d7650c4205ed05e9913",
"assets/assets/images/protro%25202.jpg": "3d99165a90263000fc89f3379c5e1ef2",
"assets/assets/images/mastercard-2.png": "03c20b63d4ffa13484f48fac9d2e32b2",
"assets/assets/images/Pattern%2520Success.png": "c46441a1f4f1d8913d779178aebc9bfd",
"assets/assets/images/protro%25201.jpg": "3f8bc70c4f246663008dec3f99001507",
"assets/assets/images/eletric%25201.png": "1030dad47c185a0af3e2c009b01521b4",
"assets/assets/images/product%25201%2520image.png": "d22ed624beffb93913bb3436bd8f9e6a",
"assets/assets/images/protro%25204.jpg": "6940ee298f1564602e81907d62ac3f2a",
"assets/assets/images/rrrr.png": "1d233e6648a139a8b30d63489e852fc8",
"assets/assets/images/shoes2.png": "e746c8992abd29da966cf91f8da87290",
"assets/assets/images/fedex-express.png": "5c65ce272dc58c3dd0b416f0549f23e4",
"assets/assets/images/crocs%25204.png": "068cd4097b5a1ad2c61e958d646d215d",
"assets/assets/images/jordan%25202.jpg": "fb8226b16d4721de4bbf6e391724cbff",
"assets/assets/images/banner%2520spesial%25202.jpeg": "aa53bd6498a385d83494160367b785f3",
"assets/assets/images/jordan%25203.jpg": "9cd2ad26b834726db74b99f3e52a317a",
"assets/assets/images/jordan%25201.png": "9995be25e87d9c4ee03a0be5af8bf996",
"assets/assets/images/nike%25204.jpg": "9423581f8966bab07fe8d699cda84be0",
"assets/assets/images/visa.png": "e5102f3cf10261b0cf2ddb4c27e66f14",
"assets/assets/images/crocs%25202.png": "970a58af5888c4920b18a77518c802a9",
"assets/assets/images/jordan%25204.jpg": "86a0894aa42c12acaed48f4918cd1eab",
"assets/assets/images/jordan%25205.jpg": "58e8c170dd953de463113a75802002df",
"assets/assets/images/nike%25201.jpg": "fa3e538497bc38a10d865465255c1e20",
"assets/assets/images/crocs%25203.png": "92808008a5978bf0c851d46d6f24f50a",
"assets/assets/images/crocs%25201.png": "979e389bfdfba1455491a3b8d2693060",
"assets/assets/images/nike%25203.jpg": "ac57c4aa9806e00716b03d1249913fcf",
"assets/assets/images/nike%25202.jpg": "c8ea00f7a14f428935d973776d408d08",
"assets/assets/images/Image%2520Popular%2520Product%25203.png": "fcbdff37daf1bf2aca91b6bc9323c4ca",
"assets/assets/images/macbook%2520design.png": "84223eeb83faa4a62e9f53b2a34eaf92",
"assets/assets/images/Image%2520Popular%2520Product%25202.png": "0daef779816bf4febf8967c5b8c9ddb3",
"assets/assets/images/glap.png": "562f67ce5b89f0fd52b82756866f5c6f",
"assets/assets/images/Profile%2520Image.png": "07a16c1fa377ead829efef7e95ffa5c4",
"assets/assets/images/banner%2520spesial.jpeg": "b6918d05db5a6c7d270e846b13bd8692",
"assets/assets/images/Image%2520Popular%2520Product%25201.png": "af5c7d2b62467e5340990c2c18d04841",
"assets/assets/images/splash_3.png": "54b2889511d311463cf331284d9197bb",
"assets/assets/images/jordan%2520low.jpg": "fb8226b16d4721de4bbf6e391724cbff",
"assets/assets/images/splash_2.png": "3580b1c0bb9f244b51d8042b8e762bf5",
"assets/assets/images/Image%2520Banner%25203.png": "ac22df8189dc403ff2e113489fb114b4",
"assets/assets/images/success.png": "f80df756b315fbb72670a78e82095c3c",
"assets/assets/images/splash_1.png": "51c064d3f19cf39aee627a3aed744193",
"assets/assets/images/max%25201.png": "ec2ede9e5ad54abab11866d6bbf2de22",
"assets/assets/images/google-pay.png": "515fdb5d6b0c72ab7ff1d020715da990",
"assets/assets/images/discount-up.png": "a75afd1792eb192718f27b29d10f046a",
"assets/assets/images/apple-pay.png": "8ed30196e39ee689aa2cc5b604da80ee",
"assets/assets/images/max%25203.png": "db8d7af25f4a4252fd4a672a29426eb8",
"assets/assets/images/max%25202.png": "6e452f149d2e97e2c1f28ef1b98ad67f",
"assets/assets/images/ipad1.png": "b31ffe23450504d6910c42d5fc0869ea",
"assets/assets/images/paypal.png": "fdd28064849926e343b82d25e9df0a03",
"assets/assets/images/tshirt.png": "eaa8d7a86210783a28569afcd67632c6",
"assets/assets/images/ipad2.png": "1142d4b080fe1bd8be20da176665d9d9",
"assets/assets/images/max%25204.png": "6894028af1b122c192016fe913f92550",
"assets/assets/images/banner%2520diskon.jpeg": "ebb26ea3d8b2c95470a9859a32086541",
"assets/assets/icons/Search%2520Icon.svg": "e86ce3fdf2c8be303b1338a287062d69",
"assets/assets/icons/Log%2520out.svg": "d762ccf53dc6843df2e7fa55ca08dba0",
"assets/assets/icons/Plus%2520Icon.svg": "8980578e97cd2cbad00b71be8183f91d",
"assets/assets/icons/receipt.svg": "6dd6b67fb2796be43a9b9d2b1ee803de",
"assets/assets/icons/User%2520Icon.svg": "3944ad12a2e9014c192fc5795e69a589",
"assets/assets/icons/Parcel.svg": "17e6ca2305b1da7527281d69259c855a",
"assets/assets/icons/Chat%2520bubble%2520Icon.svg": "997d4f0aa07c6094a4339040741b4bab",
"assets/assets/icons/User.svg": "da6c4fccfbbf6a07d6478cb5ac7e9f9f",
"assets/assets/icons/Flash%2520Icon.svg": "fcde0c03f2836567e42a45ac08616a42",
"assets/assets/icons/Bill%2520Icon.svg": "100acc86a48a094da8902a47f3bab1b6",
"assets/assets/icons/Shop%2520Icon.svg": "71cf1a5022470cbbd1e76a923d1d968f",
"assets/assets/icons/Question%2520mark.svg": "b20151b891eb8e9c927f259dabd6e553",
"assets/assets/icons/Cart%2520Icon.svg": "b58f308b0312e4358a04eeadc02575d5",
"assets/assets/icons/Lock.svg": "ea577ace50978a6344c26a10c6f27b49",
"assets/assets/icons/Settings.svg": "d8e321d2db0af3ee55c643d20312ba8a",
"assets/assets/icons/Mail.svg": "deba8f9b4446c04abcf1cdca0590833a",
"assets/assets/icons/Star%2520Icon.svg": "a4c930c4bf5854048edb32d7d370aada",
"assets/assets/icons/Discover.svg": "b5e8150c8f0c20351b84b2241405c8b4",
"assets/assets/icons/Bell.svg": "536eb6601a35ddab0f7b6bdd6c3ff145",
"assets/assets/icons/Game%2520Icon.svg": "116bd2707a410cf3a2e8559962e1c2a3",
"assets/assets/icons/arrow_right.svg": "9c492cd795858f3522b4debfb737cbad",
"assets/assets/icons/Gift%2520Icon.svg": "d109169b3e2ab8256445f626ae4c888c",
"assets/assets/icons/Close.svg": "6b3561c87a732bcdf1cfc4cefd9cd9f6",
"assets/assets/icons/Back%2520ICon.svg": "48c3c4eb319f67f90296649fa8271cce",
"assets/assets/icons/Trash.svg": "fe2725bc4781bace6708d522889456e7",
"assets/assets/icons/facebook-2.svg": "b16d4798a9c0f65ff3a7b12270cd7f7d",
"assets/assets/icons/Cash.svg": "a24a70772c290370387c0bb33730ce01",
"assets/assets/icons/Heart%2520Icon.svg": "0dcf36056268963f7b582eb3bd80ec72",
"assets/assets/icons/Phone.svg": "5fc702cf20c5fc37bd28a3bd5c8d8810",
"assets/assets/icons/Success.svg": "70f76d95e96ee6877ec6367b049fbc4d",
"assets/assets/icons/Call.svg": "3745eeef13c1facd87afe4cbe208e300",
"assets/assets/icons/google-icon.svg": "af89e162738e95f20e41f175cf1e930e",
"assets/assets/icons/Conversation.svg": "c23404da9004575ccff6f78b09be3b13",
"assets/assets/icons/remove.svg": "a3a85cd7bc1699150a2c86e850a90e60",
"assets/assets/icons/twitter.svg": "58e83cac5d93b6be707d27a9ffb5aa96",
"assets/assets/icons/Error.svg": "b69030d759140aaada89f2cc044a3c72",
"assets/assets/icons/Heart%2520Icon_2.svg": "fd7dce0eb7741375843bcda4c7f4e52d",
"assets/assets/icons/Location%2520point.svg": "5b1539e1fe1898b2155b6cc14b9f3c75",
"assets/assets/icons/Check%2520mark%2520rounde.svg": "e3ad560a09a1bf785b5505c21777ecee",
"assets/assets/icons/Camera%2520Icon.svg": "6c417b2027ec9b901f856099422fc258",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
