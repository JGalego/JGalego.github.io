(function () {
  // Photo carousels (posts): prev / next buttons scroll one photo at a time.
  document.querySelectorAll(".photo-carousel").forEach(function (carousel) {
    var track = carousel.querySelector(".photo-carousel-track");
    var prev = carousel.querySelector(".carousel-prev");
    var next = carousel.querySelector(".carousel-next");
    if (!track || !prev || !next) return;

    function scrollByAmount(dir) {
      var img = track.querySelector("img");
      var amount = img ? img.getBoundingClientRect().width + 8 : track.clientWidth * 0.8;
      track.scrollBy({ left: dir * amount, behavior: "smooth" });
    }

    prev.addEventListener("click", function () { scrollByAmount(-1); });
    next.addEventListener("click", function () { scrollByAmount(1); });
  });

  // Redacted text ({% redact %}): hovering reveals one character at a time,
  // tapping / clicking / pressing Enter or Space toggles the whole thing.
  document.querySelectorAll(".redact").forEach(function (el) {
    var chars = el.querySelectorAll(".redact-char");

    function show(c, on) { c.textContent = on ? c.dataset.char : "█"; }
    function isRevealed() { return el.classList.contains("is-revealed"); }
    function toggle() {
      var on = el.classList.toggle("is-revealed");
      chars.forEach(function (c) { show(c, on); });
    }

    chars.forEach(function (c) {
      c.addEventListener("mouseenter", function () { show(c, true); });
      c.addEventListener("mouseleave", function () { if (!isRevealed()) show(c, false); });
    });
    el.addEventListener("click", toggle);
    el.addEventListener("keydown", function (e) {
      if (e.key === "Enter" || e.key === " ") {
        e.preventDefault();
        toggle();
      }
    });
  });
})();
