<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록 페이지</title>
    <style>
        .header {
            display: flex;
            align-items: center;
            justify-content: center; /* 중앙 정렬 추가 */
        }

        .header img {
            width: 100px;
            height: 100px;
            margin-right: 10px;
        }
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        h3 {
            cursor: pointer;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: flex-start;
            width: 80%;
            margin: auto;
            gap: 20px;
            padding-bottom: 50px;
        }

        .box {
            position: relative;
            width: 20%;
            background-color: #f8f8f8;
            border: 1px solid #ddd;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            padding: 15px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .box img {
            width: 100%;
            height: 150px;
            cursor: pointer;
            object-fit: cover;
        }

        .box h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }

        .box p {
            font-size: 0.9rem;
            color: #999;
            margin-top: 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="img/product.png" >
        <h2></h2>
    </div>
    <div class="container">
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload"  onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
       <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
        <div class="box">
            <form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data">
                <img src="images/noimage.jpg" alt="Example Image">
                <h3>상품 등록</h3>
                <p><input type="file" name="upload" id="upload" onchange="uploadImage(event)"></p>
                <button type="submit">등록하기</button>
            </form>
        </div>
    </div>
</body>
<script>
    function uploadImage(event) {
        const fileInput = event.target;
        const box = fileInput.closest(".box");
        const previewImage = box.querySelector("img");

        // 파일을 읽기 위한 FileReader 객체 생성
        const reader = new FileReader();

        // 파일을 읽고 미리보기 이미지를 업데이트하는 이벤트 리스너를 추가
        reader.onload = function(e) {
            previewImage.src = e.target.result;
        }

        // 이미지 파일을 읽는다
        reader.readAsDataURL(fileInput.files[0]);
    }
</script>

</html>
