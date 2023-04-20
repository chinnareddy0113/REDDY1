import { LightningElement } from 'lwc';

export default class BindLWC extends LightningElement {
    myvalue='chinna';
    handlechange(event){
        this.myvalue= event.target.value;
    }
}