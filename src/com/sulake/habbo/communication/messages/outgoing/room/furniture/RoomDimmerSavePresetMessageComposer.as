package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1763:int;
      
      private var var_1764:int;
      
      private var var_1766:Boolean;
      
      private var var_1765:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1767:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1764 = param1;
         var_1763 = param2;
         var_1765 = param3;
         var_1767 = param4;
         var_1766 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1764,var_1763,var_1765,var_1767,int(var_1766)];
      }
      
      public function dispose() : void
      {
      }
   }
}
