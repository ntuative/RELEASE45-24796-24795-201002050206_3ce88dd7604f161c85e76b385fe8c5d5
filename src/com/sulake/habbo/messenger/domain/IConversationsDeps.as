package com.sulake.habbo.messenger.domain
{
   public interface IConversationsDeps
   {
       
      
      function getTabCount() : int;
      
      function getText(param1:String) : String;
      
      function addMsgToView(param1:Conversation, param2:Message) : void;
      
      function refresh(param1:Boolean) : void;
      
      function createConversation(param1:int) : Conversation;
   }
}
