import { LightningElement, track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

export default class CreatedRecord extends LightningElement {
   @track name;
   @track phone;
   @track fax;
   @track industry;

    callNM(event){
this.name=event.target.value;
    }
    callPh(event){
        this.phone=event.target.value;
    }
    callFax(event){
        this.fax=event.target.value;
    }
    callIndustry(event){
        this.industry=event.target.value;
    }

    callMe(event){
       // step:-1 ----> Create fields list
       const fields={'Name':this.name,'Phone':this.Phone,'Fax':this.fax,'Industry':this.industry};
       // step:-2 ----> Create Api Record with fields list
       const recordData={apiName:'Account',fields}
        // step:-3 ----> Call Imperation
         createRecord(recordData).then(response=>{
            alert('Account created Succssfuly with AccountId:'+response.id)
         }).catch(error=>{
            alert('Record creation failed with the follwing error:'+error.body.message)
         });
    }
}