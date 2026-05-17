void main() {
  var myc = myclass();// object
  myc.printName("vansh"); //function calling

  myc.Add(5,4);
  print(myc.Add(5,6));

}
class myclass
{
  myclass(){
print("my class object created");
}
  void printName(String name)
  {
  print(name);
  }
    int Add(int a,int b)
   {
     int sum = a+b;
     return sum;
   }
}

