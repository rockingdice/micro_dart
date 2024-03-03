part of '../generated/__package_flutter_src_widgets_restoration.dart';

const proxyClassMirrors = {
  "RestorationMixin": m.ClassMirror("RestorationMixin", {
    'registerForRestoration': _RestorationMixin_registerForRestoration$,
    'dispose': _RestorationMixin_dispose$,
  }, {})
};

Function _RestorationMixin_registerForRestoration$(
  m.Scope scope$,
  RestorationMixin target$,
) =>
    (RestorableProperty<Object?> property, String restorationId) {
      return target$.registerForRestoration(property, restorationId);
    };

Function _RestorationMixin_dispose$(
  m.Scope scope$,
  RestorationMixin target$,
) =>
    target$.dispose;
