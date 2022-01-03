package inter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface command {
	public String execute(HttpServletRequest request,HttpServletResponse response)
		throws IOException, ServletException;
}
