package servlet;

public class forenc {
	static String ab;
public static String dec(String a){
	try {
		ab=AES.decrypt(a);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return ab;
}

}
