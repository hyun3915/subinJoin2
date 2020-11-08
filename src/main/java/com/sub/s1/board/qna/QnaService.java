package com.sub.s1.board.qna;

import java.io.File;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sub.s1.board.BoardDTO;
import com.sub.s1.board.BoardService;
import com.sub.s1.board.file.BoardFileDTO;
import com.sub.s1.util.FileSaver;
import com.sub.s1.util.Pager;

@Service
public class QnaService implements BoardService{
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Autowired
	private FileSaver fileSaver;
	
	public int setReply(BoardDTO boardDTO) throws Exception{
		int result = qnaDAO.setReplyUpdate(boardDTO);
		result = qnaDAO.setReply(boardDTO);
		return result;
	}
	
	public String summernote(MultipartFile file, HttpSession session) throws Exception{
		String path = session.getServletContext().getRealPath("resources/upload/qna");
		System.out.println(path);
		File dest = new File(path);
		String fileName = fileSaver.saveCopy(dest, file);
		
		return fileName;
	}
	

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		
		return qnaDAO.setInsert(boardDTO);
	}
	
	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.setDelete(boardDTO);
	}

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		pager.makeRow();
		pager.setTotalCount(qnaDAO.getCount(pager));
		pager.makePage();
		return qnaDAO.getList(pager);
	}

	@Override
	public BoardDTO getOne(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.getOne(boardDTO);
	}
	
	

}
