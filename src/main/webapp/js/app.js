var appComponents = {
        htmlForm:{
            formCmp:{},
            render: function(newForm)
            {
                this.formCmp = newForm;
                var formToRender ='<h2>'+ this.formCmp.formTitle +'</h2>';
                formToRender += '<form action="'+this.formCmp.formAction+'" method="'+this.formCmp.formMethod+'">';
                this.formCmp.formItems.forEach(formItems=>{
                    formToRender += '<div class="'+formItems.labelDivColumn +'">';
                    formToRender += '<label for="'+formItems.labelId +'">' +formItems.labelTitle+'</label></div>';
                    formToRender += '<div class="'+formItems.inputDivColumn +'">';
                    formToRender += '<input type="'+formItems.inputType+'" class="'+formItems.inputClass+'" id="'+formItems.labelId+'" name="'+formItems.inputName+'" placeholder="'+formItems.inputPlaceholder+'"/>  </div>';
                });
                formToRender+='<div class="'+this.formCmp.divButtonClass+'"><input type="'+this.formCmp.formButton.buttonType+'" value="'+this.formCmp.formButton.buttonValue+'" class="'+this.formCmp.formButton.buttonClass+'"/></div></form>';

                document.getElementById(this.formCmp.renderId).innerHTML = formToRender;
            }
        }
    };

/*
 <div class="row">
            <div class="col-md-2"></div>
   <div class="col-md-8"><input type="submit" value="Submit" class="btn btn-block"></div>
</div>
* */



