import { LightningElement,wire,track,api } from 'lwc';
import gettrecordss from '@salesforce/apex/datatodatabaseaTable.method1';
export default class DatabaseTable extends LightningElement {
    @api acccreatee;
    @api errorrs;
    @api columns = [
        { label: 'Label', fieldName: 'name' },
        { label: 'Website', fieldName: 'website', type: 'url' },
        { label: 'Phone', fieldName: 'phone', type: 'phone' },
        { label: 'Tradestyle', fieldName: 'Tradestyle', type: 'Text' }
    
    ];
    @wire(gettrecordss)
    acccreatee({data, error}){
        if(data){
            this.acccreatee= data;
        }else{
            this.errorrs = error;
        }
        }  
    
    }