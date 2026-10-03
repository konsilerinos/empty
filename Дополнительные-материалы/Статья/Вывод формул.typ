== Вывод формул

Далее для сокращения аргумент $t$ для $u(t)$, $x_i (t)$, $v_i (t)$, $a_i (t)$ и $j_i (t)$ опускаю.

Связь координаты, скорости, ускорения и рывка с виртуальными значениями

$x_i = f_i (u)$

$v_i = x'_i = f'_i (u) dot dot(u)$

$a_i = x''_i = (f'_i (u) dot dot(u))' = (f'_i (u))'dot dot(u) + f'_i (u) dot dot.double(u) = f''_i (u) dot (dot(u))^2 + f'_i (u) dot dot.double(u)$

$j_i = x'''_i &= (f''_i (u) dot (dot(u))^2)' + (f'_i (u) dot dot.double(u))'\ 

&=  f'''_i (u) dot (dot(u))^3 + f''_i (u) dot 2 dot dot(u) dot dot.double(u) + f''_i (u) dot dot(u) dot dot.double(u) + f'_i (u) dot dot.triple(u) \

&= f'''_i (u) dot (dot(u))^3 + 2f''_i (u) dot dot(u) dot dot.double(u) + f''_i (u) dot dot(u) dot dot.double(u) + f'_i (u) dot dot.triple(u)\

&= f'''_i (u) dot (dot(u))^3 + 3 f''_i (u) dot dot(u) dot dot.double(u) + f'_i (u) dot dot.triple(u)$ 

Ограничение виртуальной скорости, ускорения и рывка

$dot(u) <= V_(max, i)/abs(f'_(max, i)) <= V_(max, i)/abs(f'_i) $

$dot.double(u) <= (A_(max, i) - abs(f''_(max, i)) dot (dot(u)_max)^2)/abs(f'_(max, i)) <= (A_(max, i) - abs(f''_i) dot (dot(u))^2)/abs(f'_(max, i)) <= (A_(max, i) - abs(f''_i) dot (dot(u))^2)/abs(f'_i) $

// TODO: дописать что вместо многоточия

$dot.triple(u) <= (J_(max, i) - abs(f'''_(max, i)) dot (dot(u)_max)^3 - 3 dot abs(f''_(max, i)) dot dot(u)_max dot dot.double(u)_max)/abs(f'_(max, i)) <= ... <= (J_(max, i) - abs(f'''_i) dot (dot(u))^3 - 3 dot abs(f''_i) dot dot(u) dot dot.double(u))/abs(f'_i) $