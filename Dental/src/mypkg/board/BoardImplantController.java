package mypkg.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.common.SuperClass;

public class BoardImplantController extends SuperClass{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("진료 소개 doget");
		String section = request.getParameter("section");
		
		super.doGet(request, response);
		String gotopage = "/jinryointro/" + section + ".jsp";
		super.GotoPage(gotopage);
	}
}
