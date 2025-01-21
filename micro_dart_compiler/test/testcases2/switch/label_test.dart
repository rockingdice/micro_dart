class Switcher {
  Switcher() {}

  say1(sound) {
    var x = 0;
    switch (sound) {
      MOO:
      case "moo":
        x = 100;
        break;
      case "woof":
        x = 200;
        continue MOO;
      default:
        x = 300;
        break;
    }
    return x;
  }

  say2(sound) {
    var x = 0;
    switch (sound) {
      WOOF:
      case "woof":
        x = 200;
        break;
      case "moo":
        x = 100;
        continue WOOF;
      default:
        x = 300;
        break;
    }
    return x;
  }

  // forward label to outer switch
  say3(animal, sound) {
    var x = 0;
    switch (animal) {
      case "cow":
        switch (sound) {
          case "moo":
            x = 100;
            break;
          case "muh":
            x = 200;
            break;
          default:
            continue NIX_UNDERSTAND;
        }
        break;
      case "dog":
        if (sound == "woof") {
          x = 300;
        } else {
          continue NIX_UNDERSTAND;
        }
        break;
      NIX_UNDERSTAND:
      case "unicorn":
        x = 400;
        break;
      default:
        x = 500;
        break;
    }
    return x;
  }
}

class SwitchLabelTest {
  static testMain() {
    Switcher s = new Switcher();
    assert(100 == s.say1("moo"));
    assert(100 == s.say1("woof"));
    assert(300 == s.say1("cockadoodledoo"));

    assert(200 == s.say2("moo"));
    assert(200 == s.say2("woof"));
    assert(300 == s.say2("")); // Dead unicorn says nothing.

    assert(100 == s.say3("cow", "moo"));
    assert(200 == s.say3("cow", "muh"));
    assert(400 == s.say3("cow", "boeh")); // Don't ask.
    assert(300 == s.say3("dog", "woof"));
    assert(400 == s.say3("dog", "boj")); // Ĉu vi parolas Esperanton?
    assert(400 == s.say3("unicorn", "")); // Still dead.
    assert(500 == s.say3("angry bird", "whoooo"));
  }
}

main() {
  SwitchLabelTest.testMain();
}
