void main(List<String> args) {

  /**
   * 다트언어는 변수형을 자동으로 인식하는 선언이 있음
   * 1. var : 자동 형 선택 variable 
   * 2. dynamic : 자율 형 선택
   */
  var myHome = "내 집이야!";
  print(myHome);
  // void : 리턴값이 없음
  // var 자동 형 선택, 다른형을 재할당 할 수 없음
  myHome = '내 집이야?';
  print(myHome);
  dynamic weId = 'hello';
  print('나의 아이디는 $weId');
  weId = 797979;
  print('너의 아이디는 $weId');

  // [ 문자형 출력 방법 : ${코드} $변수 ]

  /**
   * 다트언어는 변수의 형을 선언함이 기본이다.
   * 처음 선언한 형으로만 재할당 가능
   * 1. 숫자형 int / double / num (정수/실수/통합)
   * 2. 문자형 String
   * 3. 불린형 bool
   * 4. 콜렉션 List / Set / Map
   */
  // 1. 숫자형
  int num1 = 2023;
  double num2 = 3;
  num num3 = 12;
  print('오늘은 ${num1}년 ${num3}월 ${num3}일 입니다.');
  print('${num2}');
  num3 = 7.5;
  print('${num3}');
  num3 = 7;
  print('${num3}');

  // 2. 문자형
  String name = '톰 행크스';
  print('나는 $name입니다.');

  // 3. 불린형
  bool isTrue = true;
  print('진짜야? ${isTrue}');
  

  // 4. 콜렉션
  // 4-1. List [] 배열과 유사
  List<String> locList = ['서울','대전','대구','부산'];
  print(locList[0]+'은/는 한국의 수도입니다');
  print(locList.length);
  // 4-2. Set {} 중복제거, 순서없음 
  // .toList()해서 사용하기

  // Set<int> evens = {2,4,6,8};
  Set<dynamic> evens = {2,4,6,'짝수'};
  List<dynamic> evens2 = evens.toList();
  // var evens = {2,4,6,'짝수'};
  print(evens);
  print(evens2[3]);
  // 4-3. Map {} 객체와 유사
  Map<String, String> actor = {'이름':'강동원','나이':'42'};
  print('${actor.values.toList()[0]} 안녕');
  print(actor.values.toList()[1]);

  /**
   * [ 다트의 형변환(Casting) ]
   * 특정 데이터형에서 다른 형으로 변환하는 것을 흔히 캐스팅이라 함
   * 1. 일반적인 형변환 : 변수형.parse(대상변수);
   * 2. 메서드 체인방식 : 변수.to형()
   * ex) array.toList()
   * **주의> 숫자가 아닌 문자를 숫자로 변환 불가
   */
  String stNum = '777';
  print('문자형 숫자: $stNum');
  num result = 111 + int.parse(stNum);
  print('111+777=$result');
}