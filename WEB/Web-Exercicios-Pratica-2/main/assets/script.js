const btn = document.querySelector("button");
const surp = document.querySelector(".surprise");
const music = document.querySelector("audio");

btn.addEventListener("click", () => {
  surp.classList.add("bruh");
btn.classList.add('nobtn')
  if (music.paused) {
    music.play();
  } else {
    music.pause();
  }
});
