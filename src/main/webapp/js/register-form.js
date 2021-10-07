appComponents.htmlForm.render({
    formTitle:"Register User",
    formAction:"/user-register",
    formMethod:"POST",
    renderId:"registerUser",
    formItems:[

        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "floatingInputUsername",
            labelTitle: "Username",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "username",
            inputPlaceholder:"Enter Username ... i.e. sol"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "floatingInputEmail",
            labelTitle: "Email Address",
            inputDivColumn:"col-md-8",
            inputType: "text",
            inputClass: "form-control",
            inputName: "email",
            inputPlaceholder:"name@example.com"
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "floatingPassword",
            labelTitle: "Password",
            inputDivColumn:"col-md-8",
            inputType: "password",
            inputClass: "form-control",
            inputName: "password",
            inputPlaceholder:"Enter password..."
        },
        {
            labelDivColumn: "col-md-2 col-md-offset-2",
            labelId: "floatingPasswordConfirm",
            labelTitle: "Confirm Password",
            inputDivColumn:"col-md-8",
            inputType: "password",
            inputClass: "form-control",
            inputPlaceholder:"Enter password..."
        }
    ],
    divButtonClass:"col-md-8",
    formButton:{
        buttonType:"submit",
        buttonValue:"Register User",
        buttonClass:"btn btn-block"
    }
});
