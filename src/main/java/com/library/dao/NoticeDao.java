package com.library.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.library.bean.Notice;

@Repository
public class NoticeDao {

	private final static String NAMESPACE = "com.library.dao.NoticeDao.";
    @Resource
    private SqlSessionTemplate sqlSessionTemplate;
    
    public int matchNotice(final String searchWord) {
        String search = "%" + searchWord + "%";
        return sqlSessionTemplate.selectOne(NAMESPACE + "matchNotice", search);
    }

    public ArrayList<Notice> queryNotice(final String searchWord) {
        String search = "%" + searchWord + "%";
        List<Notice> result = sqlSessionTemplate.selectList(NAMESPACE + "queryNotice", search);
        return (ArrayList<Notice>) result;
    }
    

    /*public ArrayList<Notice> getAllNotices() {
        List<Notice> result = sqlSessionTemplate.selectList(NAMESPACE + "getAllNotices");
        return (ArrayList<Notice>) result;
    }*/

    public int addNotice(final Notice notice) {
        return sqlSessionTemplate.insert(NAMESPACE + "addNotice", notice);
    }

    public Notice getNotice(final long noticeId) {
        return sqlSessionTemplate.selectOne(NAMESPACE + "getNotice", noticeId);
    }
    
    public int deleteNotice(final long noticeId) {
        return sqlSessionTemplate.delete(NAMESPACE + "deleteNotice", noticeId);
    }
    //from lenddao
    public ArrayList<Notice> noticeList() {
        List<Notice> result = sqlSessionTemplate.selectList(NAMESPACE + "noticeList");
        return (ArrayList<Notice>) result;
    }

    public ArrayList<Notice> myNoticeList(final long N_id) {
        List<Notice> result = sqlSessionTemplate.selectList(NAMESPACE + "myNoticeList", N_id);
        return (ArrayList<Notice>) result;
    }

}
