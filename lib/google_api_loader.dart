library google_api_loader;

import 'dart:js';
import 'dart:html';

Google google = new Google._();

class Google {
  JsObject get _google => context['google'];
  
  Google._() {
    
  }
  
  void load(String moduleName, String moduleVersion, [Map optionalSettings]) {
    _google.callMethod('load', [moduleName, moduleVersion, new JsObject.jsify(optionalSettings)]);
  }
  
  void setOnLoadCallback(Function callback(Event ev)) {
    _google.callMethod('setOnLoadCallback', [callback]);
  }
}