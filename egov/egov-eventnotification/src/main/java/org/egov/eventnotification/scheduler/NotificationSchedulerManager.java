/*
 *    eGov  SmartCity eGovernance suite aims to improve the internal efficiency,transparency,
 *    accountability and the service delivery of the government  organizations.
 *
 *     Copyright (C) 2017  eGovernments Foundation
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
 *            Further, all user interfaces, including but not limited to citizen facing interfaces,
 *            Urban Local Bodies interfaces, dashboards, mobile applications, of the program and any
 *            derived works should carry eGovernments Foundation logo on the top right corner.
 *
 *            For the logo, please refer http://egovernments.org/html/logo/egov_logo.png.
 *            For any further queries on attribution, including queries on brand guidelines,
 *            please contact contact@egovernments.org
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
 *
 */
package org.egov.eventnotification.scheduler;

import static org.egov.eventnotification.constants.Constants.DAILY_JOB_TYPE;
import static org.egov.eventnotification.constants.Constants.DEFAULTERS_LIST;
import static org.egov.eventnotification.constants.Constants.JOB;
import static org.egov.eventnotification.constants.Constants.JOB_TYPE;
import static org.egov.eventnotification.constants.Constants.MONTHLY_JOB_TYPE;
import static org.egov.eventnotification.constants.Constants.NOTIFICATION_JOB;
import static org.egov.eventnotification.constants.Constants.ONETIME_JOB_TYPE;
import static org.egov.eventnotification.constants.Constants.SCHEDULEID;
import static org.egov.eventnotification.constants.Constants.SCHEDULE_DAY;
import static org.egov.eventnotification.constants.Constants.SCHEDULE_MONTH;
import static org.egov.eventnotification.constants.Constants.SCHEDULE_YEAR;
import static org.egov.eventnotification.constants.Constants.TRIGGER;
import static org.egov.eventnotification.constants.Constants.YEARLY_JOB_TYPE;

import java.util.List;

import org.apache.log4j.Logger;
import org.egov.eventnotification.entity.Schedule;
import org.egov.eventnotification.utils.SchedulerUtil;
import org.egov.infra.admin.master.entity.User;
import org.egov.ptis.client.util.PropertyTaxUtil;
import org.egov.ptis.domain.entity.property.DefaultersInfo;
import org.egov.ptis.domain.service.report.ReportService;
import org.hibernate.Query;
import org.joda.time.DateTime;
import org.quartz.JobDataMap;
import org.quartz.SchedulerException;
import org.quartz.TriggerKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author somvit
 *
 */

@Service
public class NotificationSchedulerManager {

    private static final Logger LOGGER = Logger.getLogger(NotificationSchedulerManager.class);

    @Autowired
    private SchedulerUtil schedulerUtil;

    @Autowired
    private PropertyTaxUtil propertyTaxUtil;

    @Autowired
    private ReportService reportService;

