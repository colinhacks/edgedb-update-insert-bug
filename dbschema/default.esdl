module default {
  abstract type Person {
    required property name -> str;
  }

  type Hero extending Person {
    required property secret_identity -> str;
    multi link friends -> Hero; # many-to-many
  }

  type Villain extending Person {
    link nemesis -> Hero;
  }

  type Movie {
    required property title -> str;
    multi link characters -> Person;
  }
}
