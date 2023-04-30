BR main ;main으로 건너뛰자
bonus: .BLOCK 2
score: .EQUATE 0 ;score라는 변수에 constant 값을 저장한다.
;이때 Symbol table에는 symbol이 선언된 곳의 주소값이 저장되는 게 아니라 .EQUATE를 통해 들어온 값 자체를 저장한다.
main: SUBSP 2,i ;SP register는 프로그램 실행 중인 스택의 Top을 가리키는 register다. 2를 빼서 지역 변수로 활용될 score가 저장될 공간을 마련했다.
DECI score, s ;s는 stack-relative mode를 의미한다. 이 mode는 SP register에서 얼마나 떨어져 있는 위치인지를 표기하게 된다.
;지역 변수는 스택에 저장되다 보니 stack-relative address를 사용하는 것이 좋다.
DECI bonus, d
LDA score, s
ADDA bonus, d
STA score, s
DECO score, s
ADDSP 2,i ;할당 받았던 2byte stack 공간을 해제한다.
STOP
.END