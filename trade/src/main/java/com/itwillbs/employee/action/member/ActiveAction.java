package com.itwillbs.employee.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.employee.action.JSConfirmMoveFunction;
import com.itwillbs.employee.dao.MemberDAO;
import com.itwillbs.employee.dto.MemberDTO;
import com.itwillbs.util.Action;
import com.itwillbs.util.ActionForward;
import com.itwillbs.util.JSMoveFunction;

/** ActiveAction : 직원 활성화 **/

public class ActiveAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDTO emp = new MemberDTO();
		MemberDTO ad = new MemberDTO();
		// 직원 아이디
		emp.setEmp_id(request.getParameter("emp_id"));
		
		// 관리자 아이디, 비밀번호
		ad.setEmp_id((String) request.getSession().getAttribute("emp_id"));
		ad.setEmp_pw(request.getParameter("emp_pw"));
		
		MemberDAO dao = new MemberDAO();
		int result = dao.employeeActive(emp, ad);
		
		if (result == 1) {
			 JSConfirmMoveFunction.moveLocation(response, "./EmployeeActiveConfirm.emp?emp_id=" + emp.getEmp_id());
		} else {
			JSMoveFunction.alertBack(response, "오류 발생");
		}
		return null;
	}
}
