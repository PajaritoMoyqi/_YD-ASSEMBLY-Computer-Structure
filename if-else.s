BR main
number: .BLOCK 2
main: DECI number, d
if: LDA number, d ;다른 곳에서 올 분기가 없이 이름이 설정되어도 실행에는 문제가 없다.
BRLT else ;A register로 불려온 input 값이 0보다 작을 경우에 else로 분기한다.
STRO msg1, d ;아닌 경우 msg1을 출력
BR endIf ;endIf로 가서 실행을 멈춘다.
else: STRO msg2, d ;0보다 작은 경우에는 여기서부터 아래로 쭉 실행된다.
endIf: STOP
msg1: .ASCII "Positive or Zero\x00"
msg2: .ASCII "Negative\x00"
.END