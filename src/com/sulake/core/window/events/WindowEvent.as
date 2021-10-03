package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_271:String = "WE_CHILD_RESIZED";
      
      public static const const_1177:String = "WE_CLOSE";
      
      public static const const_1241:String = "WE_DESTROY";
      
      public static const const_121:String = "WE_CHANGE";
      
      public static const const_1219:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1466:String = "WE_PARENT_RESIZE";
      
      public static const const_76:String = "WE_UPDATE";
      
      public static const const_1225:String = "WE_MAXIMIZE";
      
      public static const const_441:String = "WE_DESTROYED";
      
      public static const const_770:String = "WE_UNSELECT";
      
      public static const const_1259:String = "WE_MAXIMIZED";
      
      public static const const_1563:String = "WE_UNLOCKED";
      
      public static const const_383:String = "WE_CHILD_REMOVED";
      
      public static const const_144:String = "WE_OK";
      
      public static const const_26:String = "WE_RESIZED";
      
      public static const const_1125:String = "WE_ACTIVATE";
      
      public static const const_243:String = "WE_ENABLED";
      
      public static const const_350:String = "WE_CHILD_RELOCATED";
      
      public static const const_1161:String = "WE_CREATE";
      
      public static const const_623:String = "WE_SELECT";
      
      public static const const_158:String = "";
      
      public static const const_1446:String = "WE_LOCKED";
      
      public static const const_1534:String = "WE_PARENT_RELOCATE";
      
      public static const const_1543:String = "WE_CHILD_REMOVE";
      
      public static const const_1535:String = "WE_CHILD_RELOCATE";
      
      public static const const_1544:String = "WE_LOCK";
      
      public static const const_208:String = "WE_FOCUSED";
      
      public static const const_571:String = "WE_UNSELECTED";
      
      public static const const_993:String = "WE_DEACTIVATED";
      
      public static const const_1210:String = "WE_MINIMIZED";
      
      public static const const_1558:String = "WE_ARRANGED";
      
      public static const const_1423:String = "WE_UNLOCK";
      
      public static const const_1565:String = "WE_ATTACH";
      
      public static const const_1115:String = "WE_OPEN";
      
      public static const const_1285:String = "WE_RESTORE";
      
      public static const const_1553:String = "WE_PARENT_RELOCATED";
      
      public static const const_1294:String = "WE_RELOCATE";
      
      public static const const_1430:String = "WE_CHILD_RESIZE";
      
      public static const const_1514:String = "WE_ARRANGE";
      
      public static const const_1156:String = "WE_OPENED";
      
      public static const const_1264:String = "WE_CLOSED";
      
      public static const const_1468:String = "WE_DETACHED";
      
      public static const const_1589:String = "WE_UPDATED";
      
      public static const const_1234:String = "WE_UNFOCUSED";
      
      public static const const_364:String = "WE_RELOCATED";
      
      public static const const_1171:String = "WE_DEACTIVATE";
      
      public static const const_207:String = "WE_DISABLED";
      
      public static const const_565:String = "WE_CANCEL";
      
      public static const const_538:String = "WE_ENABLE";
      
      public static const const_1321:String = "WE_ACTIVATED";
      
      public static const const_1278:String = "WE_FOCUS";
      
      public static const const_1494:String = "WE_DETACH";
      
      public static const const_1178:String = "WE_RESTORED";
      
      public static const const_1184:String = "WE_UNFOCUS";
      
      public static const const_36:String = "WE_SELECTED";
      
      public static const const_1262:String = "WE_PARENT_RESIZED";
      
      public static const const_1207:String = "WE_CREATED";
      
      public static const const_1527:String = "WE_ATTACHED";
      
      public static const const_1362:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1559:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1330:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1559 = param3;
         var_1330 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1330;
      }
      
      public function get related() : IWindow
      {
         return var_1559;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1330 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
