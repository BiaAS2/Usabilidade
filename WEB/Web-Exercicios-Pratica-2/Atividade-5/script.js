const btn = document.querySelector("button");

btn.addEventListener("click", () => {
  const cat1 = Number(document.querySelector(".valor1").value);
  const cat2 = Number(document.querySelector(".valor2").value);
  const hipotenusa = Math.sqrt(Math.pow(cat1, 2) + Math.pow(cat2, 2)).toFixed(
    2
  );
  const resultado = document.querySelector(".result");

  resultado.innerText = `O valor da hipotenusa é: ${hipotenusa}`;
  resultado.style.color = "red";
});
