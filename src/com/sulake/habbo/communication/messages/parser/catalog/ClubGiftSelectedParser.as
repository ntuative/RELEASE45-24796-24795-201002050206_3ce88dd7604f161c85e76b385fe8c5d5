package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_1639:String;
      
      private var var_795:String;
      
      private var var_1218:int;
      
      private var var_1143:int;
      
      private var var_1092:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get classId() : int
      {
         return var_1143;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1092 = param1.readString();
         var_1639 = param1.readString();
         var_1143 = param1.readInteger();
         var_795 = param1.readString();
         var_1218 = param1.readInteger();
         return true;
      }
      
      public function get contentType() : String
      {
         return var_1639;
      }
      
      public function get productCode() : String
      {
         return var_1092;
      }
   }
}
