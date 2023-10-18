const btn = document.querySelector("button");
const surp = document.querySelector(".surprise");
const music = document.querySelector("audio");

btn.addEventListener("click", () => {
  
btn.classList.add('nobtn')
  if (music.paused) {
    surp.classList.add("bruh");
    music.play();
  } else {
    music.pause();
  }
});
