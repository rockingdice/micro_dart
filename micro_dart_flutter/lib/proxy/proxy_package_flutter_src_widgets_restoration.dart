part of '../generated/__package_flutter_src_widgets_restoration.dart';

const proxyClassMirrors = {
  "RestorationMixin": m.ClassMirror("RestorationMixin", {
    'registerForRestoration': _registerForRestoration$,
  }, {})
};

Function _registerForRestoration$(
  m.Scope scope$,
  RestorationMixin target$,
) =>
    (RestorableProperty<Object?> property, String restorationId) {
      return target$.registerForRestoration(property, restorationId);
    };
