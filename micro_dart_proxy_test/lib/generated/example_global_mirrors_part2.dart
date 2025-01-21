import 'package:micro_dart_proxy_test/proxy/test_class_external_extends_field_class.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

const Map<String, Function> globalGetterMirrors = {
  'ExternalClass.': _ExternalClass__$,
  'ExternalClass.a': ExternalClass_a$,
  'ExternalClass.funcExternalStatic': ExternalClass_funcExternalStatic$
};
const Map<String, Function> globalSetterMirrors = {
  'ExternalClass.a': ExternalClass_a_setter$,
};
const Map<String, m.ClassMirror> classMirrors = {
  'ExternalClass': m.ClassMirror('ExternalClass', {
    'b': ExternalClass_b$,
  }, {
    'b': ExternalClass_b_setter$,
  }),
};
const Map<Type, String> refTypeMirrors = {
  ExternalClass: 'ExternalClass',
};

Function _ExternalClass__$(m.Scope scope$) => () {
      return $ExternalClass();
    };
Function ExternalClass_a$(m.Scope scope$) => () {
      return ExternalClass.a;
    };

Function ExternalClass_funcExternalStatic$(m.Scope scope$) => () {
      return ExternalClass.funcExternalStatic();
    };

Function ExternalClass_a_setter$(m.Scope scope$) => (dynamic other$) {
      ExternalClass.a = other$;
    };

Function ExternalClass_b$(
  m.Scope scope$,
  ExternalClass target$,
) =>
    () {
      return target$.b;
    };

Function ExternalClass_b_setter$(
  m.Scope scope$,
  ExternalClass target$,
) =>
    (dynamic other$) {
      target$.b = other$;
    };
