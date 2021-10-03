package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1320:String;
      
      private var var_946:String;
      
      private var var_1695:Boolean;
      
      private var var_1549:int;
      
      private var var_1694:int;
      
      private var var_1698:Boolean;
      
      private var var_1563:String = "";
      
      private var var_1697:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1143:int;
      
      private var var_1699:Boolean;
      
      private var var_2180:int = -1;
      
      private var var_1696:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1694 = param1;
         var_946 = param2;
         _objId = param3;
         var_1143 = param4;
         _category = param5;
         var_1320 = param6;
         var_1695 = param7;
         var_1697 = param8;
         var_1699 = param9;
         var_1698 = param10;
         var_1696 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1563;
      }
      
      public function get extra() : int
      {
         return var_1549;
      }
      
      public function get classId() : int
      {
         return var_1143;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1698;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1695;
      }
      
      public function get stripId() : int
      {
         return var_1694;
      }
      
      public function get stuffData() : String
      {
         return var_1320;
      }
      
      public function get songId() : int
      {
         return var_2180;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1563 = param1;
         var_1549 = param2;
      }
      
      public function get itemType() : String
      {
         return var_946;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1696;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1699;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1697;
      }
   }
}
