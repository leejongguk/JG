package org.zerock.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = { 2491044L, 2491045L, 2491046L, 2491047L, 2491048L, 2491049L };

	@Setter
	@Autowired
	private ReplyMapper mapper;

//	@Test //등록
//	public void testCreate() {
//		IntStream.rangeClosed(1, 10).forEach( i -> {
//
//			ReplyVO vo = new ReplyVO();
//
//			// 게시물 번호
//			vo.setBno(bnoArr[i % 5]);
//			vo.setReply("댓글 테스트 " + i);
//			vo.setReplyer("replyer" + i);
//
//			mapper.insert(vo);
//		});
//	}

//	@Test // MapperTests 
//	public void testMapper() {
//		log.info(mapper);
//	}
	
//	@Test   // 조회
//	public void testRead() {
//		
//		Long targetRno = 5L;
//		ReplyVO vo = mapper.read(targetRno);
//		
//		log.info(vo);
//	}
	
	
//	@Test // 삭제
//	public void testDelete() {
//		Long targetRno = 1L;
//		mapper.delete(targetRno);
//		
//	}
	
//	@Test // 수정
//	public void testUpdate() {
//		
//		Long targetRno =10L;
//		
//		ReplyVO vo = mapper.read(targetRno);
//		
//		vo.setReply("Update Reply ");
//		
//		int count = mapper.update(vo);
//		
//		log.info("UPDATE COUNT: " + count);
//	}
	
	
//	@Test // 댓글 게시물 번호 확인
//	public void testList() {
//		Criteria cri = new Criteria();
//		
//		//15L
//		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
//		
//		replies.forEach(reply -> log.info(reply));
//	}
	
	
	@Test
	public void testList2() {
		Criteria cri = new Criteria(2,10);
		
		//2491044
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 2491044L);
		
		replies.forEach(reply -> log.info(reply));
	}
}
