package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_201:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_201 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_201;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_201 = new RoomSettingsFlatInfo();
         var_201.allowFurniMoving = param1.readInteger() == 1;
         var_201.doorMode = param1.readInteger();
         var_201.id = param1.readInteger();
         var_201.ownerName = param1.readString();
         var_201.type = param1.readString();
         var_201.name = param1.readString();
         var_201.description = param1.readString();
         var_201.showOwnerName = param1.readInteger() == 1;
         var_201.allowTrading = param1.readInteger() == 1;
         var_201.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
