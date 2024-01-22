<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>링크꾸미기</title>
<style>
a:link, a:visited { /*링크요소(방문전),방문후*/
  background-color: white;  /*배경색:흰색 */
  color: black;				/*글자색:검정 */
  border: 2px solid green;  /*테두리:2px 두께 실선 초록색 */
  width : 150px;
  height: 50px;
  line-height: 50px;
  /*  padding: 10px 20px; */		/*테두리안쪽여백(border와 content사이 여백) */
  text-align: center;		/*수평정렬:가운데*/
  text-decoration: none;	/*글자꾸밈:밑줄X*/
  display: inline-block;	
  margin: 50px;
  /* display:inline-block
  			inline이면서 block
             한 줄에 여러 요소가 배치가능하면서
             width, height 조절가능 */

	/*모든 html요소는 크게 block레벨,inline레벨
	block레벨: 
		-요소1개 당 한줄 차지.<div> <hr> <p> <br> <hn> <ul> <li> <form> 등
		-width, height 조절가능. margin 조절가능(상하 마진은 중첩)
		
	inline레벨: 
		-한 줄에 여러 요소. <span> <a> <img> <button> 등
		-width는 내용만큼 차지
  		-width, height 조절불가
		--margin-top,margin-bottom 조절 불가능(margin-left, margin-right 가능)
		*/
}

a:hover, a:active {
  background-color: green;
  color: white;
}
</style>
</head>
<body>

<p>
  <b><a href="https://www.naver.com" target="_blank">네이버link</a></b>
  <b><a href="http://www.test.co.kr" target="_blank">임의link</a></b>
  <b><a href="http://www.tesst.co.kr" target="_blank">임의link</a></b>
</p>

<p style="border:3px solid orange; width:400px; margin:0 auto;">
<b>Note:</b> 
참고: a:hover가 효과적이려면 CSS 정의에서 a:link 및 a:visited 뒤에 와야 합니다.<br/>
참고: a:active가 효과적이려면 CSS 정의에서 a:hover 뒤에 와야 합니다
</p>



</body>
</body>
</html>