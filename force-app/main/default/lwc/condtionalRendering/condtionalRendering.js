import { LightningElement } from 'lwc';

export default class CondtionalRendering extends LightningElement {
    value ='chinna salesforce';
    showme='';
    handlechange(event){
        this.showme=event.target.checked;
    }
}