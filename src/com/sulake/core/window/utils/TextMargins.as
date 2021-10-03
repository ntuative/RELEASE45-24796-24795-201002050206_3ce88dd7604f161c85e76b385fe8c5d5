package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_819:int;
      
      private var _right:int;
      
      private var var_818:int;
      
      private var var_820:int;
      
      private var var_169:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_818 = param1;
         var_820 = param2;
         _right = param3;
         var_819 = param4;
         var_169 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_819 = param1;
         var_169(this);
      }
      
      public function get left() : int
      {
         return var_818;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_818 == 0 && _right == 0 && var_820 == 0 && var_819 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_820 = param1;
         var_169(this);
      }
      
      public function get top() : int
      {
         return var_820;
      }
      
      public function set left(param1:int) : void
      {
         var_818 = param1;
         var_169(this);
      }
      
      public function get bottom() : int
      {
         return var_819;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_818,var_820,_right,var_819,param1);
      }
      
      public function dispose() : void
      {
         var_169 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_169(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
