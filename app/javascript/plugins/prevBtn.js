const prevBtn = () => {
  const btns = document.querySelectorAll('.prev-btn');
  const mainDiv = document.querySelector('.main-start-div');
    btns.forEach((btn) => {
      btn.addEventListener('click', (e) => {
        const mainDiv = e.currentTarget.parentElement.parentElement.previousElementSibling;
        mainDiv.classList.remove("slide-left");
        console.log(e.currentTarget.parentElement.parentElement);
      })
    })
};

export { prevBtn };
