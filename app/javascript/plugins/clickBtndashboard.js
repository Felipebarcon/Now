const clickBtndashboard = () => {
  const button = document.querySelectorAll(".clickme");
  button.forEach((btn) => {
    var count = 0;
    btn.addEventListener('click', (e) => {
      count += 1;
      btn.innerHTML = "Add a step: " + count;
    })
  })
};

export { clickBtndashboard };
