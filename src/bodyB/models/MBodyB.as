/**
 * Created by Lenovo on 14/7/2014.
 */
package bodyB.models {
import bodyB.events.EBodyB;

import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;

public class MBodyB {
    private var _names_ac:ArrayCollection;

    [Dispatcher]
    public var _dispatcher:IEventDispatcher;

    public function MBodyB() {}

    public function get names_ac():ArrayCollection {
        return _names_ac;
    }

    public function set names_ac(value:ArrayCollection):void {
        trace("set names_ac on  model");
        _names_ac = value;
        var t_e_app:EBodyB = new EBodyB(EBodyB.MODEL_UPDATED);
        this._dispatcher.dispatchEvent(t_e_app);
    }
}
}
