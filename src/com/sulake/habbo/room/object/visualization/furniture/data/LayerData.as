package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_427:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_438:int = 0;
      
      public static const const_874:int = 2;
      
      public static const const_919:int = 1;
      
      public static const const_535:Boolean = false;
      
      public static const const_708:String = "";
      
      public static const const_417:int = 0;
      
      public static const const_347:int = 0;
      
      public static const const_442:int = 0;
       
      
      private var var_1756:int = 0;
      
      private var var_1587:String = "";
      
      private var var_1545:int = 0;
      
      private var var_1760:int = 0;
      
      private var var_1757:Number = 0;
      
      private var var_1759:int = 255;
      
      private var var_1758:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1756;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1545 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1757;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1756 = param1;
      }
      
      public function get tag() : String
      {
         return var_1587;
      }
      
      public function get alpha() : int
      {
         return var_1759;
      }
      
      public function get ink() : int
      {
         return var_1545;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1757 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1760;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1758 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1758;
      }
      
      public function set tag(param1:String) : void
      {
         var_1587 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1759 = param1;
      }
   }
}
