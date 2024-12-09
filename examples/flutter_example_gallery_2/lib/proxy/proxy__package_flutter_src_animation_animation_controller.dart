part of '../generated/__package_flutter_src_animation_animation_controller.dart';

const proxyClassMirrors = {
  "_AnimationController&Animation&AnimationEagerListenerMixin&AnimationLocalListenersMixin&AnimationLocalStatusListenersMixin":
      m.ClassMirror(
          "_AnimationController&Animation&AnimationEagerListenerMixin&AnimationLocalListenersMixin&AnimationLocalStatusListenersMixin",
          {
        'addStatusListener': __addStatusListener$,
        'addListener': __addListener$,
        'removeStatusListener': __removeStatusListener$
      },
          {}),
  '_AnimationController&Animation&AnimationEagerListenerMixin&AnimationLocalListenersMixin':
      m.ClassMirror(
    '_AnimationController&Animation&AnimationEagerListenerMixin&AnimationLocalListenersMixin',
    {'addListener': _Animation_addListener$},
    {},
  ),
};

Function _Animation_addListener$(
  m.Scope scope$,
  AnimationLocalListenersMixin target$,
) =>
    (m.FunctionPointer listener) {
      void listenerProxy() => scope$.engine.callFunctionPointer(
            scope$,
            listener,
            [],
            {},
          );
      target$.addListener(listenerProxy);
    };

Function __addListener$(m.Scope scope$, Animation target$) =>
    (m.FunctionPointer listener) {
      void listenerProxy() {
        return scope$.engine.callFunctionPointer(
          scope$,
          listener,
          [],
          {},
        );
      }

      target$.addListener(listenerProxy);
    };

Function __addStatusListener$(m.Scope scope$, Animation target$) =>
    (m.FunctionPointer listener) {
      void listenerProxy(AnimationStatus status) {
        return scope$.engine.callFunctionPointer(
          scope$,
          listener,
          [status],
          {},
        );
      }

      var function = scope$.functionPointers[listener];
      if (function == null) {
        function = listenerProxy;
        scope$.functionPointers[listener] = function;
      }
      target$.addStatusListener(function);
    };

Function __removeStatusListener$(m.Scope scope$, Animation target$) =>
    (m.FunctionPointer listener) {
      void listenerProxy(AnimationStatus status) {
        return scope$.engine.callFunctionPointer(
          scope$,
          listener,
          [status],
          {},
        );
      }

      var function = scope$.functionPointers[listener];
      if (function == null) {
        function = listenerProxy;
        scope$.functionPointers[listener] = function;
      }

      target$.removeStatusListener(listenerProxy);
    };
