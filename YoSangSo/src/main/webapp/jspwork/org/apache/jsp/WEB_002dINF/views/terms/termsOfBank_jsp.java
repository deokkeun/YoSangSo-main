/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.73
 * Generated at: 2023-04-14 03:20:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.terms;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class termsOfBank_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("/resources/css/termsBank.css\">\n");
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
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"main-bar\">\n");
      out.write("                <div class=\"head-part\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"serviceTerms\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/terms/termsOfService\">요생소 이용약관</a></li>\n");
      out.write("                        <li class=\"privacyPolicy\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/terms/termsOfPrivacy\">개인정보 처리 방침</a></li>\n");
      out.write("                        <li class=\"financial\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/terms/termsOfBank\">전자금융거래 이용약관</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"content-part\">\n");
      out.write("                    <pre>\n");
      out.write("제1조 (목적)\n");
      out.write("이 약관은 삼성화재해상보험주식회사(이하 “회사”라 한다)와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함으로써 거래를 신속하고 효율적으로 처리하며 거래당사자 상호간의 이해관계를 합리적으로 조정하는 것을 목적으로 합니다.\n");
      out.write("\n");
      out.write("제2조 (용어의 정의)\n");
      out.write("[1] 이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.\n");
      out.write("1. “전자금융거래”라 함은 회사가 전자적 장치를 통하여 금융상품 및 서비스를 제공하고 이용자가 회사와 직접 대면 하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.\n");
      out.write("2. “이용자”라 함은 전자금융거래를 위하여 회사와 체결한 계약(이하 “전자금융거래계약” 이라 한다)에 따라 전자금융거래를 이용하는 자를 말합니다.\n");
      out.write("3. “전자적 장치”라 함은 전자금융거래정보를 전자적 방법으로 전송하거나 처리하는데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다.\n");
      out.write("4. “접근매체”라 함은 전자금융거래에 있어서 이용자가 거래지시를 하거나 또는 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 다음 각목의 어느 하나에 해당하는 수단 또는 정보를 말합니다.\n");
      out.write("가. 전자식 카드 및 이에 준하는 전자적정보\n");
      out.write("나. 전자서명법에 따른 인증서\n");
      out.write("다. 회사에 등록된 이용자 번호\n");
      out.write("라. 등록되어 있는 이용자의 생체정보\n");
      out.write("마. 가목 또는 나목의 수단이나 정보를 사용하는데 필요한 비밀번호\n");
      out.write("5. “전자문서”라 함은 전자서명법 제2조제1호의 규정에 따라 작성, 송신•수신 또는 저장된 정보를 말합니다.\n");
      out.write("6. “거래지시”라 함은 이용자가 전자금융거래계약에 따라 회사에게 전자금융거래의 처리를 지시하는 것을 말합니다.\n");
      out.write("7. “오류”라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 약관(개별약관을 포함한다), 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.\n");
      out.write("8. “전자지급거래”라 함은 자금을 주는 자(이하 “지급인”이라 한다)가 회사로 하여금 전자지급수단을 이용하여 자금을 받는 자(이하 “수취인”이라 한다)에게 자금을 이동하게 하는 전자금융거래를 말합니다.\n");
      out.write("9. “전자지급수단”이라 함은 전자자금이체, 직불전자지급수단, 선불전자지급수단, 전자화폐, 신용카드, 전자채권 그 밖의 전자적 방법에 따른 지급수단을 말합니다.\n");
      out.write("10. “전자자금이체”라 함은 지급인과 수취인 사이에 자금을 지급할 목적으로 회사에 개설된 계좌에서 다른 계좌로 전자적 장치에 의하여 다음 각 목의 어느 하나에 해당하는 방법으로 자금을 이체하는 것을 말합니다.\n");
      out.write("가. 회사에 대한 지급인의 지급지시\n");
      out.write("나. 회사에 대한 수취인의 추심지시(이하 “추심이체”라 한다)\n");
      out.write("11. “정보시스템”이라 함은 전자금융업무를 포함하여 정보기술부문에 사용되는 하드웨어(hardware)와 소프트웨어(software)를 말하며 관련장비를 포함합니다.\n");
      out.write("12. “영업일”이라 함은 회사가 영업점에서 정상적인 영업을 하는 날을 말합니다.\n");
      out.write("13. “개별약관”이라 함은 이 약관과 함께 전자금융거래에 적용되는 약관으로서 회사가 별도로 작성한 약관을 말합니다.\n");
      out.write("[2] 이 약관에서 별도로 정하지 아니한 용어의 정의는 전자금융거래법 및 전자금융 거래법 시행령, 전자금융감독규정 및 전자금융감독규정 시행세칙에서 정하는 바에 따릅니다.\n");
      out.write("제3조 (적용범위)\n");
      out.write("이 약관은 다른 법률에 특별한 규정이 있는 경우를 제외하고 모든 전자금융거래에 적용합니다.\n");
      out.write("\n");
      out.write("제4조 (전자금융거래계약의 체결 및 해지)\n");
      out.write("[1] 전자금융거래를 이용하고자 하는 이용자는 개별약관에서 정하는 방법에 따라 회사와 전자금융거래계약을 체결하여야 합니다. 다만, 다음 각 호의 어느 하나에 해당하는 경우에는 그러하지 아니할 수 있습니다.\n");
      out.write("1. 단순조회(보험계약사항, 간접투자상품계좌 조회 등)\n");
      out.write("2. 단순히 이용수수료를 납부하고 처리하는 거래\n");
      out.write("3. 현금자동지급기, 현금자동입,출금기에 의한 거래\n");
      out.write("4. 기타 회사가 정하는 거래\n");
      out.write("[2] 회사는 제1항의 규정에 의한 전자금융거래계약을 체결함에 있어 이용자에게 약관을 명시하여야 하며, 이용자의 요청이 있는 경우 다음 각 호의 어느 하나에 해당하는 방법으로 이용자에게 약관을 교부하여야 합니다.\n");
      out.write("1. 직접교부\n");
      out.write("2. 전자문서의 전송(전자우편을 이용한 전송을 포함한다)\n");
      out.write("3. 모사전송\n");
      out.write("4. 우편\n");
      out.write("[3] 회사는 제1항의 규정에 의한 전자금융거래계약을 체결함에 있어 이용자가 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나에 해당하는 방법으로 이용자에게 약관의 중요내용을 설명하여야 합니다.\n");
      out.write("1. 약관의 중요내용을 이용자에게 직접 설명\n");
      out.write("2. 약관의 중요내용에 대한 설명을 전자적 장치를 통하여 이용자가 알기 쉽게 표시하고 이용자로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통하여 수령\n");
      out.write("[4] 전자금융거래에 관한 계약을 해지하고자 할 때에는 이용자 본인이 전자금융거래에 관한 개별약관에 정한 바에 따라 서면 또는 해당 전자적 장치에 의하여 회사에 해지신청을 하여야 합니다.\n");
      out.write("제5조 (전자금융거래의 성립)\n");
      out.write("[1] 회사와 이용자간 전자금융거래는 회사가 이용자의 전자금융거래요청을 접수하고 그 내용이 회사가 정하는 정보시스템에 의해 처리되어 저장되는 때에 성립합니다.\n");
      out.write("[2] 회사는 제1항의 전자금융거래요청에 대한 접수사실과 그 처리결과를 이용자에게 즉시 알려야 합니다.\n");
      out.write("제6조 (전자지급거래의 효력발생시기 등)\n");
      out.write("[1] 전자지급수단을 이용하여 자금을 지급하는 경우 그 지급의 효력은 다음 각 호에서 정한 때에 발생합니다.\n");
      out.write("1. 전자자금이체의 경우 : 거래지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관 계좌의 원장에 입금기록이 끝난 때\n");
      out.write("2. 전자적 장치로부터 직접 현금을 출금하는 경우 : 수취인이 현금을 수령한 때\n");
      out.write("3. 선불전자지급수단 및 전자화폐로 지급하는 경우 : 거래지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달한 때\n");
      out.write("4. 그 밖의 전자지급수단으로 지급하는 경우 : 거래지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융기관의 전자적 장치에 입력이 끝난 때\n");
      out.write("[2] 이용자는 제1항 각 호의 규정에 따라 지급의 효력이 발생하기 전까지 거래지시를 철회할 수 있습니다.\n");
      out.write("[3] 제2항의 규정에도 불구하고 회사는 대량으로 처리하는 거래 또는 예약에 따른 거래 등의 경우에는 개별약관에서 정한 바에 따라 거래지시의 철회시기를 달리 정할 수 있습니다.\n");
      out.write("[4] 제2항 및 제3항의 규정에 의한 거래지시의 철회방법과 절차는 개별약관에서 정하는 바에 따릅니다.\n");
      out.write("제7조 (접근매체의 발급 및 등록)\n");
      out.write("[1] 회사가 접근매체를 발급할 때에는 이용자의 신청이 있는 경우에 한하여 본인임을 확인한 후에 발급합니다. 다만, 다음 각 호의 어느 하나에 해당하는 경우에는 이용자의 신청이나 본인의 확인이 없는 때에도 발급할 수 있습니다.\n");
      out.write("1. 갱신 또는 대체발급 예정일전 6개월 이내에 사용된 적이 없는 접근매체의 경우에는 그 이용자로부터 갱신 또는 대체 발급에 대하여 서면\n");
      out.write("(「전자서명법」 제2조제2호의 규정에 따른 전자서명이 있는 전자문서를 포함한다)으로 동의를 얻은 경우\n");
      out.write("2. 갱신 또는 대체발급 예정일전 6개월 이내에 사용된 적이 있는 접근매체의 경우에는 그 예정일부터 1개월 이전에 이용자에게 발급 예정사실을 알린 후 20일 이내에 이용자로부터 이의제기가 없는 경우\n");
      out.write("[2] 이용자는 회사와 전자금융거래를 개시하기 전에 접근매체를 전자적 장치를 통하여 직접 등록할 경우에는 회사가 정한 기한내에 등록하여야 합니다.\n");
      out.write("제8조 (접근매체의 관리)\n");
      out.write("이용자는 전자금융거래에 필요한 접근매체를 제3자에게 대여, 위탁 또는 양도하지 못합니다.\n");
      out.write("\n");
      out.write("이용자는 접근매체를 제3자에게 누설해서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.\n");
      out.write("\n");
      out.write("제9조 (회사가 정한 인증방법의 사용)\n");
      out.write("[1] 이용자는 이 약관의 적용대상인 전자금융거래를 이용할 경우 접근매체로서 전자금융거래의 종류, 성격, 위험수준 등을 고려하여 회사가 정한 인증방법을 사용하여야 합니다. 다만, 회사가 지정한 거래중 다음 각 호의 경우에는 그러하지 아니할 수 있습니다.\n");
      out.write("1. 본인 계약사항 및 거래내역에 대한 조회업무\n");
      out.write("2. ARS(자동응답서비스) 등과 같이 인증서의 설치운용이 불가능한 전자적 장치를 이용한 전자금융거래의 경우\n");
      out.write("제10조 (이용시간)\n");
      out.write("[1] 이용자는 회사가 정한 시간 이내에서 전자금융거래를 이용할 수 있습니다.\n");
      out.write("[2] 이용시간은 회사의 사정에 따라 달라질 수 있으며, 이용시간을 변경하고자 할 경우 회사는 3영업일전 본점, 영업점 또는 게시 가능하거나 기타 이용자가 접근하기 용이한 전자적 장치를 통하여 게시합니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 불가피한 경우에는 예외로 합니다.\n");
      out.write("제11조 (수수료)\n");
      out.write("[1] 회사는 전자금융거래와 관련된 각종 수수료를 이용자로부터 징수할 수 있습니다.\n");
      out.write("[2] 회사는 제1항의 규정에 의한 수수료의 징수기준을 영업점 또는 전자적 장치에 비치 또는 게시하며, 이를 변경하고자 하는 경우 영업점 또는 전자적 장치에 변경 예정일 1개월 전부터 1개월 이상 비치 또는 게시합니다.\n");
      out.write("제12조 (이체 한도)\n");
      out.write("이용자는 회사가 정한 방법과 기준에 따라 계좌이체 및 계좌송금에 대한 이체 최고한도를 설정할 수 있습니다.\n");
      out.write("\n");
      out.write("제13조 (거래지시의 처리기준)\n");
      out.write("[1] 회사는 이용자의 거래지시에 포함된 증권번호, 비밀번호, 이용자번호 등의 접근매체 정보를 신고된 것과 대조하여 그 일치여부를 확인한 후에 거래지시를 처리합니다.\n");
      out.write("[2] 이용자의 거래지시와 관련하여 회사가 수신한 전자문서는 각 문서마다 독립된 것으로 봅니다.\n");
      out.write("[3] 제2항의 규정에도 불구하고 거래지시 전자문서가 회사가 정한 시간내에 동일한 내용으로 반복 수신된 경우 회사는 전화 또는 기타 이용자에게 즉시 통지할 수 있는 전자적 장치 등을 통하여 이용자의 진정한 거래지시 의사를 확인하는 절차를 거친 후 나머지 전자문서를 임의로 폐기할 수 있습니다.\n");
      out.write("제14조 (전자금융거래의 제한)\n");
      out.write("[1] 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 해당 전자금융거래 전부를 제한할 수 있습니다.\n");
      out.write("1. 회사가 정한 접근매체 유효기간이 만료되었거나 취소되었을 경우\n");
      out.write("2. 접근매체 분실,도난 통지를 접수한 경우\n");
      out.write("3. 이용자가 지정한 은행계좌가 거래정지되거나 이용자가 회사에 알리지 않고 은행계좌를 임의변경하는 등의 사유로 보험료 수납이나 대출금,보험금 등의 지급이 불가능한 경우\n");
      out.write("[2] 회사는 제1항에 의해 전자금융거래를 제한하는 경우에는 이용자의 거래지시가 있을 때 해당 전자적 장치을 통하여 그 사유를 알려야 합니다.\n");
      out.write("[3] 이용자는 제2항의 경우에 제7조에 의한 접급매체의 발급 및 등록 절차를 거쳐 전자금융거래를 이용할 수 있습니다.\n");
      out.write("제15조 (거래내용의 확인)\n");
      out.write("[1] 회사는 전자금융거래의 처리결과를 이용자가 전자적 장치를 통하여 확인할 수 있도록 합니다.\n");
      out.write("[2] 회사는 이용자가 거래내용을 서면(전자문서를 제외한다. 이하 같다)으로 제공할 것을 요청하는 경우에는, 그 요청을 받은 날부터 2주 이내에 거래내용에 관한 서면을 교부하여야 합니다.\n");
      out.write("[3] 제1항의 규정에도 불구하고 이용자가 요청하는 거래내용을 해당 전자적 장치로도 즉시 확인을 해주는 것이 사실상 곤란할 경우 회사는 해당 거래내용을 서면(전자문서를 제외한다) 형태로 출력하여 이용자에게 교부하여야 합니다.\n");
      out.write("[4] 이용자는 거래지시와 제1항에 의한 처리결과가 일치하는지 여부를 확인하여야 합니다.\n");
      out.write("[5] 이용자가 거래내용의 서면 제공 요청 시에는 우편, 이메일 및 전화로 요청할 수 있으며, 회사는 2주 이내에 거래내용에 관한 서면을 교부해야 합니다.\n");
      out.write("주소: 경기도 요생로123 요생소하우스 1층\n");
      out.write("이메일: yosangso@yosangso.kr\n");
      out.write("전화: 02-1234-2223\n");
      out.write("제16조 (오류의 정정)\n");
      out.write("[1] 이용자는 전자금융거래에 오류가 있음을 안 때에는 즉시 회사에 정정을 요구할 수 있습니다.\n");
      out.write("[2] 회사는 제1항의 규정에 따른 오류의 정정 요구를 받은 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날부터 2주 이내에 그 처리결과를 이용자에게 알려야 합니다.\n");
      out.write("[3] 회사는 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리한 후 오류가 있음을 안 날부터 2주 이내에 이용자에게 그 결과를 알려야 합니다.\n");
      out.write("제17조 (사고 및 장애시의 처리)\n");
      out.write("[1] 이용자는 전자금융거래에 관한 접근매체가 도난, 분실, 도용, 위조 또는 변조된 사실을 알았거나 기타 거래절차상 비밀을 요하는 사항이 누설되었음을 알았을 때에는 지체없이 이를 회사에 알려야 합니다.\n");
      out.write("[2] 제1항의 통지는 회사가 이를 접수한 즉시 그 효력이 발생합니다.\n");
      out.write("[3] 이용자가 제1항의 통지를 철회할 경우에는 이용자 본인이 회사에 서면으로 신청하여야 합니다.\n");
      out.write("[4] 회사는 천재지변, 정전, 화재, 건물훼손, 전산장애 등의 사유로 이용자의 거래지시를 처리할 수 없거나 처리가 지연될 경우 동 사실과 사유 등을 이용자에게 지체없이 통보하며, 정상적인 전자금융거래가 이루어질 수 있도록 신속하게 조치합니다.\n");
      out.write("[5] 회사는 이용자의 요청이 있을 때에는 사고 또는 장애의 사유를 지체 없이 조사하여 그 결과를 이용자에게 알려야 합니다.\n");
      out.write("제18조 (계약내용 변경)\n");
      out.write("[1] 이용자는 전자적 장치를 이용하여 회사가 정한 방법과 기준에 따라 개별금융상품의 계약내용(이하 “금융계약내용” 이라 한다) 변경을 신청할 수 있습니다.\n");
      out.write("[2] 회사는 제1항에 의한 금융계약내용 변경신청을 접수한 경우에는 이용자가 변경내용을 다시 확인할 수 있도록 하여야 합니다.\n");
      out.write("[3] 회사는 금융계약내용이 변경된 경우 이용자에게 그 사실을 전자적 장치를 통해 즉시 알려야 합니다.\n");
      out.write("제19조 (신고사항의 변경)\n");
      out.write("[1] 이용자는 주소ㆍ전화번호ㆍ비밀번호ㆍ전자우편주소ㆍ은행계좌 등 회사에 신고한 사항을 변경하고자 할 경우에는 전자적 장치나 회사가 정하는 기타의 방법에 의하여 변경신청을 하여야 합니다.\n");
      out.write("[2] 제1항에 의한 신고사항의 변경은 회사가 신청을 접수한 즉시 효력이 발생합니다.\n");
      out.write("제20조 (통지의 방법)\n");
      out.write("[1] 회사는 제16조, 제17조 제4항 및 제5항에 의한 통지를 하는 경우에는 이용자가 신고한 연락처로 전화, 서면 또는 기타 전자우편주소로 알려야 합니다.\n");
      out.write("[2] 회사가 서면으로 통지하였을 경우에는 천재지변 등 불가항력적인 경우 이외에는 보통의 우송기간이 지났을 때 도달한 것으로 추정합니다.\n");
      out.write("[3] 이용자가 제19조에 의한 통지를 하지 아니하여 회사가 발송한 서면통지가 이용자에게 연착하거나 도달하지 아니한 때에는 보통의 우송기간이 경과한 때에 도달한 것으로 봅니다.\n");
      out.write("제21조 (통화내용의 녹음)\n");
      out.write("회사는 거래의 정확성을 기하기 위하여 전화통화 내용을 녹음할 수 있다. 다만 녹음된 내용은 해당 거래의 분쟁이 발생할 경우의 증거자료로만 사용할 수 있으며, 이 경우 이용자는 회사에 녹음된 내용의 확인을 요구할 수 있습니다.\n");
      out.write("\n");
      out.write("제22조 (거래기록의 보존 및 자료 제공 등)\n");
      out.write("[1] 회사는 전자금융거래의 내용을 추적검색하거나 그 내용에 오류가 발생할 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 전자금융거래의 성립 시점으로부터 5년의 범위 안에서 보존하여야 합니다.\n");
      out.write("[2] 제1항의 규정에 따라 회사가 보존하여야 하는 기록의 종류, 보존방법 및 보존기간은 전자금융거래법시행령 제12조를 준용합니다.\n");
      out.write("[3] 회사는 이용자의 요청이 있을 경우 「금융실명거래 및 비밀보장에 관한 법률」 등 관계 법률에 저촉되지 않는 범위 내에서 회사가 보존관리하고 있는 전자금융거래와 관련된 기록 및 자료를 당해 이용자에게 제공하여야 합니다.\n");
      out.write("제23조 (손실부담 및 면책)\n");
      out.write("[1] 회사는 접근매체의 위조나 변조로 발생한 사고, 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고, 전자금융거래를 위한 전자적 장치 또는 ‘정보통신망 이용촉진 및 정보보호에 등에 관한 법률’ 제2조 제1항 제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고로 인하여 이용자에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 집니다.\n");
      out.write("[2] 제1항의 규정에도 불구하고 회사는 다음 각호에 해당하는 경우에는 이용자에게 손해가 생기더라도 책임의 전부 또는 일부를 지지 아니합니다.\n");
      out.write("1. 이용자가 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공한 경우\n");
      out.write("2. 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 이용자가 자신의 접근매체를 누설 또는 노출하거나 방치한 경우\n");
      out.write("3. 법인(「중소기업기본법」제2조제2항에 의한 소기업을 제외한다)인 이용자에게 손해가 발생한 경우로 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우\n");
      out.write("[3] 이용자로부터 접근매체의 분실이나 도난의 통지를 받은 경우에는 회사는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 이용자에게 발생한 손해를 보상합니다.\n");
      out.write("제24조 (이용자정보에 대한 비밀보장)\n");
      out.write("[1] 회사는 관계법령에서 정한 경우를 제외하고 전자금융거래를 수행함에 있어서 알게 된 정보를 이용자 본인의 동의없이는 타인에게 제공할 수 없습니다.\n");
      out.write("[2] 회사는 이용자의 개인정보가 도난, 분실, 변조 및 유출되지 않도록 전자적 장치에 대한 보안관리에 주의를 기울여야 하며, 회사의 관리소홀로 인한 이용자 정보의 도난, 분실, 변조 및 유출시에는 회사가 책임을 집니다.\n");
      out.write("제25조 (약관의 명시 및 변경 등)\n");
      out.write("[1] 회사가 이 약관을 변경하고자 할 때에는 변경사유, 변경내용 및 적용일자 등을 명시하여 변경일 기준 1개월전에 게시 가능한 전자적 장치에 게시하고 이용자에게 통지하여야 합니다. 다만, 법령의 개정이나 제도의 개선 등으로 인하여 긴급히 이 약관을 변경할 경우에는 즉시 이를 게시하고 통지합니다.\n");
      out.write("[2] 이용자가 이의를 제기할 경우 회사는 이용자에게 적절한 방법으로 약관 변경 내용을 통지하였음을 확인해 주어야 합니다.\n");
      out.write("[3] 회사는 법령의 개정으로 인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 전자적 장치에 최소 1개월 이상 게시하고 이용자에게 통지하여야 합니다.\n");
      out.write("[4] 이용자는 제1항 및 제3항에 따른 약관의 변경내용이 게시되거나 통지된 후부터 변경약관 시행일 전영업일까지 전자적 장치나 기타 방법에 의한 통지로 전자금융거래계약을 해지할 수 있으며, 이 기간내에 이용자의 서면에 의한 이의가 회사에 도달하지 않으면 이용자가 이를 승인한 것으로 봅니다.\n");
      out.write("제26조 (약관적용의 우선순위)\n");
      out.write("[1] 회사와 이용자 사이에 개별적으로 합의한 사항이 이 약관에서 정한 사항과 다를 때에는 그 합의사항을 이 약관에 우선하여 적용합니다.\n");
      out.write("[2] 전자금융거래에 관하여 이 약관에서 정하지 않은 사항에 대하여는 당해 개별약관 등을 적용합니다.\n");
      out.write("제27조 (분쟁조정)\n");
      out.write("[1] 이용자는 전자금융거래의 처리에 관하여 이의가 있을 때에는 회사의 분쟁처리기구에 그 해결을 요구하거나 금융감독원 금융분쟁조정위원회, 한국소비자보호원 소비자분쟁조정위원회 등을 통하여 분쟁조정을 신청할 수 있습니다.\n");
      out.write("[2]이용자가 회사의 본점이나 영업점 또는 회사의 분쟁처리기구에 이의를 제기한 경우 회사는 15일 이내에 이에 대한 조사 또는 처리결과를 이용자에게 알려야 합니다.\n");
      out.write("[3] 회사는 손해배상 등 분쟁처리를 위한 분쟁처리책임자 및 담당자를 지정하고, 그 연락처를 관련 인터넷 홈페이지 등을 통하여 이용자가 쉽게 알 수 있도록 하여야 합니다.\n");
      out.write("제28조 (준거법)\n");
      out.write("[1] 회사와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.\n");
      out.write("[2]이 약관에서 정하지 아니한 사항은 대한민국법령을 적용합니다.\n");
      out.write("부 칙\n");
      out.write("제1조 (시행일)\n");
      out.write("이 약관은 2007년 6월 4일부터 시행한다.\n");
      out.write("\n");
      out.write("제2조(경과조항)\n");
      out.write("이 약관은 약관시행일 이후의 전자금융거래에 적용된다.\n");
      out.write("\n");
      out.write("전자금융거래이용약관 시행일자: 2007.06.04\n");
      out.write("\n");
      out.write("전자금융거래이용약관 최종변경일자: 2020.07.06\n");
      out.write("                    </pre>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("\n");
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
