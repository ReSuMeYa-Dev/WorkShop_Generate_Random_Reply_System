<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
    </head>
    <body>
        <div class="container">
            <div class="row mt-5">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12 col-md-12 text-center">
                                    <div class="alert alert-primary" role="alert">
                                        <h2>WorkShop | PHP สร้างระบบสุ่มข้อวคามตอบกลับ</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <label for="input_random_not_database">กรอกข้อความโดย ถ้าจะสุ่มให้ใช้ <small class="text-danger">{prefix} หรือ {name} หรือ {thank}</small></label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="ทดลองสร้าง ที่สุ่มข้อความ" id="input_random_not_database">
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary" type="button" onclick="Get_Not_Database()">สุ่มข้อมูล</button>
                                                </div>
                                            </div>       
                                            <hr>
                                            <div class="text-center">
                                                <button class="btn btn-sm btn-outline-success" onclick="Get_Database()">แสดงข้อมูลจาก Database</button>
                                            </div>                                    
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="text-center">แสดงข้อมูล</h4>
                                            <hr>
                                            <small>แสดงข้อความสุ่มจาก ซ้ายมือ</small>
                                            <div id="show_message_not_database"></div>
                                            <hr>
                                            <small>แสดงข้อความสุ่มจาก Database</small>
                                            <div id="show_message_database"></div>
                                            <hr>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
        <script src="assets/jquery/jquery.js"></script>
        <script src="assets/bootstrap/js/bootstrap.js"></script>
        <script src="index.js"></script>
</html>