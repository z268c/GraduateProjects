package com.library.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.bean.Book;
import com.library.bean.Lend;
import com.library.bean.Notice;
import com.library.dao.NoticeDao;

@SuppressWarnings("unused")
@Service
public class NoticeService {
	@Autowired
	private NoticeDao noticedao;

	public ArrayList<Notice>qureyNotice(String searchWord) {
		return noticedao.queryNotice(searchWord);
	}
	
	public ArrayList<Notice>getAllNotice(){
		return noticedao.noticeList();
		
	}
	
	public boolean matchNotice(String searchWord) {
        return noticedao.matchNotice(searchWord)> 0;
    }
	
	public boolean addNotice(Notice notice){
		return noticedao.addNotice(notice)>0;
	}
	
	public Notice getNotice(Long noticeId) {/*疑问：括号中的形参应该是bean中的int N_id还是dao中的Long noticeId*/
        return noticedao.getNotice(noticeId);
    }
	//编辑

	/**/
	public boolean deleteNotice(Long noticeId) {
        return noticedao.deleteNotice(noticeId)> 0;
    }
	
	public ArrayList<Notice> noticeList(){
	    return noticedao.noticeList();
	}
	public ArrayList<Notice> myLendList(long noticeId){
	    return noticedao.myNoticeList(noticeId);
	}

	

	
	
	


}
