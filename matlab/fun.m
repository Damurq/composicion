function y=fun(x)
  % este programa devuelve el valor de la funcion de distribucion evaluada en el punto x
  % el valor de x no debe ser negativo
  % esta funcion de la distribucion empirica puede ser sustituida.
  if 0<=x<=1;
    y=2*x;
  else
    y=0;
  endif

