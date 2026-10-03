=== Трапецеидальный профиль виртуальной скорости

==== Виртуальная кинематика

$ u(t) = cases(
    1/2 dot.double(u)_max t^2 "," & 0 <= t <= t_"acc",
    dot(u)_max dot (t - t_"acc") + L_"acc" "," & t_"acc" <= t <= t_"const",
    dot(u)_max dot t - 1/2 dot.double(u)_max dot t^2 + 1/2 dot.double(u)_max dot t_"dcc"^2 - dot(u)_max dot t_"dcc" +1 "," & t_"const" <= t <= t_"dcc"
) $

$ dot(u)(t) = cases(
    dot.double(u)_max dot t "," & 0 <= t <= t_"acc",
    dot(u)_max "," & t_"acc" <= t <= t_"const",
    dot(u)_max - dot.double(u)_max dot (t - t_"const") "," & t_"const" <= t <= t_"dcc"
) $

// TODO: аккуратнее рассмотреть граничные точки
$ dot.double(u)(t) = cases(
    dot.double(u)_max "," & 0 <= t < t_"acc",
    0 "," & t_"acc" <= t <= t_"const",
    -dot.double(u)_max "," & t_"const" <= t <= t_"dcc"
) $

// TODO: аккуратнее рассмотреть граничные точки
$ dot.triple(u)(t) = cases(
  0 & "," & 0 <= t <= t_"acc",
  0 & "," & t_"acc" <= t <= t_"const",
  0 & "," & t_"const" <= t <= t_"dcc"
) $

==== Осевая кинематика

$ cases(
    x(t) = x_1 + Delta x dot u(t),
    y(t) = y_1 + Delta y dot u(t),
) $

$ cases(
    v_x (t) = Delta x dot dot(u)(t),
    v_y (t) = Delta y dot dot(u)(t),
) $

$ cases(
    a_x (t) = Delta x dot dot.double(u)(t),
    a_y (t) = Delta y dot dot.double(u)(t),
) $

$ cases(
    j_x (t) = Delta x dot dot.triple(u)(t),
    j_y (t) = Delta y dot dot.triple(u)(t),
) $

==== Вывод формул

$ dot(u)_max = cases(
    dot(U)_max "," & 2 dot L_"acc" <= 1,
    sqrt(dot.double(U)_max) "," & 2 dot L_"acc" > 1,
) $

$ dot.double(u)_max = dot.double(U)_max $

$ t_"acc" = cases(
    display(dot(U)_max / dot.double(U)_max) "," & 2 dot L_"acc" <= 1,
    display(1/sqrt(dot.double(U)_max)) "," & 2 dot L_"acc" > 1,
) $

$ t_"const" = cases(
    display(1 / dot(U)_max) "," & 2 dot L_"acc" <= 1,
    t_"acc" "," & 2 dot L_"acc" > 1,
) $

$ t_"dcc" = cases(
    display(1/dot(U)_max + dot(U)_max / dot.double(U)_max) "," & 2 dot L_"acc" <= 1,
    display(2/sqrt(dot.double(U)_max)) "," & 2 dot L_"acc" > 1,
) $

$ L_"acc" =dot(U)_max $

$ dot(U)_max = min(V_(max, x) / (Delta x), V_(max, y) / (Delta y)) $
$ dot.double(U)_max = min(A_(max, x) / (Delta x), A_(max, y) / (Delta y)) $


#pagebreak()
// TODO: вывод формул

#image("/assets/image-10.png")
#image("/assets/image-11.png")