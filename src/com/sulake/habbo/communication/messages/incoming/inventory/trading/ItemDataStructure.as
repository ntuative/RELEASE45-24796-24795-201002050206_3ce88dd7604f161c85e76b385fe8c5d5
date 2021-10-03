package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_946:String;
      
      private var var_1714:int;
      
      private var var_2214:int;
      
      private var var_1549:int;
      
      private var var_2217:int;
      
      private var _category:int;
      
      private var var_2357:int;
      
      private var var_2215:int;
      
      private var var_2218:int;
      
      private var var_2212:int;
      
      private var var_2213:int;
      
      private var var_2216:Boolean;
      
      private var var_1320:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1714 = param1;
         var_946 = param2;
         var_2214 = param3;
         var_2212 = param4;
         _category = param5;
         var_1320 = param6;
         var_1549 = param7;
         var_2218 = param8;
         var_2215 = param9;
         var_2213 = param10;
         var_2217 = param11;
         var_2216 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2212;
      }
      
      public function get extra() : int
      {
         return var_1549;
      }
      
      public function get stuffData() : String
      {
         return var_1320;
      }
      
      public function get groupable() : Boolean
      {
         return var_2216;
      }
      
      public function get creationMonth() : int
      {
         return var_2213;
      }
      
      public function get roomItemID() : int
      {
         return var_2214;
      }
      
      public function get itemType() : String
      {
         return var_946;
      }
      
      public function get itemID() : int
      {
         return var_1714;
      }
      
      public function get songID() : int
      {
         return var_1549;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2218;
      }
      
      public function get creationYear() : int
      {
         return var_2217;
      }
      
      public function get creationDay() : int
      {
         return var_2215;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
