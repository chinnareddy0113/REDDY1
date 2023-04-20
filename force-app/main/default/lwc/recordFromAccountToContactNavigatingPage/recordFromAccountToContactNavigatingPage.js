import { LightningElement,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { CloseActionScreenEvent } from 'lightning/actions';
import { NavigationMixin } from 'lightning/navigation';
export default class LightningRecordEditForms extends NavigationMixin(LightningElement) {
    @api recordId;
    
    handleSuccess(event) {
        this.dispatchEvent(new CloseActionScreenEvent());
        const event1 = new ShowToastEvent({
            title: 'Contact Record Inserted From LWC Comp',
            message:'Record Successfully Created'+ event.detail.id,
            variant:'success'
        });
        this.dispatchEvent(event1);

        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'home',
            },
        });
    }
    handleSubmit(e){
        console.log('iam in');
    }
}