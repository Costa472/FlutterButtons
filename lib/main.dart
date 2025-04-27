import 'package:flutter/material.dart';

/**
 * This part is inchanged
 */
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


/**
 *
 * Here where we change: WidgetBuild == Rendering the page
 */
class _State extends State<MyApp> {
// Global variables
  int _value= 0;
  String _timeheure= 'Hello\n${DateTime.now().toString()}';
  String _valuue = 'SALAM';

  String subVal = '';
// function add & substract
  void _add() {
    setState((){
      _value++;
    });
  }

  void _subtract() {
    setState((){
      _value--;
    });
  }
// Change state on click button
  void _onPressed() {
    setState(() {
      _timeheure = 'Hello My Name is Mokhtar';
    });
  }

  void _onPressed_2(String _timeheure_2) {
    setState(() {
       _valuue = _timeheure_2;
    });
  }

  void _onChange(String value) {
    setState(() => subVal = 'Change: ${value}');
  }

  void _onSubmit(String value) {
    setState(() => subVal = 'Submit: ${value}');
  }


  /**
   *
   * Here where we change: WidgetBuild == Rendering the page
   */

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      //AppBar
      appBar: new AppBar(
        title: new Center(

        child: new Text('${_timeheure}'),)
      ),

      //Body
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Value = ${_value}'),
                new IconButton(icon: new Icon(Icons.add), onPressed: _add),
                new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract),

                // ElevatedButton = RaisedButton
                new ElevatedButton(onPressed: _onPressed, child: new Text('click me!')),

                //TextButton = FlatButton
                new TextButton(onPressed: () => _onPressed_2('End Of Page!'), child: new Text('click me!')),

                //Some Text
                new Text('actuellement: ${_valuue}'),
                new Text('${subVal}'),

                //Input Text with options on display and keyborad type
                new TextField(
                  decoration: new InputDecoration(
                    labelText: 'Prénom',
                    hintText:'Hint',
                    icon: new Icon(Icons.add)
                  ),
                 autofocus: true,
                 autocorrect: true,
                 keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                )
              ],
            ),
          )
      ),
    );
  }
}