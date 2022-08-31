int? findOcurrenceOfIntegerInArray(List<int> list, int? key){
  int count = 0;
  
  list.asMap().forEach((int index,int value){
    (list[index] == key) ? count++ : "";
  });
  
  return count;
}


void main(){
  List<int>? list = [1,2,3,1,5];
  print(findOcurrenceOfIntegerInArray(list,1));
}