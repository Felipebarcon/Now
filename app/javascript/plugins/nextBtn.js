<<<<<<< HEAD


=======
>>>>>>> b608447e6ad91c95caab7dfbb1b52e39759ee1cc
const nextBtn = () => {
  const btns = document.querySelectorAll('.next-btn');
  btns.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      const mainDiv = e.currentTarget.parentElement.parentElement;
      mainDiv.classList.add("slide-left");
    })
  })
};

export { nextBtn };
