// Задаем базовые настройки отображения математики (опционально)
#set math.equation(numbering: "(1)")

$ phi.alt (x, omega) = 
  mat(
    delim: "[",
    (dif y) / (dif x) + sqrt(1 + xi^2), frac(1, n) sum_(i=1)^n log_2 (p_i);
    integral_(-infinity)^(infinity) e^(-t^2) dif t, lim_(h -> 0) (f(x+h) - f(x)) / h
  ) 
  times 
  cases(
    dot(x) + vec(a, b) = 0 & "если" x < 0,
    bb(A_(m times n) thin x) >= b_i & "если" x >= 0
  ) $
