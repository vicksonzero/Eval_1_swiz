/**
 * Created by Lenovo on 14/7/2014.
 */
package app.models {
import app.events.EApp;

import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;

public class MBody {
    private var _names_ac:ArrayCollection;

    [Dispatcher]
    public var _dispatcher:IEventDispatcher;

    public function MBody() {}

    public function get names_ac():ArrayCollection {
        return _names_ac;
    }

    public function set names_ac(value:ArrayCollection):void {
        trace("set names_ac on  model");
        _names_ac = value;
        var t_e_app = new EApp(EApp.MODEL_UPDATED);
        this._dispatcher.dispatchEvent(t_e_app);
    }
}
}
