void callBackDemo({required onSuccess(String otp), onCancel , onResend}){
  onCancel ();
  onResend();
  onSuccess("12345");
}
void main(){
  callBackDemo(onCancel:()=>print("onCanceled"),onResend:(){
    print("Resended");
  },onSuccess:(otp){
    print(otp);
  });
}