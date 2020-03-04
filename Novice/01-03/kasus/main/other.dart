import 'dart:convert';
import 'dart:io';

main() {
    print('1 + 1 = ...');
    var line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    print(line.trim() == '2' ? 'Yup!' : 'Nope :(');
}