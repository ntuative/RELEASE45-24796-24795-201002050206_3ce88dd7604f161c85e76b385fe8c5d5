package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1038:int = 80;
       
      
      private var var_435:Map;
      
      private var var_618:String = "";
      
      private var var_1127:Array;
      
      public function UserRegistry()
      {
         var_435 = new Map();
         var_1127 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_435.getValue(var_1127.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_618;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_435.getValue(param1) != null)
         {
            var_435.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_618);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_618 == "")
         {
            var_1127.push(param1);
         }
         var_435.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_435;
      }
      
      public function unregisterRoom() : void
      {
         var_618 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_435.length > const_1038)
         {
            _loc1_ = var_435.getKey(0);
            var_435.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_618 = param1;
         if(var_618 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
