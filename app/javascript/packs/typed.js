const typed = () => {
  var typed = new Typed('#typed', {
    stringsElement: '#typed-strings',
    typeSpeed: 10
  });
  return typed;
}

export { typed };
