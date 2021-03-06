/**
 * Created by Lenovo on 17/6/2014.
 */
package welcome.events {
import flash.events.Event;

public class EApp extends Event {

    public static const WELCOME_BUTTON_PRESSED:String = "EApp.WelcomeButtonPressed";
    public static const WELCOME_BUTTON_B_PRESSED:String = "EApp.WelcomeButtonBPressed";
    public static const VBODY_GO_BACK:String = "EApp.VBodyGoBack";
    public static const VBODY_B_GO_BACK:String = "EApp.VBodyBGoBack";

    public function EApp(p_type:String, p_bubbles:Boolean = false, p_cancelable:Boolean = false) {
        super(p_type, p_bubbles, p_cancelable);
    }

    /**
     * Clone.
     */
    override public function clone():Event {
        var t_event:EApp = new EApp(this.type, this.bubbles, this.cancelable);

        return (t_event);
    }
}
}
