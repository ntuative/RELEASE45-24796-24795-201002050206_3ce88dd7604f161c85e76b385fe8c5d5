package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2048:int;
      
      private var var_1139:int;
      
      private var _type:int;
      
      private var var_2047:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2047;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2048 = param1;
      }
      
      public function get duration() : int
      {
         return var_1139;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2047 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1139 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2048;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
