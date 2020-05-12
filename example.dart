void main() {
  
/*1. เขียน code If - else 
a. กำหนดตัวแปร int ชื่อว่า age 
b. ถ้า age มากกว่า 50 พิมพ์ ว่า “Old”
c. ถ้า age มากกว่า 20 พิมพ์ ว่า “Medium”
d. ถ้า age น้อยกว่า 20 พิมพ์ ว่า “Young”
*/

  int age = 21;
  if(age >= 50){
   print('Old');
  }else if(age >= 20){
    print('Medium');
  }else if(age < 20){
    print('Young');
  }
  
 /*2. เขียน code ใช้ loop 
    a. กำหนดเรามี var a = [1,2,3]
    b. ให้วน loop แล้วพิมพ์ค่า a ทั้งหมด 
*/

  var a = [1,2,3];
  for (var i in a) {
    print(i);
  }


/*3. ทดสอบ Function
a. ทำ function หาค่า พื้นที่ของสี่เหลี่ยม (รับ กว้าง กับ ยาว) ให้ return พื้นที่ ของ สี่เหลี่ยม 
b. จากข้อ a คราวนี้ function นี้ จะ รองรับ สี่เหลี่ยม จตุรัส (ใส่เฉพาะ กว้างได้ ไม่ได้ต้องใส่ ยาว) 
c. ให้ทำ อีก function (ทำงานเหมือนเดิม) ที่เป็น named parameter ด้วย 
d. ให้ทำ อีก function (ทำงานเหมือนเดิม) ที่เป็น arrow function ด้วย 
*/
  print(areaSquare(4,4)); // a.
  print(areaSquare(5));   // b.
  print(areaSquareNa(num: 2,num2: 3)); //c. 
  print(areaSquareAr(6)); // d.  
  
  // 4. การใช้ Class 
  var Dog1 = Dog('ดีดี','ชิวาว่า');
  Dog1.bark('โฮ่งงงง');
  
  var Dog2 = SmallDog('ซูชิ','ชิบะ');
  Dog2.bark('Good job !!! ');
  Dog2.runAway();
  print(Dog2.isSmall());
  
}
// Function
dynamic areaSquare(var num, [var num2]) {
  return num * ( num2 ?? num );
}
// named parameter Function
dynamic areaSquareNa({var num, var num2}) => num * ( num2 ?? num );

// Arrow Function
dynamic areaSquareAr(var num,[var num2]) => num * ( num2 ?? num );

/*4. การใช้ Class 
a. เขียน class ของ Dog 
b. โดยที่ Dog มี property คือ age,  type (พันธ์ุหมา), name, size
c. ทำ Constructor รับค่า (optional ที่ default = 5)age, type, name, (optional ที่ default = 10) size 
d. Dog มี method bark(String text) โดยมันจะ print ว่า “หมาชื่อ xxx พันธ์ yyy อายุ zz เห่าว่า text”
e. ทำ class ชื่อ SmallDog ไป extends Dog โดยมี method ชื่อว่า runAway() เพิ่มเข้ามา โดยให้ print ว่า “I am running ”
f. ใน Class SmallDog ให้ประกาศ static variable ชื่อว่า MAX_BODY_SIZE กำหนดค่า = 30 
g. ทำ method ชื่อว่า isSmall ใน SmallDog โดย เช็คค่า size กับ MAX_BODY_SIZE  ถ้า size > MAX_BODY_SIZE จะ Return false ไม่อย่างงั้นก็จะ return true 
 */

class Dog {
  int age;
  String type;
  String name;
  int size;
  
  // default constructor
  Dog(String name,String type,[int age = 5,int size = 10]) {
    this.age = age;
    this.type = type; 
    this.name = name;  
    this.size = size; 
  }

  void bark(String text) {
    // หมาชื่อ xxx พันธ์ yyy อายุ zz เห่าว่า text
    print('หมาชื่อ ${this.name} พันธุ์ ${this.type} อายุ ${this.age} เห่าว่า ${text}');
  }
}

class SmallDog extends Dog {
  static const MAX_BODY_SIZE = 30;
  SmallDog(String name,String type) : super(name, type);

  void runAway() {
    print('I am running');
  }
  
  dynamic isSmall(){
    if(this.size > MAX_BODY_SIZE){
      return false;
    }else{
      return true;
    }
  }
}


