package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1489:int = 9;
      
      public static const const_1427:int = 4;
      
      public static const const_1424:int = 1;
      
      public static const const_1350:int = 10;
      
      public static const const_1458:int = 2;
      
      public static const const_1206:int = 7;
      
      public static const const_1200:int = 11;
      
      public static const const_1445:int = 3;
      
      public static const const_1371:int = 8;
      
      public static const const_1141:int = 5;
      
      public static const const_1518:int = 6;
      
      public static const const_1345:int = 12;
       
      
      private var var_1958:String;
      
      private var _roomId:int;
      
      private var var_1104:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1958;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1104 = param1.readInteger();
         var_1958 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1104;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
