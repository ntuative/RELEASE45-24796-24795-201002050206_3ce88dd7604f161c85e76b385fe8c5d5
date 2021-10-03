package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1127:int = 4;
      
      public static const const_576:int = 3;
      
      public static const const_686:int = 2;
      
      public static const const_886:int = 1;
       
      
      private var var_1589:String;
      
      private var _disposed:Boolean;
      
      private var var_1590:int;
      
      private var var_1584:Boolean;
      
      private var var_776:String;
      
      private var var_724:PublicRoomData;
      
      private var var_1585:int;
      
      private var _index:int;
      
      private var var_1586:String;
      
      private var _type:int;
      
      private var var_1587:String;
      
      private var var_723:GuestRoomData;
      
      private var var_1588:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1589 = param1.readString();
         var_1588 = param1.readString();
         var_1584 = param1.readInteger() == 1;
         var_1586 = param1.readString();
         var_776 = param1.readString();
         var_1585 = param1.readInteger();
         var_1590 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_886)
         {
            var_1587 = param1.readString();
         }
         else if(_type == const_576)
         {
            var_724 = new PublicRoomData(param1);
         }
         else if(_type == const_686)
         {
            var_723 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1585;
      }
      
      public function get popupCaption() : String
      {
         return var_1589;
      }
      
      public function get userCount() : int
      {
         return var_1590;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1584;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_886)
         {
            return 0;
         }
         if(this.type == const_686)
         {
            return this.var_723.maxUserCount;
         }
         if(this.type == const_576)
         {
            return this.var_724.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1588;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_723 != null)
         {
            this.var_723.dispose();
            this.var_723 = null;
         }
         if(this.var_724 != null)
         {
            this.var_724.dispose();
            this.var_724 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_723;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1586;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_724;
      }
      
      public function get picRef() : String
      {
         return var_776;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1587;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
