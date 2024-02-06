// 자바빈 클래스
// DTO(Data Transfer Object)

package javaBean;

public class SimpleBean {
	
	private String msg;		// 필드, 프로퍼티(property)
	private String name;
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
