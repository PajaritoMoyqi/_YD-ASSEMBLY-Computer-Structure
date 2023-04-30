CHARO 0x0010, d ; CHARO는 문자 하나하나를 출력해주는 instruction이다
CHARO 0x0011, d
CHARO 0x0012, d
CHARO 0x0013, d
CHARO 0x0014, d ; 저장된 위치에 대한 주석은 7번째 줄 주석을 참고
STOP
.ASCII "Hello" ; STOP까지의 코드가 0x000F에 저장되어 .ASCII를 통해 저장된 "H", "e", "l", "l", "o"는 0x0010부터 저장되었다.
.END