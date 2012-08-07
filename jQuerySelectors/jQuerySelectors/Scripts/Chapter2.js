function exerciseOne() {
    var objs = $('p, span');
    objs.each(function () {
        $(this).css('border', '2px dashed orange');
    });
}

function exerciseTwo() {    
    $('div.BlueDiv, div.RedDiv').css('border', '2px dashed green');
}

function exerciseThree() {     
    $('div[title]').css('border', '2px dashed lime');
}

function exerciseFour() {    
    $('div[title="Contains Table"]').css('border', '2px dashed blue');
}

function exerciseFive() {    
    $(':input').each(function () {
        $(this).val('AZ');
    });
}

function exerciseSix() {    
    $('div:contains("Group 2")').addClass('OrangeBackground');
}

function exerciseSeven() {    
    $('tr:odd').addClass('OrangeBackground');
    $('tr:even').addClass('OliveBackground');
}

function exerciseEight() {    
    $('span:first-child').addClass('OliveBackground');
}

function exerciseNine() {    
    $('input[value^="aButton"').addClass('RedText');    
}

function exerciseTen() {
    $('input[value$="b2"').addClass('OrangeText');
}

function exerciseEleven() {
    $('input[value*="Button"').addClass('GreenBorder');
}