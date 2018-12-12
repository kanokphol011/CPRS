var xmlhttp = new XMLHttpRequest();

function Add() {
  var name = document.getElementById("name").value;
  var lastname = document.getElementById("lastname").value;
  var position = document.getElementById("position").value;
  console.log(name, lastname, position);

  if (name != null && lastname != null && position != null) {
    var url = 'https://staffcoc.herokuapp.com/addUser';
    var userdata = JSON.stringify({
      "staffName": name,
      "staffLastName": lastname,
      "position": position
    })
    xmlhttp.open("POST", url, true);
    //  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xmlhttp.send(userdata);
    alert("Success");
    console.log(userdata);

  } else {
    alert("Enter valid inputs.");
  }
}

var numbers;
function search() {
  var name = document.getElementById("name").value;
  var lastname = document.getElementById("lastname").value;
  console.log(name, lastname);
  if (name != null && lastname != null || name == null && lastname != null || name != null && lastname == null) {
    var url = 'https://staffcoc.herokuapp.com/getUser';
    xmlhttp.open("GET", url, false);
    xmlhttp.send();
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      var result = xmlhttp.responseText;
      var jsResult = JSON.parse(result);
      var c = jsResult["staffcoc"].length;
      var r = "";
      var ids = "";

      for (i = 0; i < c; i++) {
        if (name == jsResult["staffcoc"][i]["staffName"] || lastname == jsResult["staffcoc"][i]["staffLastName"]) {

          ids = jsResult["staffcoc"][i]["id"];
          numbers=ids;
          r = "<h5>" + jsResult["staffcoc"][i]["position"] + " " + jsResult["staffcoc"][i]["staffName"] + "  " + jsResult["staffcoc"][i]["staffLastName"] + "</h5>";
        } else {
          r = "<h5>file not found</h5>";
        }
      }
      document.getElementById("show").innerHTML = r;
    }
  }
}


function deleteStaff() {
  
  console.log(numbers);
  
    var url = 'https://staffcoc.herokuapp.com//deleteUser/';
    xmlhttp.open("DELETE", url+numbers, false);
    xmlhttp.send();
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
          alert("Success");
    }
    else{
      alert("Cannot");
    }
  }
