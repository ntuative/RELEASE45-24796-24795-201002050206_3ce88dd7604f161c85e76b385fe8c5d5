package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class MarketplaceChart
   {
       
      
      private var var_75:Array;
      
      private var var_806:int;
      
      private var var_975:int;
      
      private var var_386:int;
      
      private var var_2317:int = -30;
      
      private var _y:Array;
      
      public function MarketplaceChart(param1:Array, param2:Array)
      {
         super();
         var_75 = param1.slice();
         _y = param2.slice();
      }
      
      private function getX(param1:int) : Number
      {
         return var_975 + var_975 / -var_2317 * 0;
      }
      
      private function getY(param1:int) : Number
      {
         return var_806 - var_806 / var_386 * 0;
      }
      
      public function draw(param1:int, param2:int) : BitmapData
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc3_:BitmapData = new BitmapData(param1,param2);
         if(!available)
         {
            return _loc3_;
         }
         var_386 = 0;
         for each(_loc4_ in _y)
         {
            if(_loc4_ > var_386)
            {
               var_386 = _loc4_;
            }
         }
         _loc5_ = Math.pow(10,int(var_386).toString().length - 1);
         var_386 = Math.ceil(var_386 / _loc5_) * _loc5_;
         _loc6_ = new TextField();
         _loc7_ = new TextFormat();
         _loc6_.embedFonts = true;
         _loc7_.font = "Volter";
         _loc7_.size = 9;
         _loc6_.defaultTextFormat = _loc7_;
         _loc6_.text = var_386.toString();
         _loc3_.draw(_loc6_);
         var_975 = param1 - _loc6_.textWidth - 2;
         var_806 = param2 - _loc6_.textHeight;
         _loc8_ = _loc6_.textWidth;
         _loc6_.text = "0";
         _loc3_.draw(_loc6_,new Matrix(1,0,0,1,_loc8_ - _loc6_.textWidth + 1,param2 - _loc6_.textHeight - 1));
         _loc9_ = new Shape();
         _loc9_.graphics.lineStyle(1,13421772);
         _loc9_.graphics.moveTo(0,0);
         _loc9_.graphics.lineTo(0,var_806);
         _loc10_ = 0;
         while(_loc10_ <= 5)
         {
            _loc4_ = (var_806 - 1) / 5 * _loc10_;
            _loc9_.graphics.moveTo(0,_loc4_);
            _loc9_.graphics.lineTo(var_975 - 1,_loc4_);
            _loc10_++;
         }
         _loc9_.graphics.lineStyle(2,255);
         _loc9_.graphics.moveTo(getX(0),getY(0));
         _loc10_ = 1;
         while(_loc10_ < var_75.length)
         {
            _loc9_.graphics.lineTo(getX(_loc10_),getY(_loc10_));
            _loc10_++;
         }
         _loc3_.draw(_loc9_,new Matrix(1,0,0,1,param1 - var_975,(param2 - var_806) / 2));
         return _loc3_;
      }
      
      public function get available() : Boolean
      {
         return var_75 && _y && false;
      }
   }
}