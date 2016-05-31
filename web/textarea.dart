import 'dart:html';
import 'dart:async';
import 'package:http/browser_client.dart';
import 'package:http/http.dart' as http;
import 'package:polymer/polymer.dart';

@CustomTag('signin-element')
class signin extends PolymerElement {
  signin.created() : super.created();

  @observable
  String text = '123';
  @observable
  String template = '321';
  var a1 = querySelector('#a1');
  var a2 = querySelector('#a2');

  check() async {
//    var client = new BrowserClient();
//    var url = "/api/check";
//    client
//        .post(url, body: {"text": text, "template": template}).then((response) {
//      print("Response status: ${response.statusCode}");
//      print("Response body: ${response.body}");
//    });
    print("check?");
  }

  void changeTemplate(Event e) {
    template = (e.target as TextAreaElement).value;
    (querySelector('#a1') as PaperAutogrowTextarea)
        .jsElement
        .callMethod('update', [template]);
  }

  void changeText(Event e) {
    text = (e.target as TextAreaElement).value;
    a2.update();
  }

  void clear(Event e) {
    text = null;
    template = null;
  }
}
