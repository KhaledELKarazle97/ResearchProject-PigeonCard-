/*global angular*/
var app = angular.module('pigeon-card', []);
app.directive("pigeonCard", function ($parse, $http) {
    "use strict";
    var direc = {};
    direc.restrict = "E";
    direc.scope = {
        //accept as string
        query: "@",
        color: "@",
        background: "@",
        alignment: "@",
        textsize: "@",
        fontface: "@",
        header: "@",
        title: "@",
        uom: "@"
    };
    direc.controller = "CardControl";
    direc.templateUrl = 'pigeon-card/template/card.html';
    return direc;
});
app.controller('CardControl', function ($scope, $http) {
    "use strict";
    $scope.errorMsg;
    $scope.errorStatus;

    /*--------------------------------------------CODE BELOW FOR DATA MANIPULATION-----------------------------------------------------------------*/
    //validating SQL queries
    
    
    if (!$scope.query.toUpperCase().includes("SELECT")) {
        $scope.errorStatus = true;
        $scope.errorMsg = "ERROR: Invalid SQL Query found or Query not found in Pigeon-Card tag";
    } else if (!$scope.query.toUpperCase().includes("SUM") && !$scope.query.toUpperCase().includes("AVG") &&                        !$scope.query.toUpperCase().includes("COUNT") && !$scope.query.toUpperCase().includes("MIN") && !$scope.query.toUpperCase().includes("MAX")) {
        $scope.errorStatus = true;
        $scope.errorMsg = "ERROR: Pigeon-Card only accepts SQL aggregation functions.";
    }else{ 
    //fetch data from mySQL db
    $http.post("pigeon-core/get-data.php", {
        'sql': $scope.query
    }).then(function (response) {
        $scope.fetch_data = response.data.data;
        //convert 1000s into K, 1000000s into M and 1000000000s into B
        for (var key in $scope.fetch_data[0]) {
            if (!isNaN($scope.fetch_data[0][key])) {
                if ($scope.fetch_data[0][key] > 999 && $scope.fetch_data[0][key] < 999999) {
                    $scope.fetch_data[0][key] = Number($scope.fetch_data[0][key] / 1000).toFixed(2) + "K";
                } else if ($scope.fetch_data[0][key] > 999999 && $scope.fetch_data[0][key] < 99999999) {
                    $scope.fetch_data[0][key] = Number($scope.fetch_data[0][key] / 1000000).toFixed(1) + "M";
                } else if ($scope.fetch_data[0][key] > 99999999 && $scope.fetch_data[0][key] < 999999999999) {
                    $scope.fetch_data[0][key] = Number($scope.fetch_data[0][key] / 1000000000).toFixed(1) + "B";
                }
            }
        }
    });
    }
    /*-------------------------------------------CODE BELOW FOR STYLE MANIPULATION----------------------------------------------------------------*/

    //get tag name of all elements called pigeon-card
    var getCardLen = document.getElementsByTagName('pigeon-card');
    //Background Color
    for (var i = 0; i < getCardLen.length; i++) {
        if (getCardLen[i].childNodes.item(2) != null) {
            if (getCardLen[i].hasAttribute('background')) {
                 getCardLen[i].childNodes.item(2).style.backgroundColor = getCardLen[i].getAttribute('background');
            }
        }
    }
    //Font Color
    for (var i = 0; i < getCardLen.length; i++) {
        if (getCardLen[i].childNodes.item(2) != null) {
            if (getCardLen[i].hasAttribute('color')) {
                getCardLen[i].childNodes.item(2).style.color = getCardLen[i].getAttribute('color');
            }
        }
    }
    //Change Alignment
    for (var i = 0; i < getCardLen.length; i++) {
        if (getCardLen[i].childNodes.item(2) != null) {
            if (getCardLen[i].hasAttribute('alignment')) {
                getCardLen[i].childNodes.item(2).style.textAlign = getCardLen[i].getAttribute('alignment');
            }
        }
    }
    //Change text size
    for (var i = 0; i < getCardLen.length; i++) {
        if (getCardLen[i].childNodes.item(2) != null) {
            if (getCardLen[i].hasAttribute('textsize')) {
                getCardLen[i].childNodes.item(2).style.fontSize = getCardLen[i].getAttribute('textsize');
            }
        }
    }
    //Change Font-family
    for (var i = 0; i < getCardLen.length; i++) {
        if (getCardLen[i].childNodes.item(2) != null) {
            if (getCardLen[i].hasAttribute('fontface')) {
                getCardLen[i].childNodes.item(2).style.fontFamily = getCardLen[i].getAttribute('fontface');
            }
        }
    }

});
/*PREVIOUS ATTEMPS 
    for(var u = 0; u < g.length; u++){
        if(g[u].hasAttribute('background')){
            g[u].childNodes[2].style.backgroundColor = g[u].getAttribute('background');
        }
    }
console.log(g.item(2)); 
    if(g.item(2) == null){
        console.log('null');
    }else{
            g.item(2).style.backgroundColor = 'black';
    }
 var x = document.getElementsByTagName('pigeon-card');
 for(var i = 0; i < x.length; i++){
     if(x[i].hasAttribute('color')){
      x[i].style.color = x[i].getAttribute('color');
     }else{
         x[i].style.color = 'white';
     }   
 }
For some unknown reasons, the block above does not work when another variable name besides x is used
*/