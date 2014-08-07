/**
 * Created by Dickson on 18/6/2014.
 */
package bodyB.controllers {
import body.models.MBody;

import bodyB.models.MBodyB;

import mx.collections.ArrayCollection;

public class CBodyB {

    [Embed(source="/data/listb.json", mimeType="application/octet-stream")]
    public var name_list_json_class:Class;

    [Inject]
    public var _model:MBodyB;

    public function CBodyB() {
    }
    [EventHandler(event="EBodyB.Init")]
    public function loadNameList():void{
        trace("control init list");
        var t_json_array:Array = JSON.parse (new name_list_json_class ()) as Array;
        trace(t_json_array);
        var t_name_list_ac:ArrayCollection = new ArrayCollection(t_json_array);

        this._model.names_ac = t_name_list_ac;
    }
}
}