    public void schedule(Schedule notificationschedule, User user) {
        Query query = propertyTaxUtil.prepareQueryforDefaultersReport(-1l, "1", "100000", 120000, "PRIVATE", "PT");
        List<DefaultersInfo> defaultersList = reportService.getDefaultersInformation(query, "1 Year", 10);

        schedulerUtil.setGroupName(NOTIFICATION_JOB);
        schedulerUtil.setName(JOB + notificationschedule.getId());
        schedulerUtil.setTriggerName(TRIGGER + notificationschedule.getId());
        schedulerUtil.setRepeatCount(0);

        DateTime calendar = new DateTime(notificationschedule.getStartDate());
        int hours = calendar.getHourOfDay();
        int minutes = calendar.getMinuteOfHour();

        JobDataMap jobDataMap = new JobDataMap();
        jobDataMap.put(SCHEDULEID, notificationschedule.getId().toString());
        jobDataMap.put("userid", user.getId().toString());
        jobDataMap.put("username", user.getName());
        try {
            schedulerUtil.getScheduler().getContext().put(DEFAULTERS_LIST, defaultersList);
        } catch (SchedulerException e1) {
            LOGGER.error(e1.getMessage());
        }

        // configure the scheduler time
        switch (notificationschedule.getScheduleRepeat().getName().toLowerCase()) {
        case SCHEDULE_DAY:
            String dailyCronExpression = "0 " + minutes + " " + hours + " ? * * *";

            try {
                jobDataMap.put(JOB_TYPE, DAILY_JOB_TYPE);
                schedulerUtil.addSchedule(NotificationSchedulerJob.class, dailyCronExpression, jobDataMap);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }

            break;
        case SCHEDULE_MONTH:
            String monthlyCronExpression = "0 " + minutes + " " + hours + " " + calendar.getDayOfMonth() + " * ? *";

            try {
                jobDataMap.put(JOB_TYPE, MONTHLY_JOB_TYPE);
                schedulerUtil.addSchedule(NotificationSchedulerJob.class, monthlyCronExpression, jobDataMap);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }

            break;
        case SCHEDULE_YEAR:
            String yearlyCronExpression = "0 " + minutes + " " + hours + " "
                    + calendar.getDayOfMonth() + " " + calendar.getMonthOfYear() + " ? *";

            try {
                jobDataMap.put(JOB_TYPE, YEARLY_JOB_TYPE);
                schedulerUtil.addSchedule(NotificationSchedulerJob.class, yearlyCronExpression, jobDataMap);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        default:
            calendar = calendar.withHourOfDay(hours);
            calendar = calendar.withMinuteOfHour(minutes);
            try {
                jobDataMap.put(JOB_TYPE, ONETIME_JOB_TYPE);
                schedulerUtil.addSchedule(calendar.toDate(), NotificationSchedulerJob.class, jobDataMap);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        }
    }

    public void removeJob(Schedule notificationschedule) {
        try {
            schedulerUtil.setGroupName(NOTIFICATION_JOB);
            schedulerUtil.setName(JOB + notificationschedule.getId());
            schedulerUtil.setTriggerName(TRIGGER + notificationschedule.getId());
            schedulerUtil.removeSchedule();
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

    public void updateJob(Schedule newSchedule, User user) {
        schedulerUtil.setGroupName(NOTIFICATION_JOB);
        schedulerUtil.setName(JOB + newSchedule.getId());
        schedulerUtil.setTriggerName(TRIGGER + newSchedule.getId());
        schedulerUtil.setRepeatCount(0);

        String scheduleTrigger = TRIGGER + newSchedule.getId();

        DateTime newTime = new DateTime(newSchedule.getStartDate());
        int newhours = newTime.getHourOfDay();
        int newminutes = newTime.getMinuteOfHour();

        JobDataMap jobDataMap = new JobDataMap();
        jobDataMap.put(SCHEDULEID, newSchedule.getId().toString());
        jobDataMap.put("userid", user.getId().toString());
        jobDataMap.put("username", user.getName());

        Query query = propertyTaxUtil.prepareQueryforDefaultersReport(-1l, "1", "100000", 10000, "PRIVATE", "PT");
        List<DefaultersInfo> defaultersList = reportService.getDefaultersInformation(query, "1 Year", 10);
        try {
            schedulerUtil.getScheduler().getContext().put(DEFAULTERS_LIST, defaultersList);
        } catch (SchedulerException e1) {
            LOGGER.error(e1.getMessage());
        }
        // configure the scheduler time
        switch (newSchedule.getScheduleRepeat().getName().toLowerCase()) {
        case SCHEDULE_DAY:
            String dailyCronExpression = "0 " + newminutes + " " + newhours + " ? * * *";

            try {
                jobDataMap.put(JOB_TYPE, DAILY_JOB_TYPE);
                TriggerKey triggerKey = new TriggerKey(scheduleTrigger, NOTIFICATION_JOB);
                schedulerUtil.updateSchedule(NotificationSchedulerJob.class, dailyCronExpression, jobDataMap, triggerKey);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        case SCHEDULE_MONTH:
            String monthlyCronExpression = "0 " + newminutes + " " + newhours + " " + newTime.getDayOfMonth()
                    + " * ? *";

            try {
                jobDataMap.put(JOB_TYPE, MONTHLY_JOB_TYPE);
                TriggerKey triggerKey = new TriggerKey(scheduleTrigger, NOTIFICATION_JOB);
                schedulerUtil.updateSchedule(NotificationSchedulerJob.class, monthlyCronExpression, jobDataMap,
                        triggerKey);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        case SCHEDULE_YEAR:
            String yearlyCronExpression = "0 " + newminutes + " " + newhours + " "
                    + newTime.getDayOfMonth() + " " + newTime.getMonthOfYear() + " ? *";

            try {
                jobDataMap.put(JOB_TYPE, YEARLY_JOB_TYPE);
                TriggerKey triggerKey = new TriggerKey(scheduleTrigger, NOTIFICATION_JOB);
                schedulerUtil.updateSchedule(NotificationSchedulerJob.class, yearlyCronExpression, jobDataMap, triggerKey);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        default:
            newTime = newTime.withHourOfDay(newhours);
            newTime = newTime.withMinuteOfHour(newminutes);

            try {
                jobDataMap.put(JOB_TYPE, ONETIME_JOB_TYPE);
                TriggerKey triggerKey = new TriggerKey(scheduleTrigger, NOTIFICATION_JOB);
                schedulerUtil.updateSchedule(newTime.toDate(), NotificationSchedulerJob.class, jobDataMap, triggerKey);
            } catch (SchedulerException e) {
                LOGGER.error(e.getMessage(), e);
            }
            break;
        }
    }
}