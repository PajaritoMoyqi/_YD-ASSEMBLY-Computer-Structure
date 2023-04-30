BR main
ch: .BLOCK 1
main: CHARI ch, d ;ch에 input value 입력
LDA 0x0000, i
while: LDBYTEA ch, d ;1byte만 A register로 load
CPA '*', i ;A register 값과 operand 값 비교
BREQ endwhile ;같으면 endwhile로
CHARO ch, d
CHARI ch, d
BR while
endwhile: STOP
.END