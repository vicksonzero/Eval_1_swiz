/**
 * Created by Lenovo on 14/7/2014.
 */
package body.pm {
import body.models.MBody;

import mx.collections.ArrayCollection;

public class PBody {
    [Bindable]
    public var data_names_ac:ArrayCollection;

    [Inject]
    public var _model:MBody;

    public function PBody() {

    }

    [EventHandler(event="EBody.ModelUpdated")]
    public function fetch_data_names():void{
        trace("pm knows about model update");
        this.data_names_ac = this._model.names_ac;
    }
}
}
