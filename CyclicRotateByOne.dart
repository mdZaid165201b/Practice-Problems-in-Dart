List<int>? rotate(List<int>? list){
//   print(list?.length);
  int? temp = list![list.length-1];
  int? elem = list[0];
  
  for(int i = 0; i < list.length-1; i++){
    int? elem2 = list[i+1];
    list[i+1] = elem!;
    elem = elem2;
  }
  
  list[0] = temp;
  return list;
}



void main(){
  List<int>? list = [1,2,3,4,5];
  list =  rotate(list);
  for(int elem in list!){print(elem);}
}