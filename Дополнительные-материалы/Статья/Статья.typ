#set text(lang: "ru")
#set page(numbering: "1")
#show math.equation.where(block: true): set align(left)

#set heading(numbering: (..numbers) => {
  let nums = numbers.pos()
  if nums.len() <= 3 {
    numbering("1.1.", ..nums)
  }
})

#outline()
#pagebreak()

= Наработки по статье такой-то на тему такую-то

#include "Список задач.typ"

#include "0. Преамбула/обозначения.typ"
// #pagebreak()

#include "1. Виртуальное движение/описание-траектории.typ"
// #pagebreak()

#include "1. Виртуальное движение/профиль-виртуальный.typ"
// #pagebreak()

== Линейное движение (XY)
#include "2. Линейное движение/Траектория.typ"
#include "2. Линейное движение/Трапеция.typ"
#pagebreak()

== [TODO: перенести в вывод формул] Трапецеидальный профиль виртуальной скорости, круговое движение, XY
Описание траектории

$ bold(r)(u) = vec(x_1, y_1) + u dot vec(Delta x, Delta y) $
#line()
$Delta x = x_2 - x_1 $ \
$Delta y = y_2 - y_1 $
#line()
$x(u) = x_1 + u dot Delta x $\
$y(u) = y_1 + u dot Delta y $
#line()
$x'(u) = Delta x = "const" $ \
$x''(u) = 0 $ \
$x'''(u) = 0 $\
#line()
$y'(u) = Delta y = "const" $ \
$y''(u) = 0 $ \
$y'''(u) = 0 $\

Связь виртуального и физического движений
$v_x (t) = Delta x dot dot(u)(t) $\
$v_y (t) = Delta y dot dot(u)(t) $
#line()
$a_x (t) = Delta x dot dot.double(u)(t) $\
$a_y (t) = Delta y dot dot.double(u)(t) $
#line()
$j_x (t) = Delta x dot dot.triple(u)(t) $\
$j_y (t) = Delta y dot dot.triple(u)(t) $

Расчёт предельных характеристик виртуальной оси
// todo: если дельта нулевая, то не учитывать её

$ dot(u)_lim = min(V_(max, x)/abs(Delta x), V_(max, y)/abs(Delta y)) $

$ dot.double(u)_lim = min(A_(max, x)/abs(Delta x), A_(max, y)/abs(Delta y)) $

$ dot.triple(u)_lim = min(J_(max, x)/abs(Delta x), J_(max, y)/abs(Delta y)) $

Формирование профиля скорости
// TODO: dot(u)_"acc" убрать надо, наверное
$ L_"acc" + L_"dcc" = 2 dot integral_(0)^t_"acc" dot(u) (t) d t = dot.double(u)(t) dot t_"acc"^2 = (dot(u)_max)^2/dot.double(u)_lim $
#line()
$ L(dot(u)_max = dot(u)_lim) = (dot(u)_lim)^2/dot.double(u)_lim $

#image("assets/image-6.png")
#line()

Если $L_"acc" + L_"dcc" < 1 $:

$ dot(u)_max = dot(u)_lim $
$ t_"acc" = dot(u)_lim / dot.double(u)_lim $
$ t_"const" = 1/dot(u)_lim $
$ t_"dcc" = 1/dot(u)_lim + dot(u)_lim / dot.double(u) $

#image("assets/image-8.png")
#line()

Если $L_"acc" + L_"dcc" = 1 $:

$ dot(u)_max = dot(u)_lim $
$ t_"acc" = dot(u)_lim / dot.double(u)_lim $
$ t_"const" = t_"acc" $
$ t_"dcc" = 2 dot dot(u)_lim / dot.double(u)_lim $
#line()

Если $L_"acc" + L_"dcc" >1 $:

$ dot(u)_max = sqrt(dot.double(u)_lim) $
$ t_"acc" = 1 / sqrt(dot.double(u)_lim) $
$ t_"const" = t_"acc" $
$ t_"dcc" = 2 / sqrt(dot.double(u)_lim) $

#image("assets/image-9.png")
#line()

#include "Вывод формул.typ"
