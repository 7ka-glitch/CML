let first = document.getElementById('firstImg');
let message = document.getElementById('message');
let second = document.getElementById('secondImg');
let third = document.getElementById('third'); 
let Liza = document.getElementById('Liza'); 

first.parentElement.addEventListener('mouseenter', () => {
    first.style.visibility = 'hidden';
    message.style.visibility = 'visible';
    
});

first.parentElement.addEventListener('mouseleave', () => { 
    message.style.visibility = 'hidden';
    first.style.visibility = 'visible';
});

let clicks = 0;
second.addEventListener('click', () => {
    if (clicks % 2 == 0)
        second.style.border = '10px solid red';
    else
        second.style.border = '3px solid black';
    clicks = clicks + 1;
});


third.parentElement.addEventListener('mouseenter', () => {
    Liza.style.visibility="visible";
    third.style.visibility="hidden";
});

third.parentElement.addEventListener('mouseleave', () => { 
    Liza.style.visibility="hidden";
    third.style.visibility="visible";
});



