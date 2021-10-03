package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var _height:int;
      
      private var _width:int;
      
      private var var_916:Boolean;
      
      private var _offsetX:int;
      
      private var var_755:int;
      
      private var _name:String;
      
      private var var_770:IAsset;
      
      private var var_917:Boolean;
      
      public function GraphicAsset(param1:String, param2:IAsset, param3:Boolean, param4:Boolean, param5:int, param6:int)
      {
         var _loc8_:* = null;
         super();
         _name = param1;
         var _loc7_:BitmapDataAsset = param2 as BitmapDataAsset;
         if(_loc7_ != null)
         {
            _loc8_ = _loc7_.content as BitmapData;
         }
         if(_loc8_ != null)
         {
            var_770 = param2;
            _width = _loc8_.width;
            _height = _loc8_.height;
         }
         else
         {
            var_770 = null;
            _width = 0;
            _height = 0;
         }
         var_917 = param3;
         var_916 = param4;
         _offsetX = param5;
         var_755 = param6;
      }
      
      public function get flipH() : Boolean
      {
         return var_917;
      }
      
      public function get flipV() : Boolean
      {
         return var_916;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function dispose() : void
      {
         var_770 = null;
      }
      
      public function get offsetX() : int
      {
         if(!var_917)
         {
            return _offsetX;
         }
         return -(_width + _offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!var_916)
         {
            return var_755;
         }
         return -(_height + var_755);
      }
      
      public function get asset() : IAsset
      {
         return var_770;
      }
   }
}
