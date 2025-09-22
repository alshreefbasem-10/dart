// 1. Explain the difference between Class and Object with a real-life example.
/*
Class: A class is a blueprint that defines the attributes and methods of something. 
Object: An object is an instance of a class, a real entity that we can create and use in the program.
Example:
A class is like a blueprint of a car (it defines the model, color, and functions).
An object is the actual car you can drive.
*/

//2. What is a Constructor? What types of constructors does Dart support?

/*
 Constructor in Dart:
- A special method that is called automatically when an object is created.
- It is used to initialize the object’s properties.
- The constructor has the same name as the class.

 Types of Constructors in Dart:
1. Default Constructor:
   - Provided by Dart if no constructor is defined.
   - Example: Car() {}

2. Parameterized Constructor:
   - Accepts parameters to initialize object properties.
   - Example: Car(this.brand, this.color);
*/

//3. How does Dart handle Access Modifiers? Does it have public/private/protected like Java?

/*
- Unlike Java or C#, Dart does not have explicit keywords 
  like public, private, or protected.

  Dart has only two levels of visibility:
  Public (default)
  Private (with _)
  No explicit 'protected' modifier.


1. Public: By default, everything in Dart is public.

2. Private: If the name starts with an underscore (_)
   Example: int _age;

3. Protected:
   - Dart does NOT support 'protected' like Java.
   - Instead, subclasses can access members that are not private.

*/

//4. What is Encapsulation? How can you implement it in Dart using Getter and Setter?

/*
 Encapsulation in Dart:
- Encapsulation means hiding the internal details of a class 
  and providing controlled access to its data.
- It helps in data protection and prevents unauthorized access.

example

class Person {
  String _name = "";

  String get name => this._name;

  set name(String value) {
    if (value.isNotEmpty) {
      this._name = value;
    }
  }
}

void main() {
  var p = Person();

  p.name = "Soher";

  print("Name: ${p.name}");
}

*/

//5. Why should we use a Setter instead of making a variable public?

//Public variable → No controlM
//Setter → Controlled access (with validation & security)
