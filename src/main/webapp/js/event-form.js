appComponents.htmlForm.render({
    formTitle:"Event Creation form",
    formAction:"./create-event",
    formMethod:"POST",
    renderId:"eventForm",
    formItems:[
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "eventNo",
            labelTitle: "Event Number",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "eventNo",
            inputPlaceholder:"Enter Event Number ... i.e. 12345678"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "eventId",
            labelTitle: "Event ID",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "eventId",
            inputPlaceholder:"Enter Event ID ... i.e. IEBC"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "eventName",
            labelTitle: "Event Name",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "eventName",
            inputPlaceholder:"Enter Event Name ... i.e. Java EE Learning"
        }
        ,
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "venue",
            labelTitle: "Event Venue",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "venue",
            inputPlaceholder:"Enter Event Venue ... i.e. Cape Town, South Africa"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "eventDate",
            labelTitle: "Event Date",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "eventDate",
            inputPlaceholder:"Enter Event Date ... i.e. yyyy-MM-dd (0000-00-00)"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "capacity",
            labelTitle: "Maximum Capacity",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "capacity",
            inputPlaceholder:"Enter Event Maximum capacity ... i.e. 1500"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "url",
            labelTitle: "Event image",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "url",
            inputPlaceholder:"Paste image URL here..."
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "clientId",
            labelTitle: "Client ID",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "clientId",
            inputPlaceholder:"Enter Client ID who creates event ... i.e. 100"
        }
    ],
    divButtonClass:"col-md-8",
    formButton:{
        buttonType:"submit",
        buttonValue:"Register Event",
        buttonClass:"btn btn-block"
    }
});
