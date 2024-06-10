document.addEventListener("DOMContentLoaded", function() {
    loadEmployees();

    function loadEmployees() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var employees = JSON.parse(this.responseText);
                displayEmployees(employees);
            }
        };
        xhttp.open("GET", "database.php", true);
        xhttp.send();
    }

    function displayEmployees(employees) {
        var tableBody = document.querySelector("#employeeTable tbody");
        tableBody.innerHTML = "";
        employees.forEach(function(employee) {
            var row = "<tr>";
            row += "<td><input type='checkbox'></td>";
            row += "<td>" + employee.id + "</td>";
            row += "<td>" + employee.joindate + "</td>";
            row += "<td>" + employee.name + "</td>";
            row += "<td>" + employee.sex + "</td>";
            row += "<td>" + employee.age + "</td>";
            row += "<td>" + employee.job + "</td>";
            row += "<td>" + employee.email + "</td>";
            row += "</tr>";
            tableBody.innerHTML += row;
        });
    }
});

// Add event listener for backButton
document.getElementById('backButton').addEventListener('click', function() {
    window.location.href = 'index.html';
});

// Add event listener for backButton
document.getElementById('closeButton').addEventListener('click', function() {
    window.location.href = 'logout.html';
});