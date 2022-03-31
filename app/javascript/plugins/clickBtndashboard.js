const data = document.querySelectorAll(".card__header.frequency");
const newArray = [];
data.forEach((e) => {
  newArray.push(parseInt(e.innerText, 10))
})



const clickBtndashboard = () => {
  const button = document.querySelectorAll(".clickme");
  button.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      btn.innerHTML = "Completed!"
    })
})
};

export { clickBtndashboard };
