package fm.services.Interfaces;

import fm.beans.VisitRecord;

import java.util.List;

public interface VisitRecordService {

    void addVisitRecord(VisitRecord visitRecord);

    List<VisitRecord> getAllVisitRecords();

    List<VisitRecord> getVisitRecordsByDay(String day);

    List<VisitRecord> getVisitRecordsByIp(String ip);

    Integer getTotalNumberOfRecords();

    Integer getNumberOfRecordsByYear(String year);

    Integer getNumberOfRecordsByMonth(String month);

    Integer getNumberOfRecordsByDay(String day);

    Integer getNumberOfRecordsByIp(String ip);
}
