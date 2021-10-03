package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1342:String;
      
      private var var_1582:int;
      
      private var var_1583:int;
      
      private var var_1580:int;
      
      private var var_1581:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1582 = param1.readInteger();
         var_1580 = param1.readInteger();
         var_1583 = param1.readInteger();
         var_1581 = param1.readString();
         var_1342 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1342;
      }
      
      public function get hour() : int
      {
         return var_1582;
      }
      
      public function get minute() : int
      {
         return var_1580;
      }
      
      public function get chatterName() : String
      {
         return var_1581;
      }
      
      public function get chatterId() : int
      {
         return var_1583;
      }
   }
}
