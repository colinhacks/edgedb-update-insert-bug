CREATE MIGRATION m1mbt4vfenxby27hrcimqouuysv4e4eq3koddleejrt5d7pr4sknla
    ONTO initial
{
  CREATE ABSTRACT TYPE default::Person {
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE default::Hero EXTENDING default::Person {
      CREATE MULTI LINK friends -> default::Hero;
      CREATE REQUIRED PROPERTY secret_identity -> std::str;
  };
  CREATE TYPE default::Villain EXTENDING default::Person {
      CREATE LINK nemesis -> default::Hero;
  };
  CREATE TYPE default::Movie {
      CREATE MULTI LINK characters -> default::Person;
      CREATE REQUIRED PROPERTY title -> std::str;
  };
};
