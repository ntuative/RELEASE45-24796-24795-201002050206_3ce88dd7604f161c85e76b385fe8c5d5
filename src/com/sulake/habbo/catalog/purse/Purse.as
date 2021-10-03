package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1645:int = 0;
      
      private var var_2018:int = 0;
      
      private var var_2017:int = 0;
      
      private var var_1643:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2018;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2018 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1645 = param1;
      }
      
      public function get credits() : int
      {
         return var_2017;
      }
      
      public function get clubDays() : int
      {
         return var_1645;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1643;
      }
   }
}
