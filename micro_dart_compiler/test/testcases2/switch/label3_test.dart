enum Color { red, green, blue }

enum Taste { sweet, sour, salty, bitter, umami }

void main() {
  assert(getValue(Taste.sweet, Color.blue) == 1);
  assert(getValue(Taste.bitter, Color.blue) == 1);
  assert(getValue(Taste.salty, Color.red) == 2);
  assert(getValue(Taste.salty, Color.blue) == 4);
  assert(getValue(Taste.salty, Color.green) == 3);
  assert(getValue(Taste.umami, Color.red) == 4);
}

int getValue(Taste taste, Color color) {
  switch (taste) {
    case Taste.sweet:
    case Taste.sour:
    case Taste.bitter:
      return 1;
    case Taste.salty:
      switch (color) {
        case Color.red:
          return 2;
        case Color.blue:
          continue LABEL;
        case Color.green:
          return 3;
      }
    LABEL:
    case Taste.umami:
      return 4;
  }
}
