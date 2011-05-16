package net.srirangan.dataanalyzer.valueobjects {
import spark.components.gridClasses.GridColumn;

public class Attribute extends GridColumn {

  private var _name:String;

  private var _description:String;

  public function get name():String {
    return _name;
  }

  public function set name(name:String):void {
    this._name = name;
    this.dataField = name;
    this.headerText = _name;
  }

  public function get description():String {
    return _description;
  }

  public function set description(description:String):void {
    _description = description;
  }

}

}
