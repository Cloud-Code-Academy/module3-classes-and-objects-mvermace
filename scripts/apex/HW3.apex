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