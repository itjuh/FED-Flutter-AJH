void main(List<String> args){
  /**
   * [ 다트의 함수 ]
   * - 특정 실행코드를 호출 시 실행하기 위한 코드 저장소
   * 
   * 1. 일반함수
   * 형식 : 
   *  데이터형 함수명(전달변수){코드구역}
   *  - 데이터형 : 함수에서 값을 리턴할 데이터형 
   *    -> 리턴값이 없으면 반드시 void라고 써야함
   *  - 전달변수 : 데이터형과 함께 변수로 표현
   * 
   * 예) void main(List<String>){}
   * 예) int sub(int aa){return aa + 100;}
   * -> 정수형 숫자를 받아서 100을 더한 후 int형으로 리턴
   */

  /**
   * [ 다트의 상수표현 ] : 선언과 동시에 값을 할당하면 이후에는 값을 변경할 수 없음
   * 1. const : 화면 빌드 전에 상수화, 컴파일 타임에 값을 결정
   * 2. final : 화면에 출력 전에 상수화, 실행 시점에 값을 결정
   * const 변수는 런타임 성능이 더 좋습니다.
   * 
   * 어떤 프로그램이 실행될 때 시간에 대한 로그를 남기고 싶을 때는 DateTime.now()를 사용
   * -- var log1 = DateTime.now();
   * 실행 시에 시간이 결정되므로 사용 가능
   * -- final log2 = DateTime.now();
   * 컴파일 시의 시간을 담을 수 없으므로 사용 불가. 실행은 지금이 아니라 내일도 할 수 있음
   * -- const log3 = DateTime.now();
   */
  /**
   * [ Null safety ]
   * - 개발자가 null 데이터가 생길 경우 에러를 막기 위한 조치를
   * 다트언어에서 시스템적으로 처리해주는 기법
   * 
   * 1. 널체크 연산자 : ? ( 여부체크 )
   * 2. 널병합 연산자 : ?? ( 널 처리 )
   * 
   */
  showTxt('반갑습니다.');
  showTxt('이순신에 대해 알아볼까요?');
  showTxt('이순신의 마지막 전투는? ${leeFight[2]}${detail[leeFight[2]]}');
  showTxt(showSub(0));
  showTxt(showSub(1));
  showTxt(showSub(2));
  // 이순신 시리즈 영화의 주요 출연자 찍기
  showTxt('이순신 시리즈 영화의 주요 출연배우들:${actorList(actors.toList())}');
} // main ////
// [ 다트의 상수표현 ] : 전역변수화 하기
final List<String> leeFight = ['명량','한산','노량'];
// final leeFight = ['명량','한산','노량']; // 이것도 허용
const Map<String,String> detail = {'명량':'해전','한산':'도대첩','노량':'해전'};
// const detail = {'명량':'해전','한산':'도대첩','노량':'해전'}; // 이것도 허용
const Map<String,dynamic> subTit = {'명량':null,'한산':'용의 출현','노량':'죽음의 바다'};
// 이순산 시리즈 영화 출연배우들
final actors = {
  '박해일',
    '변요한',
    '최민식',
    '안성기',
    '최민식',
    '류승룡',
    '조진웅',
    '최민식',
    '김윤석',
    '김명곤',
    '진구',
    '이정현',
    '김윤석',
    '김윤석',
    '백윤식',
    '김윤석',
    '정재영',
    '허준호',
    '김윤석',
    '김성규',
    '이규형',
    '이무생',
    '최덕문',
    '안보현',
    '박명훈',
    '안보현',
    '박훈',
    '문정희'
};

// 텍스트 찍기 함수
void showTxt(var txt){
  print(txt);
} // showTxt ////

// 부제목 찍기 함수 전달값 int형 List순번, return 값은 String
String showSub(int seq){
  return "영화 '${leeFight[seq]}'의 부제목은? '${subTit[leeFight[seq]]??'부제목 없음'}'";
}

// 배우 리스트 찍기 함수
String actorList(List list){
  var temp = '';
  // for문 : for(시;한;증){코드}
  // 리스트를 순회하는 for문 : for(변수 in 리스트변수){코드}
  for(var x in list){ // x 는 list의 값
    temp += '😊$x ';
  }
  return temp;
} // actorList함수