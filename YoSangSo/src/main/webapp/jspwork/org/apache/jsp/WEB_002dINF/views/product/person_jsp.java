/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.73
 * Generated at: 2023-04-14 02:46:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class person_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1680738812000L));
    _jspx_dependants.put("jar:file:/Users/deokkeun/Desktop/YoSangSo-main/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yosangso/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/main-style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/product/person.css\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/881d1deef7.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <title>index</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- 헤더, 컨텐츠 -->\n");
      out.write("    <main>\n");
      out.write("        \n");
      out.write("        <!-- 헤더 -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        <!-- 컨텐츠 -->\n");
      out.write("        <section id=\"content\">\n");
      out.write("\n");
      out.write("            <!-- 컨텐츠 내용 -->\n");
      out.write("            <section class=\"content-box\">\n");
      out.write("\n");
      out.write("                <section class=\"content-box-left\">\n");
      out.write("                    <div>\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"fa-solid fa-arrow-left\" target=\"_self\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <section class=\"content-box-left-title\">\n");
      out.write("                        <div class=\"person-img\">\n");
      out.write("                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/image/index/인체이미지누끼.png\" alt=\"인체이미지\" width=\"80px\">\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"title-sub\">\n");
      out.write("                                #두뇌 #눈 #심장 #간 #소화 #뼈,관절 #호흡기\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"title\">부위별 추천 비타민을 알고싶어요!</div>\n");
      out.write("                        </div>\n");
      out.write("                    </section>\n");
      out.write("                    <section class=\"content-box-left-content\">\n");
      out.write("                    \n");
      out.write("                    <!-- class=\"people-bg\" -->\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"brains\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>두뇌</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#공부 #뇌졸증</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"eyes\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>눈</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#시력감소 #난시 #근시 #원시</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"heart\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>심장</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#어지러움 #혈압</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"liver\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>간</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#피로 #술</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"digestion\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>소화</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#소화장애</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"bone\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>뼈, 관절</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#골다공증</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <button class=\"list\" value=\"respiratory\" onclick=\"goTop()\">\n");
      out.write("                                    <h2>호흡기</h2>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <p>#활성산소</p>\n");
      out.write("                                </button>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </section>\n");
      out.write("                </section>\n");
      out.write("	\n");
      out.write("			\n");
      out.write("			\n");
      out.write("                <section class=\"content-box-right-content people-bg\">\n");
      out.write("                    <section>\n");
      out.write("                        <h2 id=\"right-title\" class=\"title\"></h2>\n");
      out.write("                        <div id=\"right-sub-title\"></div>\n");
      out.write("                    </section>\n");
      out.write("                    <section>\n");
      out.write("                        <ul id=\"list-box\">\n");
      out.write("              				\n");
      out.write("              				<div class=\"vitamin-title\">비타민의 종류와 효능을 확인해주세요.</div>\n");
      out.write("              				<img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/image/people/하루비타민권장량.png\" alt=\"\" width=\"540px\" height=\"500px\">\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </section>\n");
      out.write("\n");
      out.write("                </section>\n");
      out.write("\n");
      out.write("        \n");
      out.write("            </section>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- 헤더, 컨텐츠 끝 -->\n");
      out.write("    </main>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- 푸터 -->\n");
      out.write("  	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("	<!-- jQuery 라이브러리 추가 -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("   \n");
      out.write("    <!-- main.js 연결 -->\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/main.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- people.js 연결 -->\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/product/person.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
