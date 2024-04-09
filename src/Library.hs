module Library where
import PdePreludat

losPares = filter even


tres :: Number
tres = 3

doble :: Number -> Number
doble numero = numero + numero

{-
Modelamos el grupo y factor de una persona con un string, de la siguiente forma:
"AB+"
Las primeras letras indican el grupo (A, B, AB, o 0)
El último caracter indica el factor RH. + para positivo, y - para negativo.

-} 

-- 1) definir al dador universal, que es el grupo 0 y el factor RH negativo.
-- 2) definir al receptor universal, que es el grupo AB y el factor RH positivo.
-- 3) definir la función factor, que recibe la sangre y devuelve el factor como un caracter.
-- 4) definir la función grupo, que recibe la sangre y devuelve el grupo como un string.

{-

Estas son las pruebas que hicimos en la consola en la primera parte:

stack ghci
proyectoBase> configure (lib)
Configuring proyectoBase-0.1.0.0...
proyectoBase> initial-build-steps (lib)
Configuring GHCi with the following packages:
proyectoBase.
GHCi, version 9.6.4: https://www.haskell.org/ghc/  :? for help
*** WARNING: .ghci is writable by someone else, IGNORING!
Suggested fix: execute 'chmod go-w .ghci'
[1 of 2] Compiling Library          ( /home/usuario/repos/2024-f-introFuncional/src/Library.hs, interpreted )
[2 of 2] Compiling Spec             ( /home/usuario/repos/2024-f-introFuncional/src/Spec.hs, interpreted )
Ok, two modules loaded.
Loaded GHCi configuration from /home/usuario/.cache/stack/ghci-script/5e507e7c/ghci-script
ghci> doble 3
6
ghci> losPares [1,2,3,4,5,6,7,8,9]
[2,4,6,8]
ghci> 3 + 3
6
ghci> doble 3
6
ghci> :r
[1 of 2] Compiling Library          ( /home/usuario/repos/2024-f-introFuncional/src/Library.hs, interpreted ) [Source file changed]
[2 of 2] Compiling Spec             ( /home/usuario/repos/2024-f-introFuncional/src/Spec.hs, interpreted ) [Library changed]
Ok, two modules loaded.
ghci> tres
3
ghci> :r
[1 of 2] Compiling Library          ( /home/usuario/repos/2024-f-introFuncional/src/Library.hs, interpreted ) [Source file changed]

/home/usuario/repos/2024-f-introFuncional/src/Library.hs:9:1: error:
    Multiple declarations of ‘tres’
    Declared at: /home/usuario/repos/2024-f-introFuncional/src/Library.hs:8:1
                 /home/usuario/repos/2024-f-introFuncional/src/Library.hs:9:1
  |
9 | tres = 4
  | ^^^^
Failed, no modules loaded.
ghci> 5 / 3

<interactive>:8:1: error: [GHC-76037] Not in scope: ‘fromInteger’

<interactive>:8:5: error: [GHC-76037] Not in scope: ‘fromInteger’
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 
ghci> 4 * 5

<interactive>:19:1: error: [GHC-76037] Not in scope: ‘fromInteger’

<interactive>:19:5: error: [GHC-76037] Not in scope: ‘fromInteger’
ghci> :q
Leaving GHCi.
usuario@81034J3:~/repos/2024-f-introFuncional$ stack ghci
proyectoBase> initial-build-steps (lib)
Configuring GHCi with the following packages:
proyectoBase.
GHCi, version 9.6.4: https://www.haskell.org/ghc/  :? for help
*** WARNING: .ghci is writable by someone else, IGNORING!
Suggested fix: execute 'chmod go-w .ghci'
[1 of 2] Compiling Library          ( /home/usuario/repos/2024-f-introFuncional/src/Library.hs, interpreted )
[2 of 2] Compiling Spec             ( /home/usuario/repos/2024-f-introFuncional/src/Spec.hs, interpreted )
Ok, two modules loaded.
Loaded GHCi configuration from /home/usuario/.cache/stack/ghci-script/5e507e7c/ghci-script
ghci> 4 / 3
1.3333333333333333
ghci> 6 * 7
42
ghci> 5 * 25 / 100
1.25
ghci> :i percent

<interactive>:1:1: error: Not in scope: ‘percent’
ghci> sqrt 9
3.0000000000000004440892098500626
ghci> toUpper 'a'

<interactive>:6:1: error: [GHC-88464]
    Variable not in scope: toUpper :: Char -> t
ghci> import Char

<no location info>: error:
    Could not find module ‘Char’
    It is not a module in the current program, or in any known package.
ghci> toUpper 'a'

<interactive>:8:1: error: [GHC-88464]
    Variable not in scope: toUpper :: Char -> t
ghci> 4 < 1
False
ghci> 4 == 5
False
ghci> not False
True
ghci> not True
False
ghci> rem 10 3
1
ghci> 15 * 15
225
ghci> 17 * 15
255
ghci> 16 * 15
240
ghci> 10 + rem 250 15
20
ghci> rem 250 15 + 10
20
ghci> rem 200 ( 2 + 8 )
0
ghci> rem 200 2 + 8
8
ghci> even 12345678
True
ghci> even 3 + 8

<interactive>:22:1: error: [GHC-83865]
    • Couldn't match expected type ‘Number’ with actual type ‘Bool’
    • In the first argument of ‘(+)’, namely ‘even 3’
      In the expression: even 3 + 8
      In an equation for ‘it’: it = even 3 + 8
ghci> even (3 + 8)
False
ghci> even 12345678
True
ghci> negrate 5

<interactive>:25:1: error: [GHC-88464]
    Variable not in scope: negrate :: Number -> t
    Suggested fix: Perhaps use ‘negate’ (imported from PdePreludat)
ghci> 
ghci> 
ghci> 
ghci> negate 3
-3
ghci> negate - 3

<interactive>:30:1: error: [GHC-83865]
    • Couldn't match expected type ‘Number’
                  with actual type ‘Number -> Number’
    • Probable cause: ‘negate’ is applied to too few arguments
      In the first argument of ‘(-)’, namely ‘negate’
      In the expression: negate - 3
      In an equation for ‘it’: it = negate - 3
ghci> negate (-3)
3
ghci> negate 5
-5
ghci> odd 45
True
ghci> odd 46
False
ghci> odd 47
True
ghci> odd 48
False
ghci> min 10 5
5
ghci> min 1000 8
8
ghci> max 1000 8
1000
ghci> max 10 5
10
ghci> length "hola"
4
ghci> tres
3
ghci> reverse "hola"
"aloh"
ghci> head "hola"
'h'
ghci> 
ghci> 
ghci> tail "hola"
"ola"
ghci> last "hola"
'a'
ghci> True && True
True
ghci> False && True
False
ghci> True || False
True
ghci> False || False
False
ghci> 

-}