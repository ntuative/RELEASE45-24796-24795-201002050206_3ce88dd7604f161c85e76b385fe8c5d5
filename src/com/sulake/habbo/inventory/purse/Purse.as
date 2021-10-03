package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1647:Boolean = false;
      
      private var var_1644:int = 0;
      
      private var var_1645:int = 0;
      
      private var var_1646:int = 0;
      
      private var var_1366:int = 0;
      
      private var var_1643:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1366 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1644;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1647;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1647 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1644 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1645 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1366;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1646 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1645;
      }
      
      public function get pixelBalance() : int
      {
         return var_1646;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1643 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1643;
      }
   }
}
