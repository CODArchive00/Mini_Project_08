<%@ page contentType="text/html; charset=EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>
<head>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript">
function needLogin() {
	var url = "/user/loginView.jsp";
	var name = "로그인 팝업";
	var option = "width = 700, height = 400"
	
	alert('로그인 후 이용해주세요');
	window.open(url, name, option);
	}
</script>

<title>상품상세조회</title>
</head>

<body bgcolor="#ffffff" text="#000000">

	<form name="detailForm" method="post">

		<table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37"></td>
				<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="93%" class="ct_ttl01">상품상세조회</td>
							<td width="20%" align="right">&nbsp;</td>
						</tr>
					</table>
				</td>
				<td width="12" height="37"><img src="/images/ct_ttl_img03.gif" width="12" height="37" /></td>
			</tr>
		</table>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 13px;">
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<c:if test="${ user.role eq 'admin' }">
			<tr>
				<td width="104" class="ct_write">상품번호
				<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="105">${product.prodNo}</td>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
			</c:if>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">상품명
				<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${product.prodName}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">상품이미지
				<img src="" width="3" height="3" align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><img src="" /></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">상품상세정보
				<img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${product.prodDetail}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">제조일자</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${product.manuDate}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">가격</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${product.price}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">등록일자</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${product.regDate}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
		</table>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
			<tr>
				<td width="53%"></td>
				<td align="right">

					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<c:if test="${ !empty param.menu }">
								<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23" /></td>
								<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
								<c:choose>
									<c:when test="${ param.menu eq 'manage' }">
										<a href="updateProduct?prodNo=${product.prodNo}">수정</a>
									</c:when>
									<c:when test="${ param.menu eq 'search' }">
										<c:choose>
											<c:when test="${ !empty user }">
												<a href="/addPurchaseView?prodNo=${product.prodNo}">구매</a>
											</c:when>
											<c:otherwise>
												<a href="javascript:needLogin()">구매</a>
											</c:otherwise>
										</c:choose>
									</c:when>
								</c:choose>
								</td>
								<td width="14" height="23">
								<img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
								<td width="30"></td>
							</c:if>
							<td width="17" height="23">
							<img src="/images/ct_btnbg01.gif" width="17" height="23" /></td>
							<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
							<c:choose>
								<c:when test="${ empty user or user.role == 'user' }">
									<a href="javascript:history.go(-1)">이전</a></td>
								</c:when>
								<c:when test="${ user.role eq 'admin' }">
									<a href="/product/listProduct?menu=manage">목록보기</a>
								</c:when>
							</c:choose>
							<td width="14" height="23">
							<img src="/images/ct_btnbg03.gif" width="14" height="23"></td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</form>

</body>
</html>