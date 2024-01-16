// 카트 페이지 상세구성 클래스
// 버튼 클릭 시 변경되는 변수 값에 따라
// 이미지와 정보 표시가 업데이트 되는 상태변경 위젯
// statefulWidget으로 구성 -stf
import 'package:app_05_cart/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  // 상태관리가 반영되게 하기위한 재정의(클래스 연결)
  @override
  State<CartDetail> createState() => _CartDetailState();
} // main _CartDetailState //

// 상태관리에서 변경부분 반영을 위한 build메서드를 분리하여
// 반영하는 서브클래스
class _CartDetailState extends State<CartDetail> {
  // 이 클래스 내부에서 선언하여 사용하는 변수의 값이 변경되면 이 변수를 사용하는 위젯이 자동업데이트 된다
  int sequenceNumber = 0;
  // 이미지 리스트
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];
  // 상품명 리스트
  List<String> selectedTit = [
    "Living bicycle",
    "Honda motorcycle",
    "Tesla Model3",
    "Cessna 150",
  ];
  // 상품가격 리스트 [가격, 조회수, 별수]
  Map<String, List> selectedPrice = {
    "Living bicycle": [699, 26, 5],
    "Honda motorcycle": [1700, 35, 3],
    "Tesla Model3": [7800, 98, 4],
    "Cessna 150": [12400, 75, 5],
  };
  // 상품 옵션색상
  Map<String, List> selectedOption = {
    "Living bicycle": [Colors.red, Colors.blue, Colors.orange, Colors.lime],
    "Honda motorcycle": [Colors.teal.shade700, Colors.grey, Colors.white],
    "Tesla Model3": [Colors.black, Colors.grey],
    "Cessna 150": [
      Colors.teal.shade700,
      Colors.blueGrey,
      Colors.greenAccent.shade700,
      Colors.orangeAccent.shade700
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. 상품이미지 : _buildPicture()
        _buildPicture(),
        // 2. 선택버튼 : _buildSelector() -> _buildSelectButton()
        _buildSelector(),
        // 3. 상품정보 : _buildGoodsInfo()
        // 상품명+상품가격+별점+리뷰수+색상옵션+버튼
        _buildGoodsInfo(),
      ],
    );
  }

// 1. 상품이미지 생성 메서드 : _buildPicture()
  Widget _buildPicture() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          // 위에 세팅 된 이미지를 호출
          // List형 변수의 순번으로 상태변경클래스 내부의 변수를 사용하여
          // 이 변수가 업데이트 되면 이미지도 변경 됨
          selectedPic[sequenceNumber],
          fit: BoxFit.cover,
        ),
      ),
    );
  } // _buildPicture 메서드 //

// 2. 선택버튼 생성 메서드 : _buildSelector()
// -> _buildSelector()
  Widget _buildSelector() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 10,
        bottom: 30,
      ),
      child: Row(
        // 진행방향 균일분할
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 버튼 4개 생성하기
          _buildSelectButton(0, Icons.directions_bike),
          _buildSelectButton(1, Icons.motorcycle),
          _buildSelectButton(2, CupertinoIcons.car_detailed),
          _buildSelectButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  } // _buildSelector() 메서드 //

// 3. 선택버튼 만들기 메서드 : _buildSelectButton()
  Widget _buildSelectButton(int seq, IconData mIcon) {
    // seq : 변경순번, mIcon 버튼 아이콘
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        // 버튼 배경색은 선택된 것과 일반적인 것으로 구분
        // 현재버튼과 선택버튼이 일치 시 엑센트 색 넣기
        color: seq == sequenceNumber ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: IconButton(
        icon: Icon(
          mIcon,
          color: Colors.black,
        ),
        onPressed: () {
          // 버튼 클릭 시 sequenceNumber update -> 변수 사용하는 모든 위젯이 업데이트 됨
          // state 업데이트 하는 방법 : setState((){업데이트코드})
          setState(() {
            sequenceNumber = seq;
          });
        },
      ),
    );
  } // _buildSelectButton 메서드 //

// 4. 상품정보 만들기 메서드 : _buildGoodsInfo() (상품명+상품가격)+(별점+리뷰수)+색상옵션+버튼
  Widget _buildGoodsInfo() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        // 진행방향의 수직축(crossAxis)의 시작부분부터 정렬
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. 상품명+상품가 : _buildNameNPrice()
          _buildNameNPrice(),
          // 2. 별점 + 리뷰수 : _buildStarNReview()
          _buildStarNReview(),
          // 3. 색상옵션 : _buildColorOption()
          _buildColorOption(),
          // 4. 버튼 : _buildButton()
          _buildButton(),
        ],
      ),
    );
  } // _buildGoodsInfo 메서드 //

  // 1. 상품명 + 상품가 : _buildNameNPrice()
  Widget _buildNameNPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        // 양쪽 끝 정렬
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 상품명
          Text(
            selectedTit[sequenceNumber],
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          // 상품가
          Text(
            '\$${selectedPrice[selectedTit[sequenceNumber]]?[0]}',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // 2. 별점 + 리뷰수 : _buildStarNReview()
  Widget _buildStarNReview() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          // 별점 for 반복문으로
          for (int i = 0;
              i < selectedPrice[selectedTit[sequenceNumber]]?[2];
              i++)
            Icon(
              Icons.star,
              color: Colors.yellow.shade700,
            ),
          Spacer(),
          // 리뷰수
          Text(
            'review',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Text(
            // $는 특수문자라 역슬래쉬로 사용
            '(${selectedPrice[selectedTit[sequenceNumber]]?[1]})',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade600),
          ),
        ],
      ),
    );
  }

  // 3. 색상옵션 : _buildColorOption()
  Widget _buildColorOption() {
    // 선택 색상정보 변수에 담기
    dynamic seletedColor = selectedOption[selectedTit[sequenceNumber]];
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color Options',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              for (int i = 0; i < seletedColor.length; i++)
                _buildColor(seletedColor[i]),
            ],
          )
        ],
      ),
    );
  }

  // 색상위젯
  Widget _buildColor(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      // 5. Stack의 첫 번째 Container 위젯위에 Positioned 위젯이 올라가는 형태
      // Stack은 아래로부터 위로 겹쳐져서 쌓이는 형태를 말함
      // 내부에 겹처질 위젯은 Positioned() left, top값을 가진다. 위치이동 사용가능
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            // 둥근디자인
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: mColor == Colors.white ? Colors.black26 : mColor,
              ),
              shape: BoxShape.circle,
            ),
          ),
          // 겹쳐질 위젯
          Positioned(
            left: 5,
            top: 5,
            // 둥근디자인 ClipOval
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  // 4. 버튼 : _buildButton()
  Widget _buildButton() {
    return Align(
      child: TextButton(
        onPressed: () {
          // 장바구니 담기 확인창
          // 쿠퍼티노 다이얼로그
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              // 대화창 메세지
              title: Text('장바구니에 담았습니다'),
              // 팝업창 버튼 터치 시 동작액션 : 닫기
              actions: [
                // 쿠퍼티노 액션 담당 클래스 생성자 함수
                CupertinoDialogAction(
                  onPressed: () {
                    // pop()으로 context를 보내면 현재 뜬 대화창이 닫힌다.
                    Navigator.pop(context);
                  },
                  // 대화창 구성 버튼
                  child: Text('확인',style: TextStyle(color:Colors.blue),),
                ),
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(
            300,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          'Add to Cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
} // _CartDetailState class //
