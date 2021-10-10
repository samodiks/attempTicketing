<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 03-Oct-21
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <title>Load JS File</title>
  </head>
  <body>
  <div id="componentRender" class="container"></div>
  <script>
  var AppComponents = {
  htmlForm:{
  htmlForm:{},
  render: function(newForm)
  {
  let me = this;
  /* me.formCmp = newForm;*/
  let formToRender ='<h2>'+ me.formTitle +'</h2>';
  formToRender += '<form action="'+ me.formAction+'" method="'+ me.formMethod+'">';
    me.formItems.forEach(formItems=>{
        formToRender += '<div class="'+formItems.labelDivColumn +'">';
        formToRender += '<label for="'+formItems.labelId +'">' +formItems.labelTitle+'</label></div>';
        formToRender += '<div class="'+formItems.inputDivColumn +'">';
        formToRender += '<input type="'+formItems.inputType+'" class="'+formItems.inputClass+'" id="'+formItems.labelId+'" name="'+formItems.inputName+'" placeholder="'+formItems.inputPlaceholder+'"/>  </div>';
    });
    if (Object.keys(me.selects).length !== 0 )
    {
    me.selects.forEach(select=> {
    formToRender +='<label  class = "'+select.labelClass+'" for="' + select.id +'">' + select.labelTitle + ':</label><br>'
    +'<div class="'+selects.selectDivColumn +'"><select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id = "'+select.id+'" name ="'+select.name+'">'
      select.values.forEach(value=> {
      formToRender += '<option value="' + value + '">' + value + '</option>'
      });
      formToRender += '</select></div>';
    });
    }
    formToRender+='<div class="'+me.divButtonClass+'"><input type="'+me.formButton.buttonType+'" value="'+me.formButton.buttonValue+'" class="'+me.formButton.buttonClass+'"/></div></form>';

  document.getElementById("componentRender").innerHTML = formToRender;
  }
  }
  };
  AppComponents.htmlForm.render.call({
    formTitle:"Client Registration",
    formAction:"./client-register",
    formMethod:"POST",
    renderId:"clientRegistration",
    formItems:[
      {
        labelDivColumn: "col-md-2 col-md-offset-2",
        labelId: "idNo",
        labelTitle: "ID Number",
        inputDivColumn:"col-md-8",
        inputType: "text",
        inputClass: "form-control",
        inputName: "idNo",
        inputPlaceholder:"Enter ID Number ... i.e. 12345678"
      },
      {
        labelDivColumn: "col-md-2 col-md-offset-2",
        labelId: "clientName",
        labelTitle: "Client Name",
        inputDivColumn:"col-md-8",
        inputType: "text",
        inputClass: "form-control",
        inputName: "clientName",
        inputPlaceholder:"Enter Client Name ... i.e. Samuel Odikor"
      },
      {
        labelDivColumn: "col-md-2 col-md-offset-2",
        labelId: "email",
        labelTitle: "Email Address",
        inputDivColumn:"col-md-8",
        inputType: "text",
        inputClass: "form-control",
        inputName: "email",
        inputPlaceholder:"Enter Email Address  ... i.e. something@domain.com"
      }
      ,
      {
        labelDivColumn: "col-md-2 col-md-offset-2",
        labelId: "clientAddress",
        labelTitle: "Client Address",
        inputDivColumn:"col-md-8",
        inputType: "text",
        inputClass: "form-control",
        inputName: "clientAddress",
        inputPlaceholder:"Enter Client Address... i.e. Cape Town, South Africa"
      },
      {
        labelDivColumn: "col-md-2 col-md-offset-2",
        labelId: "dob",
        labelTitle: "Date of Birth",
        inputDivColumn:"col-md-8",
        inputType: "text",
        inputClass: "form-control",
        inputName: "dob",
        inputPlaceholder:"Enter date of Birth ... i.e. 0000 - 00 - 00"
      }
    ],
    selects : [
      {
        labelTitle: "Gender",
        id: "gender",
        selectDivColumn:"col-md-8",
        name: "gender",
        labelClass: "form-label",
        option:"Field Status",
        values: ["MALE", "FEMALE"]
      },
    ],
    divButtonClass:"col-md-8",
    formButton:{
      buttonType:"submit",
      buttonValue:"Register Client",
      buttonClass:"btn btn-block"
    }
  });



  </script>

  </body>
</html>
