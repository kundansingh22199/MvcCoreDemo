
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
                    var row = '<tr>' +
                        '<td>' + (index + 1) + '</td>' +
                        '<td>' + employee.name + '</td>' +
                        '<td>' + employee.email + '</td>' +
                        '<td>' + employee.mobile + '</td>' +
                        '<td>' + employee.dob + '</td>' +
                        '<td>' + employee.state + '</td>' +
                        '<td>' + employee.city + '</td>' +
                        '<td><button type="button" class="btn btn-primary btnEdit" data-kundan="' + employee.id + '">Edit</button></td>' +
                        '<td><button type="button" class="btn btn-danger btnDelete" data-kundan="' + employee.id + '">Delete</button></td>' +
                        '<td><button type="button" class="btn btn-success btnMobile" data-kundan="' + employee.id + '">WhatsApp</button></td>' +
                        '<td><button type="button" class="btn btn-warning btnEmail" data-kundan="' + employee.id + '">Email</button></td>' +
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
                $('#txtCity').val(rsp.city);
                $('.citylist').change();
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
                var whatsappUrl = 'https://api.whatsapp.com/send?phone=' + '+919876543210' + '&text=Hello%2C%20I%20want%20to%20send%20you%20a%20message!';
                window.open(whatsappUrl, '_blank');
            }
        });
        //window.location.href = whatsappUrl;
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
                        alert(response.message);
                    },
                    error: function (xhr, status, error) {
                        debugger
                        alert('An error occurred while sending the email: ' + error);
                    }
                });
            },
            error: function (xhr, status, error) {
                // Handle error when fetching employee details
                alert('An error occurred while fetching employee details: ' + error);
            }
        });
        //window.location.href = whatsappUrl;
    }
});

