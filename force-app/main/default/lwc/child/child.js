import { LightningElement,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { CloseActionScreenEvent } from 'lightning/actions';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
export default class LightningRecordEditForms extends NavigationMixin(LightningElement) {

    @api recordId ;
    // @api recordId;
    @api objectApiName;
    @api qid;
    @api record;

    @wire(getRecord, { recordId: '$qid', fields: FIELDS })
    quoterecord({data, error}){
        if(data){
            console.log('getRecord quote-id: ', quoteId);
            console.log('getRecord QUOTE DATA::: ', data);
            this.record = data;
        }
        if(error){
            console.log('we did not get any quote data from getRecord in quoteWindowQuote')
        }
    
    
    handleSuccess(even) {
        this.dispatchEvent(new CloseActionScreenEvent());
        const event1 = new ShowToastEvent({
            title: 'Contact Record Inserted From LWC Comp',
            message:'Record Successfully Created'+ event.detail.id,
            variant:'success'
        });
        this.dispatchEvent(event1);

    }
    handleSubmit(e){
        console.log('iam in');
    }
}