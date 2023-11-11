# ANTLR-Tiny
Códigos ex.:

- **1**

![exemplo1](https://github.com/upsdeco/ANTLR-Tiny/assets/135385008/6eb9116a-1e14-4a58-b125-4c0ca48fe49f)
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
---
- **2**

![exemplo2](https://github.com/upsdeco/ANTLR-Tiny/assets/135385008/a4f857cc-06aa-430f-8720-602c8f51fe70)
```
  read x;
  x := x+1;
  write x
```
---
- **3**

![exemplo3](https://github.com/upsdeco/ANTLR-Tiny/assets/135385008/a177a79f-38ce-426d-9fc4-0fbec2759d94)

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
Compiladores: princípios e práticas

Kenneth C. Louden

pg. 133 e 134 
