import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import ACC_PHONE from '@salesforce/schema/Account.Phone';
import ACC_NUMBER from '@salesforce/schema/Account.AccountNumber';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class LightningRecordFormEditExampleLWC extends LightningElement {
    //@api recordId='0012w00001G34wHAAR';
    @api objectApiName='Account';
    fields = [NAME_FIELD, ACC_PHONE, ACC_NUMBER];
    handleSuccess(event){
        console.log('Account detail : ',event.detail.fields);
        console.log('Account name : ',event.detail.fields.Name);
        const event1 = new ShowToastEvent({
            title: 'Account Record Inserted From LWC Comp',
            message:'Record Successfully Created'+  event.detail.id,
            variant:'info'
        });
        this.dispatchEvent(event1);
    }
}