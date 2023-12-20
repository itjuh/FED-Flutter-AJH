void main(List<String> args) {
  // Dog 클래스 메모리에 생성하기
  // 클래스를 담는 변수의 형은 그 클래스명을 사용한다!
  Dog d1 = Dog();
  print('나의 강아지 종은 ${d1.name}이다');
  d1.name = '시츄';
  print('새로운 강아지 종은 ${d1.name}이다.');
  print('색깔은 ${d1.color}이고 나이는 ${d1.age}살이다.');
  print('훈련 1회 실시 후 물기지수는? ${d1.traningDog()}%');
  dynamic doit;
  for(int i = 0; i < 10; i++){
    doit = d1.traningDog();
  }
  print('훈련 10회 실시 후 물기지수는? $doit%');

  Dog d2 = Dog();
  print('${d2.name}의 물기지수는 ${d2.bite}%이다');
  /** 중요한 것은 클래스 속성자체의 정의다. 값은 그것을 사용하는 사용자의 등록에 따라 달라진다. */

  // 값을 생성시에 초기화하는 Cat클래스 사용하기//
  Cat c1 = Cat("코리안숏헤어", 4, "삼색");
  print('탱자는 종이 ${c1.name}인 ${c1.age}살 ${c1.color}고양이 이다.');
  // c1.name = '스핑크스고양이'; -> final은 재할당 불가

  // 상속받은 Cat 찍어보기
  Cat c2 = Cat('스코티쉬폴드', 2, '회색');
  print('${c2.name}는 ${c2.color}인 ${c2.species}이다.');
  print("성격은 ${c2.character}이며 울음소리는 '${c2.hearSound(c2.species)}'이다.");

  // 상수 테스트: const / final
  const aa = 'aa'; // 선언과 동시에 할당 해야 함
  final cc; // 선언 후 처음할당 되는 것을 고정 함
  cc = 'cc';
  // cc = 'ccc'; // 재할당은 불가
  print('$aa $cc');
  // 선언과 할당 분리 특성에 따라 클래스에서 주로 사용 됨
  // 클래스에서 const 사용 불가

} //////////// main ///////////////

  /**
   * [ 다트의 클래스 ]
   * 정의 : 목적을 가진 프로그램에서 사용하기 위해
   * 구성요소에 해당하는 변수와 함수로 구성 된 프로그램 단위체
   * 특히 클래스 내부의 변수를 속성(멤버)이라 함
   * 그리고 클래스 내부의 함수를 메서드라 함!
   * 
   * 형식 : class 키워드를 사용하여 파스칼케이스로 명명
   * ex)
   * class MyClassIsPerfect{
   *   변수선언 및 할당
   *   생성자메서드(){}
   *   메서드()
   * }
   * ->> 변수는 선언만 하거나, 할당까지 할 수 있음
   * ->> 생성자메서드는 클래스를 사용 시 가장 먼저 호출되는 메서드
   * ->> 개별적인 클래스 구성 메서드 생성을 할 수 있음
   */
  /**
   * [ 클래스 상속 ] 
   * - 부모클래스의 모든 속성과 메서드를 자식클래스에서 사용코자 할 때
   * 기본공유를 하도록 하는 클래스 장치
   * - 상속 설정방법 : 
   *    class 클래스명 extends 부모클래스명 {
   *      구현코드
   *    }
   * ->> 만약 부모클래스 멤버필드가 초기화가 필요한 경우 
   * 상속받은 클래스 생성 시 반드시 부모클래스 생성자를 먼저 호출하기 때문에
   * 부모클래스의 값을 먼저 초기화 셋팅 해야한다.
   * 
   * ->> 부모클래스 초기화 방법!!
   */
  
  /**
   *  속성(변수)들의 값 초기화는 생성하는 코드에서 해준다!
   * 이것을 해주도록 설정하는 메서드는 필수인 생성자 메서드!
   * 생성자 메서드는 클래스와 이름이 같음
   * this키워드 : 클래스 내부 속성을 지칭
   * 생성자메서드(){} -> 소괄호안에 콤마로 초기값 셋팅함
   * 중괄호를 생략할 수 있음(구현코드가 없다면...)
   * -> 생성자메서드();
   */

  /**
   * 애완동물 클래스 : 부모클래스
   * 속성 : species, character, food
   */
  class Pet{
    final String species;
    final String character;
    final String food;
    Pet(this.species, this.character, this.food){
      print('부모 Pet 클래스');
    }
    String hearSound(String sp){
      dynamic resultValue;
      switch(sp){
        case '고양이':
        resultValue = '야옹';
        break;
        case '강아지':
        resultValue = '야옹';
        break;
        case '프래리독':
        resultValue = '흠스캑';
        break;
        default:
        resultValue = '동물소리';
        break;
      } //// switch-case ///////
      return resultValue;
    } ///////// hearSound 메서드 ///////
  } /////// Pet class /////////
  /**
   * 멍멍이 클래스
   * 속성: name,age,color,bite
   * 메서드: traningDog()
   */
  class Dog{
    //속성
    String name='시바견';
    int age = 8;
    String color = 'brown';
    int bite = 100;
    //메서드
    int traningDog(){
      bite = bite - 5;
      if(bite < 5) bite = 5;
      return bite;
    }
  } /////// Dog class /////////
  /**
   * 야옹이 클래스
   * 속성: name,age,color,bite
   * 메서드: traningCat()
   */
  class Cat extends Pet{
    //속성
    /**이름 */
    final String name;
    /**나이 */
    final int age;
    /**색상 */
    final String color;
    int punch = 100;
    // Cat(this.name,this.age,this.color);
    /** 상속받은 부모 멤버필드 초기화는
     * 이니셜라이즈(initialize) 키워드 콜론(:)을 사용하여
     * 그 뒤에 super 키워드(부모클래스)로 값을 초기화 한다.
     * super(초기화값) -> 부모의 생성자 메서드와 동일
     */
    Cat(this.name,this.age,this.color) : super('고양이', '내성적', '생선'){
      print('Cat생성자함수 코드구역');
    }
    //메서드
    void traningDog(){
      punch = punch - 5;
    }
  }