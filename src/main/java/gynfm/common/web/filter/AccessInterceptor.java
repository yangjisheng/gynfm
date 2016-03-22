/*package gynfm.common.web.filter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import gynfm.common.util.StringUtil;

*//**
 * 访问拦截器
 * 
 *//*
public class AccessInterceptor extends HandlerInterceptorAdapter {
	private static final Logger log = Logger.getLogger(AccessInterceptor.class);

	private List<String> excludeUrls;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String requestURI = request.getRequestURI();
		String toLogin = request.getRequestURL().toString();
		String doName = request.getServletPath();
		if (StringUtil.contains(doName, "WEB-INF")) {
			return true;
		}
		String cannotAccess = toLogin.substring(0, toLogin.length() - doName.length()) + "/login.do";
		UserContext user = (UserContext) request.getSession().getAttribute("user");
		if (user == null) {
			for (int i = 0; i < excludeUrls.size(); i++) {
				if (requestURI.endsWith(excludeUrls.get(i))) {
					return true;
				}
			}
			log.warn("错误的访问页面。requestURI:" + requestURI);
			response.sendRedirect(cannotAccess);
			return false;
		} else {
			return true;
		}
	}

	public List<String> getExcludeUrls() {
		return excludeUrls;
	}

	public void setExcludeUrls(List<String> excludeUrls) {
		this.excludeUrls = excludeUrls;
	}

}
*/