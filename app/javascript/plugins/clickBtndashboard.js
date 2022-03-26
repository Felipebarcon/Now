const data = document.querySelectorAll(".card__header.frequency");
const newArray = [];
data.forEach((e) => {
  newArray.push(parseInt(e.innerText, 10))
})


const clickBtndashboard = () => {
  const button = document.querySelectorAll(".clickme");
  button.forEach((btn) => {
    let count = 0;
    newArray.forEach((frequency) => {
      btn.addEventListener('click', (e) => {
        if (count < frequency) {
          count += 1;
          btn.innerHTML = "Add a step: " + count;
        } else {
          btn.innerHTML = "Completed!"
        }
      })
    })
  })
};

export { clickBtndashboard };
