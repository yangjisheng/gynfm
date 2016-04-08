package gynfm.common.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import gynfm.common.service.model.ResultModel;

/**
 * Http响应的构造器
 * 
 * @author zym
 * 
 */
public class ResponseBuilder {

	/**
	 * 默认的字符集
	 */
	private static final String DEFAULT_CHARSET = "utf-8";

	/**
	 * 返回Json格式的结果
	 * 
	 * @param response
	 *            http响应对象
	 * @param content
	 *            响应内容
	 * @throws IOException
	 */
	public void writeJsonResponse(HttpServletResponse response, String content) throws IOException {
		response.addHeader("Content-Type", "application/json;charset=" + DEFAULT_CHARSET);
		// response.set
		response.setCharacterEncoding(DEFAULT_CHARSET);

		PrintWriter writer = response.getWriter();
		writer.write(content);
		writer.flush();
		writer.close();
	}

	/**
	 * 把对象直接转换为json输出
	 */
	public void writeJsonResponse(HttpServletResponse response, Object o) throws IOException {
		Gson gson = new Gson();
		String content = gson.toJson(o);
		writeJsonResponse(response, content);
	}

	/**
	 * 把结果集（boolean,int）转换为json
	 */
	public void writeJsonResponse(HttpServletResponse response, ResultModel result) throws Exception {
		Gson gson = new Gson();
		String strJson = gson.toJson(result);
		writeJsonResponse(response, strJson);
	}

	public void writeJsonResponseForAjaxUpload(HttpServletResponse response, Object o) throws Exception {
		Gson gson = new Gson();
		String strJson = gson.toJson(o);
		
		response.addHeader("Content-Type", "text/html;charset=" + DEFAULT_CHARSET);
		// response.set
		response.setCharacterEncoding(DEFAULT_CHARSET);
		
		PrintWriter writer = response.getWriter();
		writer.write(strJson);
		writer.flush();
		writer.close();
	}

}