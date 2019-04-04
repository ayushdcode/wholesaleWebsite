<html>
<head>
</head>
<body>
<div id="jai">
<h1>jai ho guruji aapki</h1><br>

<h3>teri toh</h3>
<div>
<h5>kya yarr</h5>
</div>
</div>
<div id="but">
<input type="button" id="show_button" onclick="printDiv('jai')" value="print a div!" />
</div>
<script type="text/javascript">
    var button = document.getElementById('show_button')
    button.addEventListener('click',hideshow,false);

    function hideshow() {
        document.getElementById('show_button').style.display = 'block'; 
        this.style.display = 'none'
    }   
</script>
<script type="text/javascript">
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}
</script>

</body>
</html>