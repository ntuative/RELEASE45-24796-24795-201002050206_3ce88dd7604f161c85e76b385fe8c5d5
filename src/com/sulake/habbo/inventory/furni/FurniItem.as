package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1694:int;
      
      private var var_1697:Boolean;
      
      private var var_2180:int;
      
      private var var_1320:String;
      
      private var var_2186:Boolean = false;
      
      private var var_1696:int;
      
      private var var_413:int;
      
      private var var_946:String;
      
      private var var_1563:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1143:int;
      
      private var var_1699:Boolean;
      
      private var var_2187:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1694 = param1;
         var_946 = param2;
         _objId = param3;
         var_1143 = param4;
         var_1320 = param5;
         var_1697 = param6;
         var_1699 = param7;
         var_1696 = param8;
         var_1563 = param9;
         var_2180 = param10;
         var_413 = -1;
      }
      
      public function get songId() : int
      {
         return var_2180;
      }
      
      public function get iconCallbackId() : int
      {
         return var_413;
      }
      
      public function get expiryTime() : int
      {
         return var_1696;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2187 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2186 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_413 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1699;
      }
      
      public function get slotId() : String
      {
         return var_1563;
      }
      
      public function get classId() : int
      {
         return var_1143;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1697;
      }
      
      public function get stuffData() : String
      {
         return var_1320;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1694;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2186;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2187;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_946;
      }
   }
}
