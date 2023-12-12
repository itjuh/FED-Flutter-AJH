void main(List<String> args) {
  var myHome = "내 집이야!";
  print(myHome);
  // void : 리턴값이 없음
  // var 자동 형 선택, 다른형을 재할당 할 수 없음
  myHome = '내 집이야?';
  print(myHome);

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
  print('나는 '+name+'입니다.');

  // 3. 불린형
  bool isTrue = true;
  print('진짜야? ${isTrue}');
  

  // 4. 콜렉션
  // 4-1. List [] 배열과 유사
  List<String> locList = ['서울','대전','대구','부산'];
  print(locList[0]+'은/는 한국의 수도입니다');
  print(locList.length);
  // 4-2. Set {} 중복제거, 순서없음 
  Set<int> evens = {2,3,4,5,6,7,8};
  print(evens);
  // 4-3. Map {} 객체와 유사
  Map<String, String> actor = {'이름':'강동원','나이':'42'};
  print('${actor.values}');
}