const btns = document.querySelectorAll('.next-btn');

const nextBtn = () => {
  btns.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      const mainDiv = e.currentTarget.parentElement.parentElement;
      mainDiv.classList.add("slide-left");
      console.log("CLICK !", mainDiv);
    })
  })
};

export { nextBtn };
