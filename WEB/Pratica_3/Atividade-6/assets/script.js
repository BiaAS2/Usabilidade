const btn = document.querySelector(".btn");

btn.addEventListener("click", () => {
  const altura = document.querySelector("#altura").value;
  const sexo = document.querySelector("#sexo").value;
  const ress = document.querySelector(".ress");

  const pesoh = 72.2 * altura - 58;

  const pesom = 62.1 * altura - 44.7;
  if (sexo === "masculino") {
    ress.innerHTML = `O seu peso ideal é ${Math.floor(pesoh)}`;
  } else {
    ress.innerHTML = `O seu peso ideal é ${Math.floor(pesom)}`;
  }
});
