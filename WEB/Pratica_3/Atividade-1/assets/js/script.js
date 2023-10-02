function calculaAno() {
  const anoNascimento = document.querySelector("#anoNascimento");
  const anoAtual = document.querySelector("#anoAtual");
  const form = document.querySelector(".form");
  const resultadoIdadeAtual = document.querySelector(".idadeAnoAtual");
  const resultadoIdade2050 = document.querySelector(".idade2050");

  form.addEventListener("submit", (evento) => {
    evento.preventDefault();

    const dataNascimento = new Date(anoNascimento.value);
    const dataAtual = new Date(anoAtual.value);
    const data2050 = new Date("2050-01-01");

    const miliPorAno = 1000 * 60 * 60 * 24 * 365.25;

    const diferencaEmMiliSegundos = dataAtual - dataNascimento;
    const diferencaEmMilisegundos2050 = data2050 - dataNascimento;

    const diferencaAnos2050 = diferencaEmMilisegundos2050 / miliPorAno;
    const diferencaAnos = diferencaEmMiliSegundos / miliPorAno;

    const idade2050 = Math.floor(diferencaAnos2050);
    const idadeNormal = Math.floor(diferencaAnos);

    resultadoIdadeAtual.innerHTML = `A sua idade atual é ${idadeNormal}`;
    resultadoIdade2050.innerHTML = `A sua idade no ano de 2050 será ${idade2050}`;
  });
}
calculaAno();
