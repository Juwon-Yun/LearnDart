enum Status{
  approved,
  pending,
  rejected
}

void main(){
  Status status = Status.approved;
  // String status = "approved";

  if(status == Status.approved){
    print("승인 되었습니다.");
  }else if(status == Status.pending){
    print("대기중입니다.");
  }else {
    print("거절입니다.");
  }
}