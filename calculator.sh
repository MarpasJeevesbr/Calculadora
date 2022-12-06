#! /bin/bash
# Marcos Barros e João Pedro
function soma () {
echo "o resultado da soma é" $(($1+$2));
}
function subtrair () {
echo "o resultado da subtração é" $(($1-$2));
}
function multiplicar () {
echo "o resultado da multiplicação é" $(($1*$2));
}
function dividir () {
echo "o resultado da divisão é" $(($1/$2));
}
function raiz () {
echo "o resultado da raiz é" $((sqrt($1)));
}
function potencia () {
echo "o resultado do primeiro número elevado ao segundo é" $(($1**$2));
}
echo "Seja Bem-vindo a nossa calculadora virtual, veja suas opções"
echo "< 1 > Some"
echo "< 2 > Subtraia"
echo "< 3 > Multiplique"
echo "< 4 > Divida"
echo "< 5 > Raiz quadrada"
echo "< 6 > Potência"
echo "< 0 > Sair do programa"
echo
echo "Faça sua escolha: "
read opcao
case $opcao in
1)
# Somar
echo "Digite o número escolhido: "
read numero1
echo "Digite outro número: "
read numero2
soma=$(($numero1 + $numero2 ))
echo "Resultado da soma obtida: $soma"
;;
2)
# Subtrair
echo "Digite o número escolhido: "

read numero1
echo "Digite outro número: "
read numero2
subtrair=$(( $numero1 - $numero2 ))
echo "resultado da subtração obtida: $subtrair"
;;
3)
# Multiplicar
echo "Digite o número escolhido: "
read numero1
echo "Digite outro número: "
read numero2
multiplicar=$(( $numero1 * $numero2 ))
echo "resultado da multiplicação obtida: $multiplicar"
;;
4)
# Dividir
echo "Digite o número escolhido: "
read numero1
echo "Digite outro número: "
read numero2
dividir=$(( $numero1 / $numero2 ))
echo "resultado da divisão obtida: $dividir"
;;
5)
# Raiz Quadrada
echo "Digite o número escolhido: "
read numero1
echo "Digite outro número: "
read numero2
raiz=$(echo "sqrt($numero1)" | bc)
echo "A raiz quadrada de $numero é: $raiz" ;;
6)
# Potencia
echo "Digite o número escolhido: "
read numero1
echo "Digite outro número: "
read numero2
potencia=$(( $numero1 ** $numero2 ))
echo "Resultado obtido da potencia: $potencia" ;;
0) exit;;

esac
