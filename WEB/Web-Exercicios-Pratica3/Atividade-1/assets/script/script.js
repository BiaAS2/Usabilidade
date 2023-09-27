function calculaAno() {
  const anoNascimento = document.querySelector("#anoNascimento");
  const anoAtual = document.querySelector("#anoAtual");
  const form = document.querySelector(".form");

  form.addEventListener("submit", (evento) => {
    evento.preventDefault();

    const dataNascimento = new Date(anoNascimento.value);
    const dataAtual = new Date(anoAtual.value);

    const miliPorAno = 1000 * 60 * 60 * 24 * 365.25;
    const diferencaEmMiliSegundos = dataAtual - dataNascimento;

    const diferencaAnos = diferencaEmMiliSegundos / miliPorAno;
    const anoArrendondado = Math.floor(diferencaAnos);
    console.log(anoArrendondado);
  });
}
calculaAno();
