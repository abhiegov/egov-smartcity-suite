<%--
  ~ eGov suite of products aim to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) <2015>  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  --%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/taglibs/cdn.tld" prefix="cdn"%>
<form:form name="SearchRequestTypeOfWork" role="form" action=""
	modelAttribute="searchRequestTypeOfWork" id="SearchRequestTypeOfWork"
	class="form-horizontal form-groups-bordered">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-primary" data-collapsed="0">
				<div class="panel-heading">
					<div class="panel-title" style="text-align:center;"><spring:message code="lbl.searchtypeofwork" /></div>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<input type = "hidden" value = "${ mode }" />
						<label class="col-sm-3 control-label text-right"><spring:message code="lbl.typeofworkname" /></label>
						<div class="col-sm-3 add-margin greybox2wk">
							<form:select  path="typeOfWorkName" id="typeOfWorkName" cssClass="form-control">
					           <form:option value="" > <spring:message code="lbl.select" /></form:option>
					           <form:options items="${typeOfWork}" itemValue="name" itemLabel="name" />
					        </form:select>
					        <form:errors path="typeOfWorkName" cssClass="error" />
						</div>
						<label class="col-sm-2 control-label text-right"><spring:message code="lbl.code" /></label>
						<div class="col-sm-3 add-margin">
							<form:select  path="typeOfWorkCode" id="typeOfWorkCode" cssClass="form-control">
					           <form:option value="" > <spring:message code="lbl.select" /></form:option>
					           <form:options items="${typeOfWork}" itemValue="code" itemLabel="code" />
					        </form:select>
					        <form:errors path="typeOfWorkCode" cssClass="error" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="${mode }" id="mode" name="mode" />
	<div class="row">
		<div class="col-sm-12 text-center">
			<button type='button' class='btn btn-primary' id="btnsearch">
				<spring:message code='lbl.search' />
			</button>
			<a href='javascript:void(0)' class='btn btn-default'
				onclick='self.close()'><spring:message code='lbl.close' /></a>
		</div>
	</div>
</form:form>
<jsp:include page="typeofwork-searchresult.jsp" />
<c:choose>
	<c:when test="${mode != 'view'}">
		<script
			src="<cdn:url value='/resources/js/master/typeofwork.js?rnd=${app_release_no}'/>"></script>
	</c:when>
	<c:otherwise>
		<script
			src="<cdn:url value='/resources/js/master/searchtypeofwork.js?rnd=${app_release_no}'/>"></script>
	</c:otherwise>
</c:choose>