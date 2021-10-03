package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2283:int;
      
      private var var_2281:int;
      
      private var var_2285:int;
      
      private var var_208:Array;
      
      private var var_2282:int;
      
      private var var_2284:int;
      
      private var var_306:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_306 = new Array();
         this.var_208 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2283;
      }
      
      public function get friends() : Array
      {
         return this.var_208;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2285;
      }
      
      public function get categories() : Array
      {
         return this.var_306;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2281;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2284;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2284 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_306.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_208.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2281 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2282;
      }
   }
}
