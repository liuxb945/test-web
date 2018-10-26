<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <h1>hello nihao</h1>
    <p>This is the home page og this project</p>
    <script src="http://pre.flcccc.com/flow-webSite/statics/front/js/lib/jquery.min.js"></script>
    <script type="text/javascript">

        function buttonClick(){

            //请求json响应json
            // contentType:"application/json;charset=utf-8",    必须是json
            $.ajax({
                type:"get",
                url:"http://localhost:8085/retUser",
                contentType:"application/json;charset=utf-8",
                success:function(data){
                    alert(data.name);
                }
            });
        }
    </script>

</head>
<body>
<button id = 'button' onclick="buttonClick()">aa</button>
</body>
</html>
