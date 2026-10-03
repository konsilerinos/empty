== [TODO] Профиль виртуальный

=== Переход к виртуальной координате

Пусть $u$ - виртуальная координата. Тогда:
- $u(t)$ - виртуальная координата
- $dot(u)(t)$ - виртуальная скорость
- $dot.double(u)(t)$ - виртуальное ускорение
- $dot.triple(u)(t)$ - виртуальный рывок

=== Связь виртуального и физического движений

$v_i = f'_i (u) dot dot(u)$

$a_i = f''_i (u) dot (dot(u))^2 + f'_i (u) dot dot.double(u)$

$j_i = f'''_i (u) dot (dot(u))^3 + 3 f''_i (u) dot dot(u) dot dot.double(u) + f'_i (u) dot dot.triple(u)$ 

=== Введение ограничения виртуальной скорости

$dot(u)_max $ - модуль максимальной виртуальной скорости.

$ abs(v_i) <= V_(max, i) => abs(f'_i) dot dot(u) <= V_(max, i) $

$ dot(u) <= V_(max, i)/abs(f'_i) $

$ 0 <= dot(u)_max <= dot(u)_lim = min_(i=1 dots N) (V_(max, i)/abs(f'_(max, i)  )) $ 

=== Введение ограничения виртуального ускорения

$dot.double(u)_max $ - модуль максимального виртуального ускорения.

$ abs(a_i) <= A_(max, i) =>  abs(f''_i) dot dot(u)^2 + abs(f'_i) dot dot.double(u) <= A_(max, i) $

$ dot.double(u) <= (A_(max, i) - abs(f''_(max, i)) dot (dot(u)_max)^2)/abs(f'_(max, i)) $

$ 0 <= dot.double(u)_max <= dot.double(u)_lim = min_(i=1 dots N)((A_(max, i) - abs(f''_(max, i)) dot (dot(u)_max)^2)/abs(f'_(max, i)))  $

=== Введение ограничения виртуального рывка

$dot.triple(u)_max $ - модуль максимального виртуального рывка.

$ abs(j_i) <= J_(max, i) => abs(f'''_i) dot(u)^3 + 3 dot abs(f''_i) dot dot(u) dot dot.double(u) + abs(f'_i) dot dot.triple(u) <= J_(max, i) $

$ dot.triple(u) <= (J_(max, i) - abs(f'''_i) dot (dot(u))^3 - 3 dot abs(f''_i) dot dot(u) dot dot.double(u))/abs(f'_i) $

$ 0 <= dot.triple(u)_max <= dot.triple(u)_lim = min_(i = 1 dots N)((J_(max, i) - abs(f'''_(max, i)) dot (dot(u)_max)^3 - 3 dot abs(f''_(max, i)) dot dot(u)_max dot dot.double(u)_max)/abs(f'_(max, i))) $

=== Формирование виртуального профиля скорости

Пусть движение состоит из трёх фаз:
- Разгон, $t in [0, t_"acc"] $
- Равномерное движение, $t in [t_"acc", t_"const"] $
- Замедление, $t in [t_"const", t_"dcc"] $

Продолжительность фаз в общем случае такая:
- $Delta t_"acc" = t_"acc" - 0 = t_"acc" $
- $Delta t_"const" = t_"const" - t_"acc" $
- $Delta t_"dcc" = t_"dcc" - t_"const" $

#image("../assets/image-7.png")

$ L_"acc" = integral_(0)^(t_"acc") dot(u)(t) d t $
$ L_"const" = integral_(t_"acc")^(t_"const") dot(u)(t) d t $
$ L_"dcc" = integral_(t_"const")^(t_"dcc") dot(u)(t) d t $
#line()

$L = L_"acc" + L_"const" + L_"dcc" = 1 $\
$L_"acc" = L_"dcc" "по построению" $

Пусть $dot(u)_"acc"$ описывает виртуальную скорость в фазе разгона. Вид этой функции известен по задаче построения конкретного профиля и  в точности реализует параметры $dot(u)_lim$, $dot.double(u)_lim$ и $dot.triple(u)_lim$. Необходимо найти и проанализировать значение $L=integral_0^t_"acc" dot(u)_"acc" (t) d(t)$:

- Если $L < 1$, то $t_"const" - t_"acc" > 0$ и $dot(u)_max = dot(u)_lim$
- Если $L = 1$, то $t_"const" = t_"acc"$ и $dot(u)_max = dot(u)_lim$
- Если $L > 1$, то необходимо найти $dot(u)_max : dot(u)_max < dot(u)_lim and L = 1$

// TODO: картинка на примере трапеции