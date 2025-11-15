import 'package:app/models/question_manger.dart';
import 'package:app/models/question_model.dart';
import 'package:app/widgets/question_page_widgets/option_item.dart';
import 'package:flutter/material.dart';

class OptionList extends StatefulWidget {
  const OptionList({
    super.key,
    required this.questionModel,
    required this.questionManger,
  });
  final QuestionModel questionModel;
  final QuestionManger questionManger;

  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList>
    with AutomaticKeepAliveClientMixin {
  int selectIndex = -1;
  List<int> multiSelect = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: widget.questionModel.choices.length,
      itemBuilder: (context, index) {
        bool isSelected = widget.questionModel.oneChoice
            ? selectIndex == index
            : multiSelect.contains(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              if (widget.questionModel.oneChoice) {
                selectIndex = index;
                String selectItem = widget.questionModel.choices[index];
                widget.questionManger.updateAnswer(
                  question: widget.questionModel,
                  answer: selectItem,
                );
              } else {
                if (multiSelect.contains(index)) {
                  multiSelect.remove(index);
                  widget.questionModel.answer.remove(
                    widget.questionModel.choices[index],
                  );
                } else {
                  multiSelect.add(index);
                }
              }

              for (var index in multiSelect) {
                String answer = widget.questionModel.choices[index];
                widget.questionManger.updateAnswer(
                  question: widget.questionModel,
                  answer: answer,
                );
              }

              setState(() {});
            },
            child: OptionItem(
              isSelected: isSelected,
              choice: widget.questionModel.choices[index],
              questionModel: widget.questionModel,
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
