<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.awt.Graphics2D,
    		java.awt.image.renderable.ParameterBlock,
    		java.awt.image.BufferedImage,
    		javax.media.jai.JAI,
    		javax.media.jai.RenderedOp,
    		javax.imageio.ImageIO,
    		com.oreilly.servlet.MultipartRequest,
    		com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
    		java.util.*,
    		java.io.*"
%>
<%
	ServletContext context = request.getServletContext();
	String imagePatch = context.getRealPath("imgs");
	int size = 1*1024*1024;
	String filename = "";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, imagePatch, size, 
														"euc-kr",new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String file = (String)files.nextElement();
		filename = multi.getFilesystemName(file);
	} catch (Exception e){
		e.printStackTrace();
	}
	ParameterBlock pb = new ParameterBlock();
	pb.add(imagePath + "/" + filename);
	RenderedOp rOp = JAI.create("fileload", pb);
	
	BufferedImage bi = rOp.getAsBufferedImage();
	BufferedImage thumb = new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);
	Graphics2D g = thumb.createGraphics();
	g.drawImage(bi, 0, 0, 100, 100, null);
	File file = new File(imagePath + "/sm_" + filename);
	ImageIO.write(thumb, "jpg", file);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	-원본 이미지-<br/>
	<img src="imgs/<%=filename %>"><br/>
	-썸네일 이미지-<br/>
	<img src="imgs/sm_<%=filename %>">
</body>
</html>