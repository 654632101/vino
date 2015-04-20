package com.king.action;

import java.io.*;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
	private String title;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String allowTypes;
	// 接受依赖注入的属性
	private String savePath;

	// 接受依赖注入的方法
	public void setSavePath(String value) {
		this.savePath = value;
	}

	private String getSavePath() throws Exception {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getTitle() {
		return (this.title);
	}

	public File getUpload() {
		return (this.upload);
	}

	public String getUploadContentType() {
		return (this.uploadContentType);
	}

	public String getUploadFileName() {
		return (this.uploadFileName);
	}

	@Override
	public String execute() throws Exception {
		Map session=ActionContext.getContext().getSession();
		String name = (String) session.get("user");
		System.out.println("登录用户名 : " + name);
		String root = ServletActionContext.getServletContext().getRealPath(
				"/upload");

		InputStream is = new FileInputStream(getUpload());

		OutputStream os = new FileOutputStream(new File(root,
				getUploadFileName()));

		System.out.println("fileFileName: " + getUploadFileName());

		// 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
		System.out.println("file: " + upload.getName());
		System.out.println("file: " + upload.getPath());

		byte[] buffer = new byte[500];
		int length = 0;

		while (-1 != (length = is.read(buffer, 0, buffer.length))) {
			os.write(buffer);
		}
		readTxtFile(root + "\\" +  getUploadFileName());
		os.close();
		is.close();

		return SUCCESS;
	}

	public static void readTxtFile(String filePath) {
		try {
			String encoding = "UTF-8";
			File file = new File(filePath);
			if (file.isFile() && file.exists()) { // 判断文件是否存在
				InputStreamReader read = new InputStreamReader(
						new FileInputStream(file), encoding);// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					System.out.println(lineTxt);
				}
				read.close();
			} else {
				System.out.println("找不到指定的文件");
			}
		} catch (Exception e) {
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}

	}

	public String filterType(String[] types) {
		String fileType = this.getUploadContentType();
		for (String type : types) {
			if (type.equals(fileType)) {
				return null;
			}
		}
		return INPUT;
	}

	public String getAllowTypes() {
		return allowTypes;
	}

	public void setAllowTypes(String allowTypes) {
		this.allowTypes = allowTypes;
	}
}