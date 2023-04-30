BR 0x0018 ; 이 instruction 다음에는 0x0018에 저장된 instruction이 실행됨
input1: .BLOCK 2
input2: .BLOCK 2
msg: .ASCII "Program begins: \x00"
STRO msg, d ; STRO는 operand가 가진 주소에서부터 NULL 문자가 나올 때까지(\x00) 문자를 연속으로 출력한다.
DECI input1, d ; DECI는 기계어에서 제공되지 않는 instruction으로, 숫자를 2byte로 입력받는 mnemonic instruction이다.
DECI input2, d
DECO input1, d ; DECO는 2byte로 구성된 숫자를 출력하는 mnemonic instruction이다.
CHARO '+', i
DECO input2, d
CHARO '=', i
LDA input1, d ; LDA는 operand를 A register로 load한다. A register는 누산기-Accumulator-를 일컫는다.
ADDA input2, d ; ADDA는 operand를 A register에 더한다.
STA input1, d ; STA는 A register 내의 값을 operand에 저장한다.
DECO input1, d
STOP
.END