package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2151:int;
      
      private var var_2150:String;
      
      private var var_1731:int;
      
      private var _disposed:Boolean;
      
      private var var_2152:int;
      
      private var var_1730:String;
      
      private var var_1072:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1730 = param1.readString();
         var_2151 = param1.readInteger();
         var_1731 = param1.readInteger();
         var_2150 = param1.readString();
         var_2152 = param1.readInteger();
         var_1072 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2152;
      }
      
      public function get worldId() : int
      {
         return var_1731;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1730;
      }
      
      public function get unitPort() : int
      {
         return var_2151;
      }
      
      public function get castLibs() : String
      {
         return var_2150;
      }
      
      public function get nodeId() : int
      {
         return var_1072;
      }
   }
}
