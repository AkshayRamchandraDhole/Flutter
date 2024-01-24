class Demo{
    static Demo obj = new Demo();

    private Demo(){
        System.out.println("In Constructor");
    }

    static Demo getInstance(){
        return obj;
    }
}

class Client{
    public static void main(String args[]){
        Demo obj1 = Demo.getInstance();
        Demo obj2 = Demo.getInstance();
        Demo obj3 = Demo.getInstance();
    }
}