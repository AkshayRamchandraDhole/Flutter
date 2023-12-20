class ThreadDemo{
	
	public static void main(String[] args){
	
		System.out.println(Thread.currentThread().getName());

		System.out.println("Stmt1");
		System.out.println("Stmt2");
		
		try{
			Thread.sleep(5000);
		}catch(InterruptedException e){
		
		}
		System.out.println("Stmt3");
		System.out.println("Stmt4");

	}
}
