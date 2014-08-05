/**
 * Created by Lenovo on 17/6/2014.
 */
package app.events {
import flash.events.Event;

public class EApp extends Event {

    public static const WELCOME_BUTTON_PRESSED:String = "EApp.WelcomeButtonPressed";
    public static const INIT_VBODY:String = "EApp.InitVBody";
    public static const VBODY_GO_BACK:String = "EApp.VBodyGoBack";
    public static const MODEL_UPDATED:String = "EApp.ModelUpdated";

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
