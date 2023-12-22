/**
 * [ 다트 추상클래스 ]
 * ##정의
 * -> 형식을 강제할 때 사용하는 클래스 생성 방법
 * -> 일반적인 상속과 달리 추상클래스는 모든 속성과 메서드를 전부 구현해야 함
 * 
 * ##사용법
 * #선언 
 * -> abstract 키워드로 클래스를 선언 : 추상적인
 * abstract class 추상클래스명{
 *  구현부
 * }
 * 
 * 추상클래스를 상속 받는 것 처럼 연결하는 방법은
 * implements 키워드로 연결한다 : 구현하다, 시행하다
 * #연결
 * class 클래스명 implements 추상클래스{
 *  구현부
 * }
 */

/**
 * 추상 클래스 연습 : 사람 클래스를 추상클래스로 만들기 
 * _____________________________________________________
 * 
 * 특정인물 클래스에서 사람클래스를 받아서 구현함
 * 추상클래스에서 메서드는 구체적으로 구현하지 않고, 해당 클래스에서 구현한다.
 * ->> 단 대략적인 틀을 잡을 수 있음.
 */

abstract class Saram{
  // 생성자
  Saram(this.name);
  // 속성과 메서드 설계하기
  /**
   * 1. 이름 속성
   * 2. 성별 메서드
   * 3. 나이 메서드
   * 4. 먹기 메서드 : 람다식
   * 5. 말하기 메서드
   */
  final String name;
  String gender();
  String age();
  String eat()=> '$name씨는 지금 아무것도 안먹는다';
  // 람다식 앞에 함수일 경우 Function 키워드가 없다. eat() ()자체가 function이기 때문
  String say()=> '$name씨는 지금 아무말도 안한다.';
}
//abstract 라는 상태는 특징적인 공통적인 부분을 묶은 것
/**
 * 추상 클래스 상속(implements)받아 사용하기
 * 오버라이드 필수!!! (재 정의를 반드시 해야함)
 * 도경수 배우의 클래스
 */
class KyungSu implements Saram{
  @override
  late String _name; // _name은 세팅변수
  String get name => _name;
  set name(String name) => _name = name;
  // String get name => '도경수';
  // get 키워드는 겟터를 사용하는 변수를 선언함

  @override
  String gender() => '$name씨는 남자다.';
  @override
  String age() => '$name씨의 나이는 30살이다.';
  @override
  String eat(){return '$name씨는 지금 피자🍕를 먹는다.';}
  // String eat() => '$name씨는 지금 피자🍕를 먹는다.';
  @override
  String say() => '$name씨는 무엇인가 말하고 있다';

} //////// KyungSu 클래스 ////////

/*************************************************************
 * [ 다트의 오버라이드(override) ]
 * ##정의
 * ->> 기존의 정의 된 속성과 메서드를 재정의 하는 것이다!.
 * 그래서 위에 올라탄다는 단어를 쓰는 것임
 * #사용법
 * ->오버라이드 할 때 어노테이션(주석)을 써준다
 * @override : 오버라이드 표시역할 및 처리도움!
 * 
 * 참고 : 다트에는 오버로드(overload)가 없다! -> 다른방법
 * ->> 같은 이름의 메서드를 파라미터 개수로 구분하여 여러개 만드는 것을 말함
 ************************************************************/
/**
 * [ 다트의 겟터(getter) 셋터(setter) ] 
 * ##정의
 * 변수값 읽기와 할당을 하도록 캡슐화를 하여 값 셋팅시 정보를 은닉하여 변수를 관리하는 방법
 * ##사용법
 * late 변수형 셋팅변수명; 
 * 변수형 get 변수명 => 셋팅변수명; 
 * set 변수명(변수형 변수명) => 셋팅변수명 = 변수명;
 * 
 * 일반적으로 변수명과 셋팅변수명은 같은이름이며 셋팅변수명 앞에 언더바(_)를 붙여구분함
 * 예) 변수명-> name, 셋팅변수명->_name
 * #late키워드
 * #값 할당
 */
/*************************************** 
[ 겟터 / 셋터 ]

((방법:))
late 변수형 셋팅변수명;
변수형 get 변수명 => 셋팅변수명;
set 변수명(변수형 변수명) => 셋팅변수명 = 변수명

((겟터/셋터 변수명))
일반적으로 변수명과 셋팅변수명은 같은이름이며 
셋팅변수명 앞에 언더바(_)를 붙여구분함
예) 변수명-> name, 셋팅변수명->_name

((late 키워드))
선언한 변수가 바로 할당되지 못할 경우
late 키워드를 앞에 사용하여 사용직전에
할당될 것임일 알려주면 에러를 막을 수 있다!

((겟터/셋터 값할당))
-> 외부에서 인스턴스 생성후 셋터를 통해 
값을 셋팅할 경우 변수명에 할당하면 된다!
클래스.변수명 = 값

 ***************************************/

