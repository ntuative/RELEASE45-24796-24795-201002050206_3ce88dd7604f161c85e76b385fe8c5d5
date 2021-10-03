package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1590:int;
      
      private var var_1613:String;
      
      private var var_1612:int;
      
      private var var_1610:int;
      
      private var var_682:Boolean;
      
      private var var_1614:Boolean;
      
      private var var_363:int;
      
      private var var_1148:String;
      
      private var var_1616:int;
      
      private var var_1149:int;
      
      private var _ownerName:String;
      
      private var var_618:String;
      
      private var var_1611:int;
      
      private var var_1615:RoomThumbnailData;
      
      private var var_1617:Boolean;
      
      private var var_590:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_590 = new Array();
         super();
         var_363 = param1.readInteger();
         var_682 = param1.readBoolean();
         var_618 = param1.readString();
         _ownerName = param1.readString();
         var_1616 = param1.readInteger();
         var_1590 = param1.readInteger();
         var_1611 = param1.readInteger();
         var_1148 = param1.readString();
         var_1612 = param1.readInteger();
         var_1617 = param1.readBoolean();
         var_1610 = param1.readInteger();
         var_1149 = param1.readInteger();
         var_1613 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_590.push(_loc4_);
            _loc3_++;
         }
         var_1615 = new RoomThumbnailData(param1);
         var_1614 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1611;
      }
      
      public function get roomName() : String
      {
         return var_618;
      }
      
      public function get userCount() : int
      {
         return var_1590;
      }
      
      public function get score() : int
      {
         return var_1610;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1613;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1617;
      }
      
      public function get tags() : Array
      {
         return var_590;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1614;
      }
      
      public function get event() : Boolean
      {
         return var_682;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_590 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1149;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1612;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1615;
      }
      
      public function get doorMode() : int
      {
         return var_1616;
      }
      
      public function get flatId() : int
      {
         return var_363;
      }
      
      public function get description() : String
      {
         return var_1148;
      }
   }
}
