const entrada = document.querySelector("#input").value;
const btnConsulta = document.querySelector(".consultar");
const ress = document.querySelector(".ress");

btnConsulta.addEventListener("click", (evento) => {
  evento.preventDefault();

  if (entrada % 2 === 0) {
    ress.innerHTML = `O numero ${entrada} é par`;
  } else {
    ress.innerHTML = `O numero ${entrada} é impar`;
  }
  ress.style.marginTop = "1rem";
});
