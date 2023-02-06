package ch10;

public class Product {
	
	//상품 목록을 보관할 배열
	private String[] productlist = 
		{"item1", "item2", "item3", "item4", "item5" };
	
	//웹 테스트를 위한 변수값
	private int num1 = 10;
	private int num2 = 20;
	
	
	public int getNum1() {
		System.out.println("getNum1");
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public String[] getProductlist() {
		return productlist;
	}
	public void setProductlist(String[] productlist) {
		this.productlist = productlist;
	}
	
	
}
