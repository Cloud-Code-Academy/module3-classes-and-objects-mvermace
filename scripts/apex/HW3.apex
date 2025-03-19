// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Mike';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

// Q1
List<String> str = ClassesObjectsMethods.practiceStringMethods();
System.debug('str = '  + JSON.serialize(str));

// Q2
String str = 'Salesforce is Awesome!';
List<Boolean> boolList = ClassesObjectsMethods.checkStringContent(str);
System.debug('boolList = '  + JSON.serialize(boolList));

// Q3
String str0 = 'Salesforce is Salesforce';
String str1 = ClassesObjectsMethods.removeDuplicateWords(str0);
System.debug('strM = '  + str1);

List<String> str2 = new List<string>();
str2 = str0.split(' ');
System.debug('str2 = '  + str2);

List<Account> acc = [SELECT Id, Name FROM Account];
for (Account a : acc) {
system.debug(a.name);
}

// Q4
String q4Str0 = 'Hello World!';
Integer cntVowels = ClassesObjectsMethods.countVowels(q4Str0);
System.debug(cntVowels.toString());

String s = 'Hello World!'.substr(2);
System.debug(s);

String listOfSci = ClassesObjectsMethods.findTheScientist();

// public class Book { 

//     Public String title;
//     Public String author;

//     public Book(String title, String author){
//         this.title = title;
//         this.author = author;
//     }

//     public String getBookDetails() {
//         return 'Title: ' + title + ', Author: ' + author;
//     }
// }

// // Book b = new Book();
// // b.title = 'Studmuffin Stories';
// // b.author = 'Mike';
// // String bds = b.getBookDetails();
// // System.debug(bds);

ClassesObjectsMethods.Book c = new ClassesObjectsMethods.Book('Novel', 'Mike');
String bds2 = c.getBookDetails();
System.debug(bds2);

String s = ClassesObjectsMethods.createAndGetBookDetails();
System.debug(s);

ClassesObjectsMethods.Person p = new ClassesObjectsMethods.Person();
p.setName('test name');
p.setAge(30);
String n = p.getName();
System.debug(n);

Person person1 = ClassesObjectsMethods.createPerson('Person1', 25);
Person person2 = ClassesObjectsMethods.createPerson('Person2', 30);
System.debug(person1);
System.debug(person2);
