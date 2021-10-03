package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1774:int;
      
      private var var_1094:String;
      
      private var var_1777:int;
      
      private var var_1775:int;
      
      private var var_1776:int;
      
      private var var_1778:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1094;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1778;
      }
      
      public function get responseType() : int
      {
         return var_1775;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1777;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1094 = param1.readString();
         var_1777 = param1.readInteger();
         var_1774 = param1.readInteger();
         var_1776 = param1.readInteger();
         var_1775 = param1.readInteger();
         var_1778 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1774;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1776;
      }
   }
}
