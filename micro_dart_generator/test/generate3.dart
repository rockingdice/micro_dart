import 'package:dart_style/dart_style.dart';
import 'package:code_builder/code_builder.dart' as cb;

final dartFormatter = DartFormatter();
final emitter = cb.DartEmitter();

void main() {
  final code = cb.Class((b) {
    b.name = "\$B";
    b.extend = cb.refer("B");
    b.mixins.add(cb.refer("m.InstanceBridge"));
    b.fields.add(cb.Field((f) {
      f.type = cb.refer("m.MicroDartEngine");
      f.modifier = cb.FieldModifier.final$;
      f.name = "engine";
      f.annotations.add(cb.refer("override"));
    }));
    b.fields.add(cb.Field((f) {
      f.type = cb.refer("m.TypeRef");
      f.modifier = cb.FieldModifier.final$;
      f.name = "type";
      f.annotations.add(cb.refer("override"));
      f.assignment = cb.refer("const m.TypeRef").call([
        cb.literalString("dart:core"),
        cb.literalString("Object"),
        cb.literalBool(true)
      ]).code;
    }));

    b.constructors.add(cb.Constructor((c) {
      c.requiredParameters.add(cb.Parameter(
        (p0) {
          p0.name = "engine";
          p0.toThis = true;
        },
      ));
      c.requiredParameters.add(cb.Parameter(
        (p0) {
          p0.name = "a";
          p0.type = cb.refer("int");
        },
      ));
      c.requiredParameters.add(cb.Parameter(
        (p0) {
          p0.name = "b";
          p0.type = cb.refer("int");
        },
      ));
      c.initializers
          .add(cb.refer("super").call([cb.refer("a"), cb.refer("b")]).code);
    }));
  }).accept(emitter).toString();

  print(dartFormatter.format(code));
}

class ProxyClassInfo {
  final String name;
  final String extend;
  final String mixin;
  final String library;
  final String className;
  final String? superTypeKey;

  const ProxyClassInfo(this.name, this.extend, this.mixin, this.library,
      this.className, this.superTypeKey);
}