/**
 * 남지현 배우 클래스 : Saram 클래스의 일반 상속하기
 * 일반 상속은 부모클래스의 모든 내용을 재정의할 필요가 없음
 * 단, 구체적인 정의가 없는 메서드는 필수로 재정의가 필요함
 */
class JeeHyun extends Saram{
  // 생성자 : 받은 값을 부모 클래스로 넘겨 먼저 세팅함
  JeeHyun(String name) : super(name);
  @override
  String gender() => '$name씨는 여자다';
  @override
  String age() => '$name씨는 28살이다.';
} ////////// JeeHyun 클래스 /////////

/**
 * 추상클래스를 일반 상속한 추상클래스
 * 일반적인 남자를 나타내는 클래스
 */
abstract class Namja extends Saram{
  // 생성자
  Namja(String name) : super(name);
  // 필수 재정의는 없고 원하는 것을 재정의 함
  @override
  String gender() => '$name씨는 남자다!';
} ////////// JeeHyun 클래스 /////////

/**
 * 추상클래스를 일반 상속한 추상클래스
 * 일반적인 여자를 나타내는 클래스
 */
abstract class Yeoja extends Saram{
  // 생성자
  Yeoja(String name) : super(name);
  // 필수 재정의는 없고 원하는 것을 재정의 함
  @override
  String gender() => '$name씨는 여자다!';
} ////////// JeeHyun 클래스 /////////

/**
 * 박서준 배우의 클래스
 * 남자 추상클래스를 상속 받는다.
 * 
 * 추상클래스를 일반상속한 클래스느 추상클래스의 미 정의 메서드를
 * 필수 재정의 해야하는데 gender() 메서드는 상속받은 추상클래스인
 * Namja에서 이미 재정의 했으므로 나머지 메서드인 age만 남는다
 */
class Seojun extends Namja{
  Seojun(String name) : super(name);
  String age() => '$name씨는 32세 임다.';
  String eat() => '$name씨는 햄버거를 먹는다.';
}

/**
 * 다중상속 믹스인 활용을 위한 클래스 만들기
 * ______________________________________
 * 
 * class키워드 없으면 단순 결합클래스 -> 내부에 생성자 없음
 * 믹스인에 on키워드를 사용하면 특정클래스를 상속받은 경우에만
 * 다중상속을 하도록 제한할 수 있다. 
 * -> on Namja라는 것은 남자클래스를 상속 한 경우에만 믹스인 사용
 * -> 결과적으로 남자가수에만 사용 가능
 */
// 취미 믹스인
mixin Hobby{
  String cook()=>'씨는 지금 요리한다.🍳';
  String read()=>'씨는 지금 책을 읽는다.📖';
} //////// Hobby 믹스인 클래스 //////

// 가수 믹스인
mixin Singer on Namja{
  String sing()=>'씨는 지금 노래한다.🎙';
} //////// Singer 믹스인 클래스 //////

// 믹스인을 사용하는 이준호 배우겸 가수의 클래스 만들기
class JunHo extends Namja with Hobby, Singer{
  // 생성자
  JunHo(String name) : super(name);
  // 필수 재정의
  @override
  String age() => '$name씨는 33살이다.';
  // 선택 재정의
  @override
  String cook() => '$name${super.cook()}';
  @override
  String sing() => '$name${super.sing()}';
  // with키워드로 받아왔으니 super 키워드를 사용
}

//// 테스트를 수행하는 함수 //////
void testClass(){
  // print(KyungSu().eat());
  // print(KyungSu().say());
  KyungSu ks = KyungSu();
  ks.name = '도경수';
  print(ks.eat());
  print(ks.say());
  print(ks.gender());
  print('\n');
  // 추상클래스를 일반상속 받은 지현 클래스 생성
  JeeHyun jh = JeeHyun('남지현');
  print(jh.age());
  print(jh.gender());
  print(jh.eat());
  print(jh.age());
  print('\n');
  // 추상클래스의 추상클래스를 상속한 서준클래스 인스턴스 생성
  Seojun sj = Seojun('박서준');
  print(sj.age());
  print(sj.gender());
  print(sj.eat());
  print('\n');
  // 추상클래스와 믹스인클래스를 상속받은 준호클래스 인스턴스 생성
  JunHo leejh = JunHo('이준호');
  print(leejh.gender());
  print(leejh.age());
  print(leejh.sing());
  print(leejh.cook());
} /////testClass////

void main(List<String> args){
  testClass();
} ////// main /////////