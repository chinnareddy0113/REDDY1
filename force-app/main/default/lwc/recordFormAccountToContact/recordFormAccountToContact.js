import { LightningElement,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { CloseActionScreenEvent } from 'lightning/actions';
export default class LightningRecordEditForm extends LightningElement {
    @api recordId;
    
    handleSuccess(event) {
        debugger;
         this.dispatchEvent(new CloseActionScreenEvent());
        const event1 = new ShowToastEvent({
            title: 'Contact Record Inserted From LWC Comp',
            message:'Record Successfully Created',
            variant:'success'
        });
        this.dispatchEvent(event1);
    }
    handleSubmit(e2){
        console.log('im chinna');
    }
}