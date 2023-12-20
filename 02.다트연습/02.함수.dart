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
  /**
   * [ 익명함수 ]
   * -> 다른 함수에 실행코드를 전달 할 경우 주로 사용 됨
   * 형식 : (){코드}
   * 예) 전달하는 함수 ->>> 함수명((){코드}) 
   * 함수호출 ->>> 데이터형 함수(함수형 함수명)  : void 함수(Function ff){ff();}
   */
  /**
   * [ 람다함수 ]
   * -> 함수형 변수로 선언 후 화살표로 자동 리턴또는 실행코드 작성
   * 형식: Function <Stiring> = (전달변수)=>코드;
   * ->> 리턴없이도 자동리턴
   */
  showTxt('반갑습니다.');
  showTxt('이순신에 대해 알아볼까요?');
  showTxt('이순신의 마지막 전투는? ${leeFight[2]}${detail[leeFight[2]]}');
  showTxt(showSub(0));
  showTxt(showSub(1));
  showTxt(showSub(2));
  // 이순신 시리즈 영화의 주요 출연자 찍기
  showTxt('이순신 시리즈 영화의 주요 출연배우들:${actorList(actors.toList())}');
  // 다음 추가 이순신 시리즈가 있다면 어느 배우를 추천하는가
  showTxt('다음 이순신 시리즈의 추천배우는? 공유다');
  showTxt('공유의 취미는 ${recommActor['공유']?['취미']}다. 출생지는 ${recommActor['공유']?['자동차']??'정보가 없'}다.');

  // 익명함수를 만들어서 특정 함수의 값으로 전달한다
  japanShip((){print('개/박/살..!! 일본 배 침몰');});

  // 람다함수 연습
  showTxt('"아직 신에게는 ${shipNum}척의 배가 남아 있습니다" 이 대사가 나오는 이순신의 전투는?${fight(leeFight[0])}');
  showTxt('"아직 신에게는 ${minus()}척의 배가 남아 있습니다";');
  showTxt('"아직 신에게는 ${minus()}척의 배가 남아 있습니다";');
  showTxt('"아직 신에게는 ${minus()}척의 배가 남아 있습니다";');
  showTxt('"아직 신에게는 ${minus()}척의 배가 남아 있습니다";');
  showTxt('"아직 신에게는 ${minus()}척의 배가 남아 있습니다";😥');

  showTxt('이순신의 부하 중 이순신이 있었다. 그는 전투 전 너무 긴장되어서 구구단을 외웠다, 9단');
  gogo(9);
  showTxt('아직도 긴장되어서 구구단을 외웠다, 8단');
  gugu(8);
} // main ////
int ini = 0, init = 0;
//재귀호출 함수
void gugu(int val){
  print('${val} * ${++ini} = ${init+=val}');
  if(ini > 8) return;
  gugu(val);
}

void gogo(int seq){
  print('${seq}단');
  for(int i =1; i < 10; i++){
  print('$seq * $i = ${seq*i}');
  }
}

int shipNum = 13;
// 람다식으로 숫자를 줄이는 함수
Function minus = ()=> --shipNum;

void japanShip(Function bomb){
  print('나는 일본 배! 각오들 해!');
  bomb();
} /////// japanShip 함수 ///////

// 추천배우 변수
// const recommActor = {
const Map<String,Map> recommActor = {
  '조인성':{'나이':42,'취미':'비행','출생지':'명일동'},
  '강동원':{'나이':42,'취미':'건축','출생지':'부산광역시'},
  '공유':{'나이':45,'취미':'비내리기','출생지':'공유하우스'},
};

// 이순신 전투 뒷 말 세팅 함수
String fight(String x){
  return '$x${detail[x]}';
  // return "$x${x=='한산'?'도대첩':'해전'}";
}

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