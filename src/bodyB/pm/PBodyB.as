/**
 * Created by Lenovo on 14/7/2014.
 */
package bodyB.pm {
import body.models.MBody;

import bodyB.models.MBodyB;

import mx.collections.ArrayCollection;

public class PBodyB {
    [Bindable]
    public var data_names_ac:ArrayCollection;

    [Inject]
    public var _model:MBodyB;

    public function PBodyB() {

    }

    [EventHandler(event="EBodyB.ModelUpdated")]
    public function fetch_data_names():void{
        trace("pm knows about model update");
        this.data_names_ac = this._model.names_ac;
    }
}
}
