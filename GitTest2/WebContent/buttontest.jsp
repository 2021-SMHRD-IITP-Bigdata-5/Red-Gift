<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
html {
  font-family: 'Lora', sans-serif;
  width: 100%;
}
input,
span,
label {

  font-family: 'Ubuntu', sans-serif;
  display: block;
  margin: 10px;
  padding: 5px;
  border: none;
  font-size: 22px;
}

input:focus {
  outline: 0;
}
/* Question */

input.question{
  font-size: 15px;
  font-weight: 300;
  border-radius: 2px;
  margin: 0;
  border: none;
  width: 80%;
  background: rgba(0, 0, 0, 0);
  transition: padding-top 0.2s ease, margin-top 0.2s ease;
  overflow-x: hidden; /* Hack to make "rows" attribute apply in Firefox. */
}
/* Underline and Placeholder */

input.question + label {
  display: block;
  position: relative;
  white-space: nowrap;
  padding: 0;
  margin: 0;
  width: 10%;
  border-top: 1px solid gray;
  -webkit-transition: width 0.4s ease;
  transition: width 0.4s ease;
  height: 0px;
}

input.question:focus + label{
  width: 300px;
}

input.question:focus,
input.question:valid {
  padding-top: 35px;
}

input.question:focus + label > span,
input.question:valid + label > span {
  top: -60px;
  font-size: 17px;
  color: #333;
}

input.question:valid + label {
  border-color: green;
}

input.question:invalid{
  box-shadow: none;
}

input.question + label > span {
  font-weight: 300;
  margin: 0;
  position: absolute;
  color: #8F8F8F;
  font-size: 15px;
  top: -30px;
  left: 0px;
  z-index: -1;
  -webkit-transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
  transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
}
input[type="submit"] {
  -webkit-transition: opacity 0.2s ease, background 0.2s ease;
  transition: opacity 0.2s ease, background 0.2s ease;
  display: block;
  opacity: 0;
  margin: 10px 0 0 0;
  padding: 10px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background: #EEE;
}

input[type="submit"]:active {
  background: #999;
}
input.question:valid ~ input[type="submit"]{
  -webkit-animation: appear 1s forwards;
  animation: appear 1s forwards;
}

input.question:invalid ~ input[type="submit"]{
  display: none;
}

@-webkit-keyframes appear {
  100% {
    opacity: 1;
  }
}
@keyframes appear {
  100% {
    opacity: 1;
  }
}

</style>
<body>
<form>
  <input type="text" name="name" class="question" id="nme" required autocomplete="off" />
  <label for="nme"><span>email?</span></label>
  <input type="password" name="pw" class="question" id="pw" required autocomplete="off" />
  <label for="pw"><span>password?</span></label>
  <input type="submit" value="등록하기"/>



</form>


</body>
</html>