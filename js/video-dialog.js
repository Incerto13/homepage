// Opens links marked .js-video in a native <video> player inside a <dialog>:
// play/pause, scrub to rewind/fast-forward, fullscreen, playback speed.
(function () {
  var dialog = document.getElementById('video-dialog');
  if (!dialog || typeof dialog.showModal !== 'function') return; // old browser: links open the MP4 directly
  var video = dialog.querySelector('video');
  var title = dialog.querySelector('.video-dialog__title');

  function close() {
    video.pause();
    dialog.close();
  }

  document.addEventListener('click', function (e) {
    var link = e.target.closest('a.js-video');
    if (!link) return;
    e.preventDefault();
    title.textContent = link.dataset.title || '';
    dialog.classList.toggle('video-dialog--portrait', /mobile/.test(link.getAttribute('href')));
    if (video.getAttribute('src') !== link.getAttribute('href')) {
      video.src = link.getAttribute('href');
      video.poster = link.dataset.poster || '';
    }
    dialog.showModal();
    video.play().catch(function () { /* autoplay blocked: user presses play */ });
  });

  dialog.querySelector('.video-dialog__close').addEventListener('click', close);
  // click on the dimmed backdrop (outside the dialog box) closes it
  dialog.addEventListener('click', function (e) { if (e.target === dialog) close(); });
  // Esc closes the dialog natively; make sure the video stops too
  dialog.addEventListener('close', function () { video.pause(); });
})();
