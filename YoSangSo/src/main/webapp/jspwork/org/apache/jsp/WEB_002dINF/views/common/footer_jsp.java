/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.73
 * Generated at: 2023-04-13 23:21:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <!-- 푸터 -->\n");
      out.write("    <footer>\n");
      out.write("        <!-- 푸터 왼쪽 공백 -->\n");
      out.write("        <section></section>\n");
      out.write("\n");
      out.write("        <!-- 푸터 내용 -->\n");
      out.write("        <section id=\"footer-box\">\n");
      out.write("            <section>\n");
      out.write("                <div class=\"footer-logo\">\n");
      out.write("                    <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/image/logo/로고-001.png\" alt=\"로고\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-nav\">\n");
      out.write("                    <div></div>\n");
      out.write("                    <div>\n");
      out.write("                        <pre>\n");
      out.write(" <div id=\"footer-title\"> 요즘 생활의 소중함</div>\n");
      out.write(" 대표자 : 조미현\n");
      out.write(" 사업자등록번호 : 209-12-12345\n");
      out.write(" 통신판매업신고 : 2022-서울강남-1111호\n");
      out.write(" 회사주소 : 서울특별시 강남구 테헤란로14길 6 (2,3층) \n");
      out.write("                \n");
      out.write("                        </pre>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <pre>\n");
      out.write("                        \n");
      out.write("<div id=\"footer-title\"> C/S  CENTER</div>\n");
      out.write(" TEL : 02 - 1234 - 5678\n");
      out.write(" OPEN : 평일 10 :00 ~ 17:00\n");
      out.write(" (주말 및 공휴일 휴무)\n");
      out.write(" E-MAIL : yosangso @yss.co.kr\n");
      out.write("                        </pre>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <pre>\n");
      out.write("                        \n");
      out.write("<div id=\"footer-title\"> SERVICE</div>\n");
      out.write(" 고객님은 안전거래를 위해 현금 등으로 결제 시 \n");
      out.write(" 저희 쇼핑몰에서 가입한 구매안전 서비스를 이용하실 수 있습니다.\n");
      out.write("\n");
      out.write("<a href=\"https://www.ftc.go.kr/\" target=\"_blank\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/image/footer/공정거래위원회.png\" alt=\"공정거래위원회\" id=\"footer-img\"></a>      <a href=\"https://kolsa.or.kr/\" target=\"_blank\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/image/footer/KOLSA.png\" alt=\"한국온라인쇼핑협회\" id=\"footer-img\"></a>\n");
      out.write("                        </pre>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <article>\n");
      out.write("                <a href=\"#\">이용약관</a>\n");
      out.write("                <span> | </span>\n");
      out.write("                <a href=\"#\">개인정보처리방침</a>\n");
      out.write("                <span> | </span>\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board/faq\">FAQ</a>\n");
      out.write("                <span> | </span>\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board/inquiry\">고객센터</a>\n");
      out.write("                <span> | </span>\n");
      out.write("                <span>Copyright &copy; KH Information Educational Institute D-Class</span>\n");
      out.write("            </article>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- 푸터 오른쪽 공백 -->\n");
      out.write("        <section></section>\n");
      out.write("    </footer>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
