

declare function local:multiplicar-ao-quadrado($numero as xs:double) as xs:double {
  let $resultado := $numero * $numero
  return $resultado
};

let $numero := 5

return local:multiplicar-ao-quadrado($numero)
