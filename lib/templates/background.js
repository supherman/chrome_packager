chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('packaged/index.html', {
    'width': 800,
    'height': 600
  });
});
