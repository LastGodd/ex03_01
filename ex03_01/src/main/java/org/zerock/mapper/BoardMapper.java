package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);

	public BoardVO read(Long bno);

	public int insert(BoardVO board);

	public int delete(Long bno);

	public int update(BoardVO board);

}
