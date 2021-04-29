package mypkg.customersound;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.bean.CustomerSound;
import mypkg.bean.Member;
import mypkg.common.SuperClass;
import mypkg.dao.CustomerDao;

import mypkg.dao.MemberDao;
import mypkg.utility.FlowParameters;

public class CustomerSoundDetailViewController extends SuperClass{	
	private int no;
	private FlowParameters parameters = null;
	private CustomerSound bean = null;
	private CustomerDao dao = null;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.no = Integer.parseInt(request.getParameter("no"));
		
		this.dao = new CustomerDao();
		
		this.bean = dao.SelectDataByPk(no);
		
		System.out.println(this.bean.getName());
		System.out.println(this.bean.getReason());
		
		this.parameters
		= new FlowParameters(
				request.getParameter("pageNumber"), 
				request.getParameter("pageSize"),
				request.getParameter("mode"), 
				request.getParameter("keyword")
				);
		
		
		super.doGet(request, response);
		if (this.bean != null) {
				String gotopage = "/customersound/CustomerSoundDetailViewForm.jsp";
				request.setAttribute("bean", this.bean);
				
				super.doGet(request, response);
				super.GotoPage(gotopage);
			}else {									 
				new CustomerSoundCustormerCheckController().doGet(request, response);
			}
		
	}
	
}
	


