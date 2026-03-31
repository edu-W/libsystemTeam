package com.library.dao;

import com.library.entity.Report;
import java.util.List;

public interface ReportDao {
   
    List<Report> getAllReports();
    
    boolean updateReportStatus(int id);
 
    boolean addReport(Report report);
   
    boolean freezeUserAccount(String account);
}