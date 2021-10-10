var AppComponents = {
        htmlForm:{
            htmlForm:{},
            render: function(newForm)
            {
                let me = this;
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
                            +'<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id = "'+select.id+'" name ="'+select.name+'">'
                        select.values.forEach(value=> {
                            formToRender += '<option value="' + value + '">' + value + '</option>'
                        });
                        formToRender += '</select>';
                    });
                }
                formToRender+='<div class="'+me.divButtonClass+'"><input type="'+me.formButton.buttonType+'" value="'+me.formButton.buttonValue+'" class="'+me.formButton.buttonClass+'"/></div></form>';

                document.getElementById("componentRender").innerHTML = formToRender;
            }
        }
    };






