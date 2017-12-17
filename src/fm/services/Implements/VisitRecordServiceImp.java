package fm.services.Implements;

import fm.beans.VisitRecord;
import fm.dao.VisitRecordsDao;
import fm.services.Interfaces.VisitRecordService;

import java.util.List;

public class VisitRecordServiceImp implements VisitRecordService{

    private VisitRecordsDao visitRecordsDao;

    public void setVisitRecordsDao(VisitRecordsDao visitRecordsDao) {
        this.visitRecordsDao = visitRecordsDao;
    }

    @Override
    public void addVisitRecord(VisitRecord visitRecord) {
        visitRecordsDao.insertVisitRecord(visitRecord);
    }

    @Override
    public List<VisitRecord> getAllVisitRecords() {
        return visitRecordsDao.selectAllVisitRecords();
    }

    @Override
    public List<VisitRecord> getVisitRecordsByDay(String day) {
        return visitRecordsDao.selectVisitRecordsByDay(day);
    }

    @Override
    public List<VisitRecord> getVisitRecordsByIp(String ip) {
        return visitRecordsDao.selectVisitRecordsByIp(ip);
    }

    @Override
    public Integer getTotalNumberOfRecords() {
        return visitRecordsDao.selectTotalNumberOfRecords();
    }

    @Override
    public Integer getNumberOfRecordsByYear(String year) {
        return visitRecordsDao.selectNumberOfRecordsByYear(year);
    }

    @Override
    public Integer getNumberOfRecordsByMonth(String month) {
        return visitRecordsDao.selectNumberOfRecordsByMonth(month);
    }

    @Override
    public Integer getNumberOfRecordsByDay(String day) {
        return visitRecordsDao.selectNumberOfRecordsByDay(day);
    }

    @Override
    public Integer getNumberOfRecordsByIp(String ip) {
        return visitRecordsDao.selectNumberOfRecordsByIp(ip);
    }
}
