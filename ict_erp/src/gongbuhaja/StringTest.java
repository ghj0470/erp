package gongbuhaja;

public class StringTest {
	public static void main(String[] args) {
		String str = "a,b,c,d,e";
		for(int i=0; i<str.length(); i++) {
			Character c = str.charAt(i);
			System.out.println("첫번째 영어입니다." + c);
			
		}
	}

}
