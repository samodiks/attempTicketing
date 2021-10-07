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
        }
    ],
    divButtonClass:"col-md-8",
    formButton:{
        buttonType:"submit",
        buttonValue:"Create Event",
        buttonClass:"btn btn-block"
    }
});
