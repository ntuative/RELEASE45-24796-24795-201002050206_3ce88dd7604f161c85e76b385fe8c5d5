package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendRequestData;
   
   public class FriendRequest implements IDisposable
   {
      
      public static const const_289:int = 2;
      
      public static const const_124:int = 1;
      
      public static const const_936:int = 4;
      
      public static const const_286:int = 3;
       
      
      private var var_1726:int;
      
      private var _view:IWindowContainer;
      
      private var var_1725:String;
      
      private var var_29:int = 1;
      
      private var _disposed:Boolean;
      
      private var var_1074:int;
      
      public function FriendRequest(param1:FriendRequestData)
      {
         super();
         var_1074 = param1.requestId;
         var_1725 = param1.requesterName;
         var_1726 = param1.requesterUserId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get requesterName() : String
      {
         return var_1725;
      }
      
      public function get requesterUserId() : int
      {
         return var_1726;
      }
      
      public function get requestId() : int
      {
         return var_1074;
      }
      
      public function get state() : int
      {
         return var_29;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         _view = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_29 = param1;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(view != null)
         {
            view.destroy();
            view = null;
         }
      }
   }
}
