import { LightningElement } from 'lwc';
import hasAccessUI from '@salesforce/customPermission/custompermission';

export default class UserPermissionBasedOnUI_EP_23 extends LightningElement {
   
   
    get isUIAccessible(){
        return hasAccessUI;
    }
}