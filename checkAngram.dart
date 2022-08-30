bool? checkAngram(String s1,String s2){
  if(s1.length != s2.length) return false;
  
  List<String> s1Array = s1.split('');
  List<String> s2Array = s2.split('');
  
  bool isTrue = false;
  s2Array.forEach((elem) {
    isTrue = s1Array.contains(elem);
  });
  return isTrue;  
}

void main() {
  print(checkAngram("test","ttew"));
  if(checkAngram("Listen","Silent")!) print("Angram");
  else{print("Not Angram");}
}
