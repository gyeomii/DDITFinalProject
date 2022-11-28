package bookred.common.command;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.common.controller.FileUploadResolver;
import bookred.common.controller.MakeFileName;
import bookred.common.dto.AttachVO;


public class MultipartFileUploadResolver extends FileUploadResolver {

	public static List<AttachVO> fileUpload(List<MultipartFile> multiFiles, String savePath) throws Exception {

		List<AttachVO> attachList = new ArrayList<AttachVO>();

		//저장 -> attachVO -> list.add
		if (multiFiles != null) {
			for (MultipartFile multi : multiFiles) {
				String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
				File target = new File(savePath, fileName);
				
				target.mkdirs();

				multi.transferTo(target);

				AttachVO attach = new AttachVO();
				attach.setUploadPath(savePath);
				attach.setFileName(fileName);
				attach.setFileType(fileName.substring(fileName.lastIndexOf('.') + 1).toUpperCase());
				attachList.add(attach);
			}
		}
		return attachList;

	}
}
