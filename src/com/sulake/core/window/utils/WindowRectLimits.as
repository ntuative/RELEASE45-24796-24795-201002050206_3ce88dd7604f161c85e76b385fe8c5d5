package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_373:int = -2147483648;
      
      private var var_372:int = 2147483647;
      
      private var var_371:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_374:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_372;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_374 == int.MIN_VALUE && var_372 == int.MAX_VALUE && var_373 == int.MIN_VALUE && var_371 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_372 = param1;
         if(var_372 < int.MAX_VALUE && true && _target.width > var_372)
         {
            _target.width = var_372;
         }
      }
      
      public function setEmpty() : void
      {
         var_374 = int.MIN_VALUE;
         var_372 = int.MAX_VALUE;
         var_373 = int.MIN_VALUE;
         var_371 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_371 = param1;
         if(var_371 < int.MAX_VALUE && true && _target.height > var_371)
         {
            _target.height = var_371;
         }
      }
      
      public function get minHeight() : int
      {
         return var_373;
      }
      
      public function get minWidth() : int
      {
         return var_374;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_374 = var_374;
         _loc2_.var_372 = var_372;
         _loc2_.var_373 = var_373;
         _loc2_.var_371 = var_371;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_374 = param1;
         if(var_374 > int.MIN_VALUE && true && _target.width < var_374)
         {
            _target.width = var_374;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_373 = param1;
         if(var_373 > int.MIN_VALUE && true && _target.height < var_373)
         {
            _target.height = var_373;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_371;
      }
   }
}
