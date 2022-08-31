int? findMissingNumber(List<int>? list){
  list!.sort();
  int next = list[1];
  for(int i  = 0;i < list.length-1; i++){
    if(list[i+1] != next){return next;}
    else{
      next++;
    }
  }
}

void main(){
  List<int>? list = [6,1,2,8,3,4,7,10,5];
  print(findMissingNumber(list));
}
/*
  output : 9
*/
