import 'package:flutter/material.dart';

class ActiveList extends StatelessWidget {
  //второй экран навигации
  const ActiveList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: Text('Жители многоквартирного дома могут и не знать, что происходит в индивидуальных тепловых пунктах, котельной или насосной. Большинство из нас никогда не бывали на техническом этаже или подвале дома, в котором живут. Но каждый сразу заметит, когда во дворе после снегопада не уберут снег, или когда в квартире похолодает в отопительный сезон... Именно по этим вещам оценивается эффективность управляющей компании.'),
    );
  }
}
