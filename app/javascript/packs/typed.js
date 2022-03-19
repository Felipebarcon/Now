const typed = () => {
  var typed = new Typed('#typed', {
    stringsElement: '#typed-strings',
    typeSpeed: 30
  });
  return typed;
}

export { typed };
