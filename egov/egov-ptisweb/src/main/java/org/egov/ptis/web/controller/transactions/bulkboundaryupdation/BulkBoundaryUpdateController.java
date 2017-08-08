/*
 * eGov suite of products aim to improve the internal efficiency,transparency,
 *    accountability and the service delivery of the government  organizations.
 *
 *     Copyright (C) <2015>  eGovernments Foundation
 *
 *     The updated version of eGov suite of products as by eGovernments Foundation
 *     is available at http://www.egovernments.org
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program. If not, see http://www.gnu.org/licenses/ or
 *     http://www.gnu.org/licenses/gpl.html .
 *
 *     In addition to the terms of the GPL license to be adhered to in using this
 *     program, the following additional terms are to be complied with:
 *
 *         1) All versions of this program, verbatim or modified must carry this
 *            Legal Notice.
 *
 *         2) Any misrepresentation of the origin of the material is prohibited. It
 *            is required that all modified versions of this material be marked in
 *            reasonable ways as different from the original version.
 *
 *         3) This license does not grant any rights to any user of the program
 *            with regards to rights under trademark law for use of the trade names
 *            or trademarks of eGovernments Foundation.
 *
 *   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */

package org.egov.ptis.web.controller.transactions.bulkboundaryupdation;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.egov.infra.admin.master.service.BoundaryService;
import org.egov.infra.exception.ApplicationRuntimeException;
import org.egov.ptis.bean.BulkBoundaryUpdate;
import org.egov.ptis.domain.entity.property.BasicProperty;
import org.egov.ptis.domain.entity.property.BasicPropertyImpl;
import org.egov.ptis.domain.service.bulkboundaryupdatation.BulkBoundaryService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/bulkboundaryupdate")
public class BulkBoundaryUpdateController {

	@Autowired
	private BoundaryService boundaryService;

	@Autowired
	private BulkBoundaryService bulkBoundaryService;

	@RequestMapping(value = "/update", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String update(@RequestBody BulkBoundaryInfo mat, BindingResult errors, final Model model) {
		List<BasicProperty> basicProperties = new ArrayList<>();
		BasicProperty basicProperty = new BasicPropertyImpl();
		try {
			final JSONObject obj = new JSONObject(mat.getJson());
			final JSONArray jsonArray = obj.getJSONArray("info");

			for (int i = 0; i < jsonArray.length(); ++i) {
				final JSONObject jsonobj = jsonArray.getJSONObject(i);
				basicProperty = bulkBoundaryService.getBasicPropertyByPropertyID(jsonobj.getString("propertyId"));
				basicProperty.getPropertyID()
						.setLocality(boundaryService.getBoundaryById(new Long(jsonobj.getString("locality"))));
				basicProperty.getPropertyID()
						.setArea(boundaryService.getBoundaryById(new Long(jsonobj.getString("block"))));
				basicProperty.getPropertyID()
						.setWard(boundaryService.getBoundaryById(new Long(jsonobj.getString("ward"))));
				basicProperty.getPropertyID().setElectionBoundary(
						boundaryService.getBoundaryById(new Long(jsonobj.getString("electionWard"))));
				basicProperty.setBoundary(basicProperty.getPropertyID().getElectionBoundary());
				basicProperties.add(basicProperty);
			}
			if (bulkBoundaryService.updateBasicPropertyByBoundary(basicProperties)) {
				return "Success";
			}

		} catch (Exception e) {
			throw new ApplicationRuntimeException("Error occured : " + e.getMessage(), e);
		}
		return "UnSccessfully";
	}
}