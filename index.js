var Get_Not_Database = function Get_Not_Database() {
    var input_data = $("#input_random_not_database").val();
    if (input_data.length > 0) {
        var Data = {
            action: 'not_database',
            input_data: input_data
        }
        $.ajax({
            type: 'POST',
            url: 'server.php',
            dataType: 'json',
            contentType: 'application/json',
            cache: false,
            contentType: false,
            processData: false,
            data: JSON.stringify(Data),
            success: function (result) {
                $("#show_message_not_database").text(result.message)
            }
        });
    }else {
        alert('ใส่ข้อความที่ต้องการ')
    }
}

var Get_Database = function Get_Database() {
    var Data = {
        action: 'database'
    }
    $.ajax({
        type: 'POST',
        url: 'server.php',
        dataType: 'json',
        contentType: 'application/json',
        cache: false,
        contentType: false,
        processData: false,
        data: JSON.stringify(Data),
        success: function (result) {
            var message = '';
            var i = 1;
            $(result.message).each(function (key, value) {
                message += '<p class="text-primary">' + i + ' => ' + value + '</p>';
                i++
            });
            $("#show_message_database").html(message)
        }
    });
}