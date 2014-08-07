/**
 * Created by Lenovo on 17/6/2014.
 */
package bodyB.events {
import welcome.events.*;

import flash.events.Event;

public class EBodyB extends Event {

    public static const WELCOME_BUTTON_PRESSED:String = "EBodyB.WelcomeButtonPressed";
    public static const WELCOME_BUTTON_B_PRESSED:String = "EBodyB.WelcomeButtonBPressed";
    public static const INIT:String = "EBodyB.Init";
    public static const VBODY_GO_BACK:String = "EBodyB.VBodyGoBack";
    public static const VBODY_B_GO_BACK:String = "EBodyB.VBodyBGoBack";
    public static const MODEL_UPDATED:String = "EBodyB.ModelUpdated";

    public function EBodyB(p_type:String, p_bubbles:Boolean = false, p_cancelable:Boolean = false) {
        super(p_type, p_bubbles, p_cancelable);
    }

    /**
     * Clone.
     */
    override public function clone():Event {
        var t_event:EBodyB = new EBodyB(this.type, this.bubbles, this.cancelable);

        return (t_event);
    }
}
}
