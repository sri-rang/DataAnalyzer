package net.srirangan.dataanalyzer.events {
import flash.events.Event;

public class ClientEvent extends Event {

  public static const CLIENT_LOAD:String = "clientLoad";

  public function ClientEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
    super(type, bubbles, cancelable);
  }
}

}
