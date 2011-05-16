package net.srirangan.dataanalyzer.controllers {
import mx.collections.ArrayCollection;

import net.srirangan.dataanalyzer.events.ClientEvent;
import net.srirangan.dataanalyzer.models.PresentationModel;
import net.srirangan.dataanalyzer.valueobjects.Attribute;

public class ClientController {

  [Inject]
  [Bindable]
  public var presentationModel:PresentationModel;

  [EventHandler(event="ClientEvent.CLIENT_LOAD")]
  public function handleAddUserEvent(event:ClientEvent):void {
    populateAttributes();
    populateRecords();
  }

  private function populateAttributes():void {
    var fullName:Attribute = createNewAttribute("fullName", "First name and last name");
    var nationality:Attribute = createNewAttribute("nationality", "Country of origin");
    var dateOfBirth:Attribute = createNewAttribute("dateOfBirth", "Date of birth in MM/DD/YYYY");
    var salary:Attribute = createNewAttribute("salary", "Salary last year");

    presentationModel.attributes = new ArrayCollection();
    presentationModel.attributes.addItem(fullName);
    presentationModel.attributes.addItem(nationality);
    presentationModel.attributes.addItem(dateOfBirth);
    presentationModel.attributes.addItem(salary);
  }

  private function createNewAttribute(name:String, description:String):Attribute {
    var attribute:Attribute = new Attribute();
    attribute.name = name;
    attribute.description = description;
    return attribute;
  }

  private function populateRecords():void {
    presentationModel.records = new ArrayCollection([
      {"fullName" : "Sri", "nationality" : "Indian", "dateOfBirth" : "1984", "salary" : "500"},
      {"fullName" : "Vikas", "nationality" : "Indian", "dateOfBirth" : "1983", "salary" : "600"},
      {"fullName" : "Narinder", "nationality" : "Indian", "dateOfBirth" : "1982", "salary" : "700"},
      {"fullName" : "Meetu", "nationality" : "Indian", "dateOfBirth" : "1981", "salary" : "800"}
    ]);
  }

}

}
