package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1211:String = "WN_CREATED";
      
      public static const const_923:String = "WN_DISABLE";
      
      public static const const_925:String = "WN_DEACTIVATED";
      
      public static const const_967:String = "WN_OPENED";
      
      public static const const_797:String = "WN_CLOSED";
      
      public static const const_871:String = "WN_DESTROY";
      
      public static const const_1501:String = "WN_ARRANGED";
      
      public static const const_378:String = "WN_PARENT_RESIZED";
      
      public static const const_945:String = "WN_ENABLE";
      
      public static const const_769:String = "WN_RELOCATE";
      
      public static const const_826:String = "WN_FOCUS";
      
      public static const const_963:String = "WN_PARENT_RELOCATED";
      
      public static const const_340:String = "WN_PARAM_UPDATED";
      
      public static const const_674:String = "WN_PARENT_ACTIVATED";
      
      public static const const_200:String = "WN_RESIZED";
      
      public static const const_863:String = "WN_CLOSE";
      
      public static const const_920:String = "WN_PARENT_REMOVED";
      
      public static const const_216:String = "WN_CHILD_RELOCATED";
      
      public static const const_486:String = "WN_ENABLED";
      
      public static const const_241:String = "WN_CHILD_RESIZED";
      
      public static const const_888:String = "WN_MINIMIZED";
      
      public static const const_531:String = "WN_DISABLED";
      
      public static const const_203:String = "WN_CHILD_ACTIVATED";
      
      public static const const_402:String = "WN_STATE_UPDATED";
      
      public static const const_589:String = "WN_UNSELECTED";
      
      public static const const_398:String = "WN_STYLE_UPDATED";
      
      public static const const_1572:String = "WN_UPDATE";
      
      public static const const_419:String = "WN_PARENT_ADDED";
      
      public static const const_625:String = "WN_RESIZE";
      
      public static const const_647:String = "WN_CHILD_REMOVED";
      
      public static const const_1470:String = "";
      
      public static const const_952:String = "WN_RESTORED";
      
      public static const const_305:String = "WN_SELECTED";
      
      public static const const_853:String = "WN_MINIMIZE";
      
      public static const const_799:String = "WN_FOCUSED";
      
      public static const const_1138:String = "WN_LOCK";
      
      public static const const_266:String = "WN_CHILD_ADDED";
      
      public static const const_872:String = "WN_UNFOCUSED";
      
      public static const const_439:String = "WN_RELOCATED";
      
      public static const const_837:String = "WN_DEACTIVATE";
      
      public static const const_1158:String = "WN_CRETAE";
      
      public static const const_777:String = "WN_RESTORE";
      
      public static const const_317:String = "WN_ACTVATED";
      
      public static const const_1130:String = "WN_LOCKED";
      
      public static const const_464:String = "WN_SELECT";
      
      public static const const_827:String = "WN_MAXIMIZE";
      
      public static const const_943:String = "WN_OPEN";
      
      public static const const_567:String = "WN_UNSELECT";
      
      public static const const_1536:String = "WN_ARRANGE";
      
      public static const const_1245:String = "WN_UNLOCKED";
      
      public static const const_1459:String = "WN_UPDATED";
      
      public static const const_951:String = "WN_ACTIVATE";
      
      public static const const_1172:String = "WN_UNLOCK";
      
      public static const const_905:String = "WN_MAXIMIZED";
      
      public static const const_833:String = "WN_DESTROYED";
      
      public static const const_974:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1559,cancelable);
      }
   }
}
