/**
 * Created by Lenovo on 17/6/2014.
 */
package body.events {
import welcome.events.*;

import flash.events.Event;

public class EBody extends Event {

    public static const WELCOME_BUTTON_PRESSED:String = "EBody.WelcomeButtonPressed";
    public static const WELCOME_BUTTON_B_PRESSED:String = "EBody.WelcomeButtonBPressed";
    public static const INIT:String = "EBody.Init";
    public static const VBODY_GO_BACK:String = "EBody.VBodyGoBack";
    public static const VBODY_B_GO_BACK:String = "EBody.VBodyBGoBack";
    public static const MODEL_UPDATED:String = "EBody.ModelUpdated";

    public function EBody(p_type:String, p_bubbles:Boolean = false, p_cancelable:Boolean = false) {
        super(p_type, p_bubbles, p_cancelable);
    }

    /**
     * Clone.
     */
    override public function clone():Event {
        var t_event:EBody = new EBody(this.type, this.bubbles, this.cancelable);

        return (t_event);
    }
}
}
