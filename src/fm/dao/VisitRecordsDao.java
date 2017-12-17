package fm.dao;

import fm.beans.VisitRecord;

import java.util.List;

public interface VisitRecordsDao {

    void insertVisitRecord(VisitRecord visitRecord);

    List<VisitRecord> selectAllVisitRecords();

    List<VisitRecord> selectVisitRecordsByDay(String day);

    List<VisitRecord> selectVisitRecordsByIp(String ip);

    Integer selectTotalNumberOfRecords();

    Integer selectNumberOfRecordsByYear(String year);

    Integer selectNumberOfRecordsByMonth(String month);

    Integer selectNumberOfRecordsByDay(String day);

    Integer selectNumberOfRecordsByIp(String ip);

}
