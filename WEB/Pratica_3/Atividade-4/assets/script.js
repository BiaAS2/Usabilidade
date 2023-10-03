const btnConsulta = document.querySelector(".consultar");

btnConsulta.addEventListener("click", (evento) => {
  evento.preventDefault();
  const entrada = document.querySelector("#input").value;
  const ress = document.querySelector(".ress");
  if (entrada % 2 === 0) {
    ress.innerHTML = `O numero ${entrada} é par`;
  } else {
    ress.innerHTML = `O numero ${entrada} é impar`;
  }
  ress.style.marginTop = "1rem";
});
