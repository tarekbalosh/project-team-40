var count = 0;
function right()
{
    var t = document.getElementById("man");
    var b = document.getElementById("show");
    if (count == 0) {
        t.style.position = "relative";
        t.style.right = "200px";
        count=1;
    }
    else if (count == 1)
    {
        t.style.right = "0px";
        count = 0;
    }
}
var i = 0; var k = 0; var em = {};
var c = 0; var t; var en = {};
var v=0; var g=0; var t = 1;
function input()
{
    
         var y = 0;
         t = document.getElementById("gmail").value;
         var pas1 = document.getElementById("pas1").value,
            pas2 = document.getElementById("pas2").value,
           name = document.getElementById("name").value;
   
   

    for (var i = 0; i < t.length; i++)
    {
        if (t[i] == '@')
        {
            y++;
        }
    }
    if (pas1 != pas2)
    {
        alert("error in password");

    }
    else if (t[0] == '@')
    {
        alert("you should not content index one from @");

    }
    else if (y > 1)
    {
        alert("you should not content more from @");

    }
    else if (y == 0)
    {
        alert("the field gmail must contain an '@'" + '<<' + t + '>>');

    }


    else if (t[t.length - 1] == "@")
    {
        alert("you must add text after" + "<< " + t + " >>");

    }
     
else if (c == 0)
     {

        for (var m = 0; m < k; m++)
        {
            if (en[m] == name)
            {
                    v = 1;
                    break;
            }
                else v = 0;
        }
        for (var p = 0; p < k; p++)
        {
                if (em[p] == t)
                {
                    g = 1;
                    break;
                }
                else g = 0;

        }
       
        
    }
   
      if(c==0)
      {
          if (v == 0 && g == 0 && pas1 == pas2)
          {
              en[k] = name;
              em[k] = t;
              k++;
             
          }
      }
   
   
    if (v == 1)
    {
        alert("this name the exists");
        v = 0;
        
    }
    else if (g == 1)
    {
        alert("this gmail the exists");
        g = 0;
        
    }
    
};

function valiba()
{
    for (var i = 0; i < k; i++)
    {
        //document.write('<option style="margin-left:500px;">'+"name:   " + en[i] +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ "gmil:   "+ em[i]+ " </option>");
        document.write('<table border="3" style=margin-left:500px;><tr> <td>' + en[i] + "</td>" + "<td>" + em[i] + "</td></tr></table>");

    }


}

   
