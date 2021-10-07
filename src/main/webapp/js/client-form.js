appComponents.htmlForm.render({
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
            labelId: "gender",
            labelTitle: "Client Gender",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "gender",
            inputPlaceholder:"Enter Gender ... i.e. Male/Female"
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
    divButtonClass:"col-md-8",
    formButton:{
        buttonType:"submit",
        buttonValue:"Register Client",
        buttonClass:"btn btn-block"
    }
});
