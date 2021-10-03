package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_102:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1590:int;
      
      private var var_363:int;
      
      private var var_682:RoomData;
      
      private var var_1830:int;
      
      private var _ownerName:String;
      
      private var var_1977:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_363 = param1.readInteger();
         var_1590 = param1.readInteger();
         var_1977 = param1.readBoolean();
         var_1830 = param1.readInteger();
         _ownerName = param1.readString();
         var_102 = new RoomData(param1);
         var_682 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1590;
      }
      
      public function get event() : RoomData
      {
         return var_682;
      }
      
      public function get room() : RoomData
      {
         return var_102;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_102 != null)
         {
            var_102.dispose();
            var_102 = null;
         }
         if(var_682 != null)
         {
            var_682.dispose();
            var_682 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_363;
      }
      
      public function get ownerId() : int
      {
         return var_1830;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1977;
      }
   }
}
