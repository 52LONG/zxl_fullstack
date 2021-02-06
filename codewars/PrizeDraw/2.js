function rank(st, we, n) {
    if (!st.length) {
      return "No participants";
    }
    const names = st.split(',');
    if (names.length < n) {
      return "Not enough participants";
    }
    const weightsObj = {};
    names.forEach(el => {
      weightsObj[el] = we[names.indexOf(el)];
    })
    names.sort((a,b) => {
      const somA = calculateSom(a) * weightsObj[a];
      const somB = calculateSom(b) * weightsObj[b];
      return compare(somA, somB, -1) || compare(a, b);
    });
    return names[n - 1];
  }
  
  function calculateSom(name) {
    return name.toLowerCase().split('').reduce((acc, el) => acc + (el.charCodeAt(0) - 96), 0) + name.length;
  }
  
  function compare(a, b, inverter = 1) {
      if (a > b) {
        return 1 * inverter;
      }
      if (a < b) {
        return -1 * inverter;
      }
    return 0;
  }