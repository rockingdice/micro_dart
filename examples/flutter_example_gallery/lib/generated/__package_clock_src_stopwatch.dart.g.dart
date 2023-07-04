import 'package:clock/src/stopwatch.dart';
import 'package:clock/src/clock.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:clock/src/stopwatch.dart@ClockStopwatch@#as': (m.Scope scope, target)=>()=>target as ClockStopwatch,
'package:clock/src/stopwatch.dart@ClockStopwatch@#is': (m.Scope scope, target)=>()=>target is ClockStopwatch,
'package:clock/src/stopwatch.dart@ClockStopwatch@frequency': (m.Scope scope, ClockStopwatch target)=>target.frequency,
'package:clock/src/stopwatch.dart@ClockStopwatch@elapsedTicks': (m.Scope scope, ClockStopwatch target)=>target.elapsedTicks,
'package:clock/src/stopwatch.dart@ClockStopwatch@elapsed': (m.Scope scope, ClockStopwatch target)=>target.elapsed,
'package:clock/src/stopwatch.dart@ClockStopwatch@elapsedMilliseconds': (m.Scope scope, ClockStopwatch target)=>target.elapsedMilliseconds,
'package:clock/src/stopwatch.dart@ClockStopwatch@isRunning': (m.Scope scope, ClockStopwatch target)=>target.isRunning,
'package:clock/src/stopwatch.dart@ClockStopwatch@elapsedMicroseconds': (m.Scope scope, ClockStopwatch target)=>target.elapsedMicroseconds,
'package:clock/src/stopwatch.dart@ClockStopwatch@': (m.Scope scope)=>( _clock){
return ClockStopwatch(_clock);
},
'package:clock/src/stopwatch.dart@ClockStopwatch@start': (m.Scope scope, ClockStopwatch target)=>target.start,
'package:clock/src/stopwatch.dart@ClockStopwatch@stop': (m.Scope scope, ClockStopwatch target)=>target.stop,
'package:clock/src/stopwatch.dart@ClockStopwatch@reset': (m.Scope scope, ClockStopwatch target)=>target.reset,

};
}