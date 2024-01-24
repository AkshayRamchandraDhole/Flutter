abstract class IFC{
  void material(){
    print("Indian Material");
  }
}
class IndianFc implements IFC{
  void material(){

  }
  void taste(){
    print("Indian taste");
  }
}
class EUFC extends IFC{
  void material(){
    print("Indian Material");
  }
  void taste(){
    print("Europian taste");
  }
}
void main(){
  IndianFc obj = IndianFc();
  obj.material();
  obj.taste();
}