package org.bank.ut;

public class BaseBean {
	private int currentPage;  //当前页数
	
	private int lineSize;  // 每页显示的行数

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getLineSize() {
		return lineSize;
	}

	public void setLineSize(int lineSize) {
		this.lineSize = lineSize;
	}

}
