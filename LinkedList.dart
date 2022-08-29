
class Node{
  int? data;
  Node? next;
  Node(int? data) {
    this.data = data;
    this.next = null;
  }
  // setters and getters
  void set setData(int data) {
//     print(this.data);
    this.data = data;
  }
  void set setNext(Node? next) {
    this.next = next;
  }
  int? get getData => this.data;
  Node? get getNext => this.next;
}


class LinkedList{
  Node? head;
  Node? last;
  int length = 0;
  LinkedList() : this.head = null, this.last = null;
  
  void insertAtBegin(int? value){
    if(this.length == 0){
      this.head = new Node(value);
      this.last = this.head;
      this.length++;
    }
    else{
      Node newNode  = new Node(value);
      newNode.setNext = this.head;
      this.head = newNode;
      this.length++;
    }
  }
  
  
  
  void insertAtLast(int? value){
    Node? newNode = new Node(value);
    if(this.length == 0){
      this.head = newNode;
      this.last = newNode;
      this.length++;
    }
    else{
      this.last!.setNext = newNode;
      this.last = newNode;
      this.length++;
    }
  }
  bool? removeFromHead(){
    if(this.length == 0){ return false;}
    else if(this.length == 1){
      this.head = null;
      this.last = null;
      this.length--;
      return true;
    }
    else{
      Node? temp = this.head;
      this.head = this.head!.getNext;
      temp = null;
      this.length--;
      return true;
    }
  }
  
  bool? removeFromLast(){
    if(this.length == 0){return false;}
    else if(this.length == 1){
      this.head = null;
      this.last = null;
      this.length--;
      return true;
    }
    else{
      Node? temp = this.head;
      print(temp!.getData);
      while(temp!.getNext!.getNext != null){
        print(temp.getData);
        temp = temp.getNext;
      }
      print(temp.getData);
      this.last = temp;
      temp.setNext = null;
      this.length--;
      return true;  
    }
  }
  
  Node? getFirstNode(){
    if(this.length == 0){return null;}
    else{ return this.head; }
  }
  
  
  
  void printLinkedList(){
    Node? temp = this.head;
    while(temp!=null){
      print(temp.getData);
      
      temp = temp.getNext;
    }
    print("NULL");
  }
}



void main() {
  LinkedList l1 = LinkedList();

  l1.insertAtBegin(5);
  l1.insertAtBegin(10);
  l1.insertAtLast(500);
  l1.printLinkedList();
  l1.removeFromHead();
  l1.removeFromLast();
  print("after dleteing from last");
  l1.printLinkedList();
  print(l1.getFirstNode()!.getData);
}






