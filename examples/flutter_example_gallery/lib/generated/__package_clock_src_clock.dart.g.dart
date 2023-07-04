import 'package:clock/src/clock.dart';
import 'package:clock/clock.dart';
import 'package:clock/src/stopwatch.dart';
import 'package:clock/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:clock/src/clock.dart@Clock@#as': (m.Scope scope, target)=>()=>target as Clock,
'package:clock/src/clock.dart@Clock@#is': (m.Scope scope, target)=>()=>target is Clock,
'package:clock/src/clock.dart@Clock@': (m.Scope scope)=>([m.FunctionPointer? currentTime]){
if(currentTime == null){
return Clock();
}
DateTime currentTimeProxy() {
return  engine.callFunctionPointer(scope, currentTime!,[], {});
}

return Clock(currentTimeProxy);
},
'package:clock/src/clock.dart@Clock@fixed': (m.Scope scope)=>Clock.fixed,
'package:clock/src/clock.dart@Clock@now': (m.Scope scope, Clock target)=>target.now,
'package:clock/src/clock.dart@Clock@agoBy': (m.Scope scope, Clock target)=>target.agoBy,
'package:clock/src/clock.dart@Clock@fromNowBy': (m.Scope scope, Clock target)=>target.fromNowBy,
'package:clock/src/clock.dart@Clock@ago': (m.Scope scope, Clock target)=>target.ago,
'package:clock/src/clock.dart@Clock@fromNow': (m.Scope scope, Clock target)=>target.fromNow,
'package:clock/src/clock.dart@Clock@microsAgo': (m.Scope scope, Clock target)=>target.microsAgo,
'package:clock/src/clock.dart@Clock@microsFromNow': (m.Scope scope, Clock target)=>target.microsFromNow,
'package:clock/src/clock.dart@Clock@millisAgo': (m.Scope scope, Clock target)=>target.millisAgo,
'package:clock/src/clock.dart@Clock@millisFromNow': (m.Scope scope, Clock target)=>target.millisFromNow,
'package:clock/src/clock.dart@Clock@secondsAgo': (m.Scope scope, Clock target)=>target.secondsAgo,
'package:clock/src/clock.dart@Clock@secondsFromNow': (m.Scope scope, Clock target)=>target.secondsFromNow,
'package:clock/src/clock.dart@Clock@minutesAgo': (m.Scope scope, Clock target)=>target.minutesAgo,
'package:clock/src/clock.dart@Clock@minutesFromNow': (m.Scope scope, Clock target)=>target.minutesFromNow,
'package:clock/src/clock.dart@Clock@hoursAgo': (m.Scope scope, Clock target)=>target.hoursAgo,
'package:clock/src/clock.dart@Clock@hoursFromNow': (m.Scope scope, Clock target)=>target.hoursFromNow,
'package:clock/src/clock.dart@Clock@daysAgo': (m.Scope scope, Clock target)=>target.daysAgo,
'package:clock/src/clock.dart@Clock@daysFromNow': (m.Scope scope, Clock target)=>target.daysFromNow,
'package:clock/src/clock.dart@Clock@weeksAgo': (m.Scope scope, Clock target)=>target.weeksAgo,
'package:clock/src/clock.dart@Clock@weeksFromNow': (m.Scope scope, Clock target)=>target.weeksFromNow,
'package:clock/src/clock.dart@Clock@monthsAgo': (m.Scope scope, Clock target)=>target.monthsAgo,
'package:clock/src/clock.dart@Clock@monthsFromNow': (m.Scope scope, Clock target)=>target.monthsFromNow,
'package:clock/src/clock.dart@Clock@yearsAgo': (m.Scope scope, Clock target)=>target.yearsAgo,
'package:clock/src/clock.dart@Clock@yearsFromNow': (m.Scope scope, Clock target)=>target.yearsFromNow,
'package:clock/src/clock.dart@Clock@stopwatch': (m.Scope scope, Clock target)=>target.stopwatch,

};
}