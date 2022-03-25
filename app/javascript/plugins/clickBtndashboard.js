const frequency = () => {
  const data = document.querySelectorAll(".card__header.frequency");
  const newArray = [];
  data.forEach((e)=> {
    newArray.push(parseInt(e.innerText, 10))
  })
  return newArray;
};

const clickBtndashboard = () => {
  const button = document.querySelectorAll(".clickme");
  button.forEach((btn) => {
    let count = 0;
    btn.addEventListener('click', (e) => {
      if (count >= frequency()) {
        console.log("You win")
      } else {
        count += 1;
        btn.innerHTML = "Add a step: " + count;
      }
    })
  })
};

export { clickBtndashboard };
