# ANTLR-Tiny
Códigos ex.:
ex.1
```
  read x;
  x := x+1;
  write x
```

ex.2
```
  { Exemplo de programa
      em TINY -
      fatorial
  }
  read x; { inteiro de entrada }
  if 0 < x then { não calcula se x <= 0 }
      fact := 1;
      repeat
          fact := fact * x;
          x := x - 1
      until x = 0;
      write fact; { apresenta o fatorial de x }
  end
```
  ex.3
```
  read u;
  read v; { recebe dois inteiros }
  if v = 0 then v := 0 { não faz nada }
  else
      repeat
          temp := v;
          v := u/v*v;
          u := temp
      until v = 0
  end;
  write u { apresenta o mdc entre o valor inicial de u & v}
```

  ---
  pg. 133 e 134 
