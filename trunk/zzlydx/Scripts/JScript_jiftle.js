function ExtractionBirthday(oneText, twoText)
{
    var txtparm = document.getElementById(oneText).value;
    if (txtparm.length == 18) {
        var year = txtparm.substring(6, 10);
        var month = txtparm.substring(10, 12);
        var date = txtparm.substring(12, 14);
        document.getElementById(twoText).value = year + "-" + month + "-" + date;
    }
   /* else {
        alert("输入的身份证不正确！");
        document.getElementById(oneText).focus();
        document.getElementById(oneText).value = "";
    }*/
}