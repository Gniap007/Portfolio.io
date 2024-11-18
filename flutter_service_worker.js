'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "34e0338029867e989dd4d5c0750e2f60",
".git/config": "e14e0b9126bb6d883de72549e9065db9",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "e92bdbb049980355c91db713aa8631f7",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5ea762eadb12e96426d6993b5bb4fed2",
".git/logs/refs/heads/gh-pages": "35d3502bf738d09725cb89ccd11cc1c2",
".git/logs/refs/heads/master": "cbdb023f2913e540e7c658578ad709b7",
".git/logs/refs/remotes/origin/gh-pages": "9a3f3e4f53e08ecdb0b5ea572e91ec6c",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/0f/77708c26847c95b0f7bed02bf845b23fd4166c": "e259c3c89e72c220e05aff38116584fb",
".git/objects/18/449c822c3bcea69e11aa1df77b5cf070bb1018": "c94bcd9c15fb1237f45e28ea1ff4547d",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/23/cf232e77e2585579b84f854545981167c05c03": "f908bdfa8095577d8144105dd9ea79ee",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/2c/91067d1ad9843a890cadba9d30e1a8bed8f1f0": "ff859302b431cb17367692f169b18769",
".git/objects/2d/483a548cbf161afe02456fe9c31e6f21e92b78": "a280ac2b17c7e247475100395eb00df7",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3a/a03200799c1ce8b1cf46e4dd399966426caf6c": "4e75c0e28bf8260c6cb7b4edf9349597",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4a/8370f9864ab6131e7aca65e0ae296973a03c85": "92d949cfd463ba765a3d6cf2689c1cad",
".git/objects/59/07cc13a3657fa17c2aeff5c8c9ae6a223903ab": "f02e9ea88eb2bfd7bb31b67260ead94d",
".git/objects/5b/1ac51881b5e0b3386999cf6f97d185348a4eb4": "c2bd314d052573f52a0287c04afe668f",
".git/objects/60/bb72b66fc7f345d183f1100d5f5304d8e0c9c0": "42b99a9ee75775daa423e841266496e2",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/73/a4b87385dea4205bb625e90f350132ca6a352c": "5e491e03e97e3186d863740af8bcd1c0",
".git/objects/81/0f4c4761ccc42b7cf5dd4fb3d6c13c47630828": "72735dd36fc6b251f041f243ba08d268",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/c57c9f0148e0aab39b033bf269dc5454d7ed78": "72e74b257b3341cfdc2a0edc6b88c00c",
".git/objects/8d/14354841c2ec596444a9025253b61b1005e1e6": "b24681c163d777c48a4cbbbf68549872",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/95/5919ca5984fcdf72e065c443eaec0cfd75050a": "50f82b30d5c71b920411d34d2f935cfb",
".git/objects/98/40daecf45e2762ea242bf4816077fde499f3bb": "455e7ad0cfaf05f12f4183122e2180f7",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/9a/dc8a1ba43470f8782ce1349b6f25103e718b60": "27a2a3645b74b5927b68f71fd4e53fe8",
".git/objects/a5/b647b06fcbfdccfb6defc6c2733eb67862c7f7": "7a7adb4e962b04ae850faff8a37aa6b6",
".git/objects/a8/6b8378ce3f7357b5dbd6f78c67276bd1da2433": "7f1572074319e8a7387af48c3a5fe7e8",
".git/objects/ae/869ef600a9951cdbea25affb18379ce10fe3fe": "b3732a654532132fc361aaa08ba46a78",
".git/objects/af/ca3aa38d1cc1161fe7b7ba9c9f0fb1e5c5b97d": "a99cde3b07ca00da4ccaf173da1df88a",
".git/objects/b0/5bcce0edb13e519af747cd8e85da0ddfd771dc": "1cced4c5ecf46259fb0115a004362054",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/bb/ab2602b0d26b8190afa102944e70a1f3a5bffb": "209e8fd9682d8977c81aa9d223b60f5c",
".git/objects/bc/189714a33d8facbde6d0b6662d741b7e2035ef": "50a55922ec30a27373ad3db32cde5a04",
".git/objects/ca/1c135a9a3564dfb0071ff00139cfce6bb44731": "0bc2c6c96eb1afe8ffba4ac6b6d5cade",
".git/objects/ce/95750e16e81cdf9398ada12aa750d3390293e5": "22cfedb727dba8873a57d415c48ac878",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/82f94f4bc4848060cf0c52602c35155a51beed": "753f2da99cfbcce1044b677c7fde99a3",
".git/objects/d8/e71828f5252af03f2d1b54b66e3e85b8346f5b": "4a77a7fa2061869fdc31b284621e0c62",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/e8/b07b837b718689b38283fb0b0be876ff852094": "64e8aea77126a807f0f42985dbebaef4",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/b90fab1423dcfb3d09137c0f0542d45b055194": "efe6fa3365e1238178abd87caa7afcbe",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/ff/2457c57d5ac7c3a4cb63f2aca6d72d9ae423fa": "716212782fb56c8d92fb3e1d9026413a",
".git/refs/heads/gh-pages": "8ce5a6e63d85e752e6ba7c70f0aaf043",
".git/refs/heads/master": "8ce5a6e63d85e752e6ba7c70f0aaf043",
".git/refs/remotes/origin/gh-pages": "8ce5a6e63d85e752e6ba7c70f0aaf043",
"assets/AssetManifest.bin": "ba14f40685cfe4e8aab3705d242871a9",
"assets/AssetManifest.bin.json": "a363f16fc2b7401768e090e4053c6b38",
"assets/AssetManifest.json": "785a92c0373b05d816c02d1aa584df2f",
"assets/assets/images/android.png": "95cb6603306220d1596bdadcb40ed275",
"assets/assets/images/apple.png": "be778ccce23f7a4a2202ed4c609baf51",
"assets/assets/images/desktop.png": "0725b05cecf6cd7c2817971ce5badb50",
"assets/assets/images/easy.png": "f3bac26c145557bd65770ae41f18f110",
"assets/assets/images/fluttera.png": "c9d894c27d56d7c692c58bc2f6e09601",
"assets/assets/images/Git_icon.svg-removebg-preview.png": "f2c27e22e22f3b4fadfdf1ad80232558",
"assets/assets/images/image-removebg-preview.png": "388d688bdfad2e2c5186ad2a51ef750b",
"assets/assets/images/images__1_-removebg-preview.png": "065b8f7b3359c2e86046fb46db0e755e",
"assets/assets/images/logo.png": "ce83ce8b16fa45063adb83062ef98293",
"assets/assets/images/png-clipart-dart-logo-thumbnail-tech-companies-removebg-preview.png": "c99ab8dcb9fae2874bddb2c13eddf4b9",
"assets/assets/images/png-transparent-figma-logo-brand-logos-brands-in-colors-icon-thumbnail-removebg-preview.png": "0995e3c898960e2c98a95d11e97a88c7",
"assets/assets/images/png-transparent-jira-hd-logo-thumbnail-removebg-preview.png": "ea60dc0caaa1b0d665794f8a4cf1c575",
"assets/assets/images/web.png": "22ee6bc82fbe657cbf4cabacb60b3ae2",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "2b9442a558a0ea2abc77a3cc72f657a5",
"assets/NOTICES": "4cc81a622e61e1e27cf2662d353edf13",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "931e56e59c44c2070eca1a29304d5517",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b5771f11ec154c350e89ce27484fdde4",
"/": "b5771f11ec154c350e89ce27484fdde4",
"main.dart.js": "3497ffb6045a5e8d4d0b951196e7c3cb",
"manifest.json": "3a5d55a0638a6a11057871908fed6e16",
"version.json": "79bb782bfcf86c776529b31b90272c85"};
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
