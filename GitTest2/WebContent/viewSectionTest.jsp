<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.resultView {
  /*box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);*/
  box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);
  background: hsl(0 0% 100%);
  color: hsl(200 50% 20%);
  line-height: 1.5;
  font-size: 1.5rem;
  font-weight: 300;
  width: 40vmin;
  height: 60vmin;
  display: flex;
  
  place-items: center;
  text-align: center;
  
  padding: 2ch;
  border-radius: 2ch;
  border: 1px solid hsl(0 0% 83%);
}
 
.resultView {
  box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);
}

html {
  block-size: 100%;
  inline-size: 100%;
  background: hsl(0 0% 85%);
}
body{
	box-sizing: border-box;
	display: grid;
	grid-auto-flow: column;
  
	place-content: center;
	gap: 3vmin;
}

/*
body {
  min-block-size: 100%;
  min-inline-size: 100%;
  margin: 0;
  box-sizing: border-box;
  display: grid;
  grid-auto-flow: column;
  gap: 5vmin;
  place-content: center;
  font-family: system-ui;
}
*/
</style>
<body>
<section class="resultView">
        <div>
            <div>
            	
				제안1영역
				
            </div>
            <div>
            	
				제안2영역
				
            </div>
        </div>
</section>
<div class="card">(old) Desaturated shadow, no negative spread</div>
<div class="card better">(new) Saturated shadow, with negative spread</div>
</body>
</html>