const btn = document.querySelector(".btn");

btn.addEventListener("click", () => {
  const altura = document.querySelector("#altura").value;
  const sexo = document.querySelector("#sexo").value;
  const ress = document.querySelector(".ress");

  const IMCh = 72.2 * altura - 58;

  const IMCm = 62.1 * altura - 44.7;
  if (sexo === "masculino") {
    ress.innerHTML = `O seu IMC é ${Math.floor(IMCh)}`;
  } else {
    ress.innerHTML = `O seu IMC é ${Math.floor(IMCm)}`;
  }
});
