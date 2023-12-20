class MyThread extends Thread{

	public void run(){
		
		for(int i=0;i<5;i++)
			System.out.println("Child Thread");
	}
}
class ThreadDemo{

	public static void main(String[] args){
	
		MyThread mt = new MyThread();
		mt.start();

		for(int i=0;i<5;i++)
			System.out.println("Parent Thread");
	}
}
