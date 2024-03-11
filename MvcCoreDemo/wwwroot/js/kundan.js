
$(document).ready(function () {
    GetState();
    GetEmployee();
    $('.statelist').change(function () {
        var ddlState = $(this).val();
        GetCity(ddlState);
    });

    $('#btnInsert').click(function () {
        AddEmployee();
    });
    $('#btnUpdate').click(function () {
        UpdateEmployee();
    });
    //$('.btnEdit').click(function () {
    //    var Id = $(this).data("kundan");
    //    EditEmployee(Id);
    //});
    $(document).on('click', '.btnEdit', function () {
        var Id = $(this).data("kundan");
        EditEmployee(Id);
        $('#btnInsert').hide();
        $('#btnUpdate').show();
    });
    $(document).on('click', '.btnDelete', function () {
        var Id = $(this).data("kundan");
        DeleteEmployee(Id);
    });
    $(document).on('click', '.btnMobile', function () {
        var id = $(this).data("kundan");
        SendMess(id);
    });
    $(document).on('click', '.btnEmail', function () {
        var id = $(this).data("kundan");
        SendEmail(id);
    });
    $(document).on('click', '.btnTelegram', function () {
        var id = $(this).data("kundan");
        SendTelegram(id);
    });




    function GetState() {
        $.ajax({
            url: '/Employee/getState', // Replace this with your actual endpoint URL
            type: 'GET',
            dataType: 'json',
            success: function (states) {
                var ddlState = $('#ddlState');
                ddlState.empty();
                ddlState.append($('<option>').val('').text('Select State'));
                if (Array.isArray(states)) {
                    $.each(states, function (index, state) {
                        ddlState.append($('<option>').val(state.id).text(state.stateName));
                    });
                }
            },
            error: function () {
                alert('An error occurred while fetching states.');
            }
        });
    }
    function GetEmployee() {
        $.ajax({
            url: '/Employee/getEmployee',
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                $('.employee-table-body').empty();
                $.each(data, function (index, employee) {
                    var row = '<tr class="text-captlize">' +
                        '<td>' + (index + 1) + '</td>' +
                        '<td>' + employee.name + '</td>' +
                        '<td>' + employee.email + '</td>' +
                        '<td>' + employee.mobile + '</td>' +
                        '<td>' + employee.dob + '</td>' +
                        '<td>' + employee.state + '</td>' +
                        '<td>' + employee.city + '</td>' +
                        '<td><button type="button" class="btn btn-primary btnEdit" data-kundan="' + employee.id + '"><i class="bi bi-pencil-square"></i></button></td>' +
                        '<td><button type="button" class="btn btn-danger btnDelete" data-kundan="' + employee.id + '"><i class="bi bi-trash"></i></button></td>' +
                        '<td><button type="button" class="btn btn-success btnMobile" data-kundan="' + employee.id + '"><i class="bi bi-whatsapp"></i></button></td>' +
                        '<td><button type="button" class="btn btn-secondary btnEmail" data-kundan="' + employee.id + '"><i class="bi bi-envelope"></i></button></td>' +
                        '<td><button type="button" class="btn btn-primary btnTelegram" data-kundan="' + employee.id + '"><i class="bi bi-telegram"></i></button></td>' +
                        /*'<td><a href="https://t.me/{employee.id}?text=employee.name">Send Message on Telegram</a></td>' +*/
                        '</tr>';
                    $('.employee-table-body').append(row);
                });
            },
            error: function () {
                alert('An error occurred while fetching employee data.');
            }
        });
    }
    function GetCity(ddlState) {
        $.ajax({
            url: '/Employee/getCity', // Replace this with your actual endpoint URL
            type: 'GET',
            dataType: 'json',
            data: { id: ddlState },
            success: function (city) {
                var ddlCity = $('#ddlCity');
                ddlCity.empty();
                ddlCity.append($('<option>').val('').text('Select City'));
                if (Array.isArray(city)) {
                    $.each(city, function (index, cit) {
                        ddlCity.append($('<option>').val(cit.id).text(cit.cityName));
                    });
                }
            },
            error: function () {
                alert('An error occurred while fetching states.');
            }
        })
    }
    function AddEmployee() {
        var name = $('#txtName').val();
        var email = $('#txtEmail').val();
        var mobile = $('#txtMobile').val();
        var dob = $('#txtDob').val();
        var state = $('#ddlState').val();
        var city = $('#ddlCity').val();
        $.ajax({
            url: '/Employee/Index',
            type: 'Post',
            dataType: 'json',
            data: { Name: name, Email: email, Mobile: mobile, Dob: dob, State: state, City: city },
            success: function (data) {
                debugger
                alert(data);
                window.location.href = "/Employee/Index";
            },
            error: function () {
                debugger
                alert('An error occurred while Inserting Employee Details.');
            }
        })
    }
    function EditEmployee(Id) {
        $.ajax({
            url: '/Employee/getEmployeeById',
            type: 'GET',
            dataType: 'json',
            data: { Id: Id },
            success: function (data) {
                debugger;
                var rsp = data[0];
                $('#txtName').val(rsp.name);
                $('#txtId').val(rsp.id);
                $('#txtEmail').val(rsp.email);
                $('#txtMobile').val(rsp.mobile);
                //$('#txtDob').val(rsp.dob);
                var dob = new Date(rsp.dob);
                var formattedDob = dob.toISOString().split('T')[0];
                $('#txtDob').val(formattedDob);
                $('#ddlState').val(rsp.state);
                $('#ddlState').change();
                var ddlState = $('#ddlState').val();
                GetCity(ddlState)
                $('#ddlCity').val(rsp.city);
            },
            error: function () {

            }
        });
    }
    function UpdateEmployee() {
        debugger
        var name = $('#txtName').val();
        var id = $('#txtId').val();
        var email = $('#txtEmail').val();
        var mobile = $('#txtMobile').val();
        var dob = $('#txtDob').val();
        var state = $('#ddlState').val();
        var city = $('#ddlCity').val();
        $.ajax({
            url: '/Employee/Update',
            type: 'Post',
            dataType: 'json',
            data: { Id: id, Name: name, Email: email, Mobile: mobile, Dob: dob, State: state, City: city },
            success: function (data) {
                debugger
                alert(data);
                window.location.href = "/Employee/Index";
            },
            error: function () {
                debugger
                alert('An error occurred while Inserting Employee Details.');
            }
        })
    }
    function DeleteEmployee(Id) {
        debugger
        $.ajax({
            url: '/Employee/Delete',
            type: 'Post',
            dataType: 'json',
            data: { Id: Id },
            success: function (data) {
                debugger
                alert(data);
                window.location.href = "/Employee/Index";
            },
            error: function () {
                debugger
                alert('An error occurred while Inserting Employee Details.');
            }
        })
    }
    function SendMess(Id) {
        debugger
        $.ajax({
            url: '/Employee/getEmployeeById',
            type: 'GET',
            dataType: 'json',
            data: { Id: Id },
            success: function (data) {
                debugger;
                var rsp = data[0];
                var whatsappUrl = 'https://api.whatsapp.com/send?phone=+91' + rsp.mobile + '&text=Name: ' + rsp.name + '%0D%0AEmail: ' + rsp.email + '%0D%0ADate Of Birth: ' + rsp.dob + '%0D%0AState: ' + rsp.stateName + '%0D%0ACity: ' + rsp.cityName;
                window.open(whatsappUrl, '_blank');
            },
            error: function () {
                var whatsappUrl = 'https://api.whatsapp.com/send?phone=' + rsp.mobile + '&text=Hello%2C%20I%20want%20to%20send%20you%20a%20message!';
                window.open(whatsappUrl, '_blank');
            }
        });
        //window.location.href = whatsappUrl;
    }
    //function SendTelegram(Id) {
    //    debugger;
    //    $.ajax({
    //        url: '/Employee/getEmployeeById',
    //        type: 'GET',
    //        dataType: 'json',
    //        data: { Id: Id },
    //        success: function (data) {
    //            debugger;
    //            var rsp = data[0];
    //            var telegramUrl = 'https://t.me/share/url?url=' + rsp.mobile + '&text=Name: ' + rsp.name + '%0D%0AEmail: ' + rsp.email + '%0D%0ADate Of Birth: ' + rsp.dob + '%0D%0AState: ' + rsp.stateName + '%0D%0ACity: ' + rsp.cityName;
    //            window.open(telegramUrl, '_blank');
    //        },
    //        error: function () {

    //        }
    //    });
    //}
    function SendTelegram(Id) {
        $.ajax({
            url: 'https://api.telegram.org/bot7020996670:AAFQquBzmTtA6kbOS71mc3qhuUpeSDH8POw/getUpdates',
            type: 'GET',
            dataType: 'json',
            success: function (response) {
                debugger
                alert(response[0]);
                if (response && response.ok && response.result && response.result.length > 0) {
                    var telegramChatId = response.result[0].message.chat.id;
                    alert('Chat ID:', telegramChatId);
                    
                    $.ajax({
                        url: '/Employee/getEmployeeById',
                        type: 'GET',
                        dataType: 'json',
                        data: { Id: Id },
                        success: function (data) {
                            debugger
                            var rsp = data[0];
                            var message = 'Name: ' + rsp.name + '\nEmail: ' + rsp.email + '\nDate Of Birth: ' + rsp.dob + '\nState: ' + rsp.stateName + '\nCity: ' + rsp.cityName;
                            var telegramBotToken = '7020996670:AAFQquBzmTtA6kbOS71mc3qhuUpeSDH8POw'; // Replace 'YourBotToken' with your actual bot token
                            var apiUrl = 'https://api.telegram.org/bot' + telegramBotToken + '/sendMessage';
                            var requestData = {
                                chat_id: telegramChatId,
                                text: message
                            };
                            $.ajax({
                                url: apiUrl,
                                type: 'POST',
                                dataType: 'json',
                                data: requestData,
                                success: function (response) {
                                    debugger
                                    alert('Message sent successfully');
                                },
                                error: function (error) {
                                    debugger
                                    alert('Error sending message');
                                }
                            });
                        },
                        error: function () {
                            debugger
                            alert('Error fetching employee data');
                        }
                    });
                } else {
                    debugger
                    alert('Error: Unable to fetch chat ID');
                }
            },
            error: function (error) {
                alert('Error:', error);
            }
        });
    }

    function SendEmail(Id) {
        debugger
        $.ajax({
            url: '/Employee/getEmployeeById',
            type: 'GET',
            dataType: 'json',
            data: { Id: Id },
            success: function (data) {
                debugger;
                var rsp = data[0];
                var email = rsp.email;
                var subject = 'Employee Details';
                var body = 'Name: ' + rsp.name + '\n' +
                    'Email: ' + rsp.email + '\n' +
                    'Date of Birth: ' + rsp.dob + '\n' +
                    'State: ' + rsp.stateName + '\n' +
                    'City: ' + rsp.cityName;

                $.ajax({
                    url: '/Employee/SendOTP',
                    type: 'POST',
                    dataType: 'json',
                    data: { email: email, subject: subject, body: body },
                    success: function (response) {
                        debugger
                        alert(response[0]);
                    },
                    error: function (xhr, status, error) {
                        debugger
                        alert('An error occurred while sending the email: ' + error);
                    }
                });
            },
            error: function (xhr, status, error) {
                alert('An error occurred while fetching employee details: ' + error);
            }
        });
        //window.location.href = whatsappUrl;
    }
});