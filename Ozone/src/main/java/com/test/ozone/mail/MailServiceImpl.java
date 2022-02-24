package com.test.ozone.mail;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService{

	@SuppressWarnings("null")
	@Override
	public ArrayList<MailDTO> list(){
		
		ArrayList<MailDTO> list = new ArrayList<MailDTO>();
		
		MailDTO dto = new MailDTO();
		
		dto.setId("황현우");
		dto.setSubject("업무 관련 요청 파일 드립니다.");
		dto.setRegdate("09:22");
		list.add(dto);
		
		dto.setId("주하성");
		dto.setSubject("발표 관련 자료 보내드립니다");
		list.add(dto);
		
		dto.setId("이유미");
		dto.setSubject("안녕하세요 이유미입니다");
		list.add(dto);
		
		dto.setId("송준영");
		dto.setSubject("인재 추천 리스트 드립니다");
		list.add(dto);

		dto.setId("이찬우");
		dto.setSubject("점심 햄버거 어떠세요");
		dto.setRegdate("22.02.24 11:24");
		list.add(dto);
		
		dto.setId("잘레시안");
		dto.setSubject("우리는 모두 인재입니다");
		list.add(dto);
		
		dto.setId("Kakao");
		dto.setSubject("카카오 유료서비스 이용약관 변경 안내");
		list.add(dto);
		
		dto.setId("서룡");
		dto.setSubject("입과 몸을 이롭게 하는 진정한 웰빙 중화요리 서룡");
		list.add(dto);
		
		dto.setId("이혜인");
		dto.setSubject("모두 수고 많으셨습니다^^^^^");
		list.add(dto);
		
		dto.setId("국세청");
		dto.setSubject("국세청 뉴스레터 941호");
		list.add(dto);
		
		return list;
	}
}
