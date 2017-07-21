

var table_data = [ { first_name : 'Rose',
                     last_name  : 'Tyler',
                     home       : 'Earth' },
                   { first_name : 'Zoe',
                     last_name  : 'Heriot',
                     home       : 'Space Station W3'},
                   { first_name : 'Jo',
                     last_name  : 'Grant',
                     home       : 'Earth'},
                   { first_name : 'Leela',
                     last_name  : null,
                     home       : 'Unspecified'},
                   { first_name : 'Romana',
                     last_name  : null,
                     home       : 'Gallifrey'},
                   { first_name : 'Clara',
                     last_name  : 'Oswald',
                     home       : 'Earth'},
                   { first_name : 'Adric',
                     last_name  : null,
                     home       : 'Alzarius'},
                   { first_name : 'Susan',
                     last_name  : 'Foreman',
                     home       : 'Gallifrey'} ];

var first = document.getElementById("static_table");

first.innerHTML += "<th>First Name</th><th>Last Name</th><th>Home</th>";
var index = 0;
while (index < table_data.length){
    first.innerHTML += "<tr><td>" + table_data[index].first_name + "</td><td>" + table_data[index].last_name + "</td><td>" + table_data[index].home + "</td></tr>";
    index++;
  };


var button = document.getElementById("load");
var clear = document.getElementById("clear");
var div = document.getElementById("table");
var table = document.getElementById("dynamic_table");

button.onclick = function() {
  var count = 0;
  table.innerHTML += "<th>First Name</th><th>Last Name</th><th>Home</th>";
  while (count < table_data.length){
      table.innerHTML += "<tr><td>" + table_data[count].first_name + "</td><td>" + table_data[count].last_name + "</td><td>" + table_data[count].home + "</td></tr>";
      count++;
    }
}

clear.onclick = function(){
  table.innerHTML = ""
}
