const btn = document.querySelector(".btn");

btn.addEventListener("click", () => {
  const num1 = document.querySelector("#val1").value;
  const num2 = document.querySelector("#val2").value;
  const num3 = document.querySelector("#val3").value;
  const ress = document.querySelector(".ress");
  const numeros = [num1, num2, num3];
  numeros.sort(function (a, b) {
    return b - a;
  });

  ress.innerHTML = `Seus números em ordem decrescente são ${numeros}`;
});
