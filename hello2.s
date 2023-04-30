CHARO 0x0048, i ; ', i' 때문에 immediate addressing mode로 addressing mode가 설정되었다.
CHARO 0x0065, i ; 즉, instruction 다음에 나온 operand는 주소가 아니라 실제 데이터가 기록되어 있는 상황이다.
CHARO 0x006C, i
CHARO 0x006C, i
CHARO 0x006F, i
STOP
.END
; Pep/8과 같은 프로그램에서 돌려보면 실제로 해당 코드가 메모리 접근도 적게 하고 메모리 사용도 더 작은 것을 알 수 있다.