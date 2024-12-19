part of '../screen.dart';

class InfoWidget extends StatelessWidget {
  InfoWidget({super.key, required this.state, required this.parkingLocationId});

  final RegisterState state;
  final int parkingLocationId;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  _buildInputResult(ref),
                  SizedBox(height: 10),
                  if (state.step < 3) _buildTextField(ref),
                  if (state.step >= 3) _buildDayPicker(ref),
                ],
              ),
            ),
            _buildButtonNext(ref),
          ],
        ),
      );
    });
  }

  Widget _buildTextField(WidgetRef ref) {
    final questionList = [
      '주차장 이름을 입력하세요',
      '주차 층수를 입력하세요',
      '주차 구역을 입력하세요',
    ];
    return TextField(
      controller: _textController,
      focusNode: _focusNode,
      decoration: InputDecoration(
        labelText: questionList[state.step],
        border: OutlineInputBorder(),
      ),
      onSubmitted: (value) {
        ref.read(registerViewModelProvider(parkingLocationId).notifier).nextStep(_textController.text);
        _focusNode.requestFocus();
      },
    );
  }

  Widget _buildInputResult(WidgetRef ref) {
    return Row(
      children: [
        // null이나 공백이 아닌 항목만 Text 위젯으로 출력
        if (state.parkingLocation?.name.isNotEmpty == true) _buildInputItem(state.parkingLocation!.name, 0, ref),
        SizedBox(width: 10),
        if (state.parkingLocation?.floor?.isNotEmpty == true) _buildInputItem(state.parkingLocation!.floor!, 1, ref),
        SizedBox(width: 10),
        if (state.parkingLocation?.section?.isNotEmpty == true) _buildInputItem(state.parkingLocation!.section!, 2, ref),
      ],
    );
  }

  Widget _buildInputItem(String value, int index, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        _textController.text = value;
        _focusNode.requestFocus();
        ref.read(registerViewModelProvider(parkingLocationId).notifier).moveToTargetStep(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          value,
          style: TextStyle(fontSize: 12),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }

  // 요일 선택 위젯
  Widget _buildDayPicker(WidgetRef ref) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '반복',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                  CupertinoSwitch(
                    value: state.parkingLocation?.isRepeat ?? false,
                    onChanged: (value) {
                      ref.read(registerViewModelProvider(parkingLocationId).notifier).updateRepeat(value);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            _buildWeekPicker(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildWeekPicker(WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var day in ['월', '화', '수', '목', '금', '토', '일']) _buildDayButton(day),
        ],
      ),
    );
  }

  Widget _buildDayButton(String day) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(day,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Widget _buildButtonNext(WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text('다음',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
