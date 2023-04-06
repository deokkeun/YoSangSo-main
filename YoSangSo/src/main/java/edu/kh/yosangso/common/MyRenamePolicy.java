package edu.kh.yosangso.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

//파일명 변경 정책
public class MyRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File originalFile) {

		long currentTime = System.currentTimeMillis();
		// 1970년 1월 1일 오전 9시 부터 현재 시간 까지의 경과한 ms를 반환

		SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");
		
		int ranNum = (int) (Math.random() * 100000); // 5자리 랜덤 숫자 생성
						//  0 <= 난수 <= 99999
		
		String str = "_" + String.format("%05d", ranNum);
							// user.png
							// 20220531120930_00100.png
		
		// String.format : 문자열을 지정된 패턴의 형식으로 변경하는 메소드
		// %05d : 오른쪽 정렬된 십진 정수(d) 5자리(5)형태로 변경. 빈자리는 0으로 채움(0)

		// 파일명을 변경해도 확장자를 유지하기 위하여
		// 별도로 확장자 명 가져오기
		String name = originalFile.getName();
		String ext = null;

		int dot = name.lastIndexOf(".");

		if (dot != -1) {
			// dot 포함해서 확장자 추출 (ext)
			ext = name.substring(dot);
		} else {
			// 확장자가 없는 경우
			ext = "";
		}

		String fileName = ft.format(new Date(currentTime)) + str + ext;
								// 20220531121230  +  _01234  + .png
		
		File newFile = new File(originalFile.getParent(), fileName);

		return newFile;

	}

}
