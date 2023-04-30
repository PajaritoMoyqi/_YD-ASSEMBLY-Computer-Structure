BR main ;(무조건분기)
number: .BLOCK 2
main: DECI number, d ;input value를 number 주소에 저장
LDA number, d ;number를 A register로 load
BRGE endIf ;이전 연산 결과가 0보다 크거나 같으면 endIf로 분기 (조건분기)
LDA number, d ;이 아래 세 줄은 BRGE문이 분기하지 않았을 때 실행된다. 즉, input 값이 minus였을 때!
NEGA ;number = -number
STA number, d ;저장
endIf: DECO number, d
STOP
.END