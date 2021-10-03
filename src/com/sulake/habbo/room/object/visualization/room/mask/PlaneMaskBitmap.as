package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_31:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1650:Number = -1;
      
      private var var_770:IGraphicAsset = null;
      
      private var var_1651:Number = 1;
      
      private var var_1649:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1650 = param2;
         _normalMaxX = param3;
         var_1649 = param4;
         var_1651 = param5;
         var_770 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1651;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1650;
      }
      
      public function get normalMinY() : Number
      {
         return var_1649;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_770;
      }
      
      public function dispose() : void
      {
         var_770 = null;
      }
   }
}
