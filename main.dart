main(){
  String input = 'pwwkew';
  print('Input: "$input"');
  String maxSubstring = maxSubString(input);
  print('Output: "${maxSubstring.length}"');
  print('Explanation: The answer is "$maxSubstring" with the length of ${maxSubstring.length}.');
}

String maxSubString(String input){
  String maxSubstring = '';;
  for(int offset = 1; offset < input.length; offset++){
    for(int position = 0; position < (input.length/offset).ceil()+1; position++){
      if(position+offset <= input.length){
        String subString = input.substring(position, position+offset);
        if(subString == subString.split('').toSet().toList().join('')){
          if((subString.length > maxSubstring.length)){
            maxSubstring = subString;
          }
        }
      }
    }
  }
  return maxSubstring;
}
