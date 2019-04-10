package org.bank.ut;

import javax.servlet.http.HttpServletRequest;

public class Page {
	private int currentPage=0;

	private int lineSize=5;


	public void initPage(HttpServletRequest request){
		String page_str=request.getParameter("pager.offset");

		if(page_str!=null && !page_str.equals("")){

			this.currentPage=Integer.parseInt(page_str);
		}

	}


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
