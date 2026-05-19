void main()
{
 var listNames = [10,20,30,40,50];
 listNames.add(60);

 print("$listNames");
//
//  var names =[];
// names.add("vansh");
// names.add("vansh");
// names.insert(0,100);
// names.insertAll(3,listNames);
//  names.addAll(listNames);
 listNames.replaceRange(0, 4, [1,2,3,4]);

 print("$listNames");
 listNames.removeLast();
 listNames.removeAt(1);
 // listNames.removeRange(0, 4);
 print("length:,${listNames.length}");
 print("length:,${listNames.reversed}");
 print("length:,${listNames.first}");
 print("length:,${listNames.last}");
print("length:,${listNames.isNotEmpty}");
print("length:,${listNames.elementAt(2)}");

 print("$listNames");
 // print("$names");
}
