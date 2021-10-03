package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1165:String;
      
      private var _disposed:Boolean;
      
      private var var_1377:String;
      
      private var var_1164:int;
      
      private var var_44:ModerationManager;
      
      private var var_748:IDropMenuWindow;
      
      private var var_376:ITextFieldWindow;
      
      private var var_45:IFrameWindow;
      
      private var var_289:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_44 = param1;
         var_1164 = param2;
         var_1377 = param3;
         var_1165 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_208)
         {
            return;
         }
         if(!var_289)
         {
            return;
         }
         var_376.text = "";
         var_289 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_45;
      }
      
      public function getId() : String
      {
         return var_1377;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_289 || false)
         {
            var_44.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_44.connection.send(new ModMessageMessageComposer(var_1164,var_376.text,var_1165));
         this.dispose();
      }
      
      public function show() : void
      {
         var_45 = IFrameWindow(var_44.getXmlWindow("send_msgs"));
         var_45.caption = "Msg To: " + var_1377;
         var_45.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_376 = ITextFieldWindow(var_45.findChildByName("message_input"));
         var_376.procedure = onInputClick;
         var_748 = IDropMenuWindow(var_45.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_748);
         var_748.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_45.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_45.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_44.initMsg.messageTemplates.length);
         param1.populate(var_44.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_45 != null)
         {
            var_45.destroy();
            var_45 = null;
         }
         var_748 = null;
         var_376 = null;
         var_44 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_36)
         {
            return;
         }
         var _loc3_:String = var_44.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_289 = false;
            var_376.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1342;
      }
   }
}
