var isValid = function (s) {
    while (s.includes("[]") || s.includes("()") || s.includes("{}")) {
      s = s.replace("[]", "").replace("()", "").replace("{}", "");
    }
    s = s.replace("[]", "").replace("()", "").replace("{}", "");
    return s.length === 0;
  };
  console.log(isValid('(){)'));
  console.log(isValid('(){}'));
  console.log(isValid('({})'));