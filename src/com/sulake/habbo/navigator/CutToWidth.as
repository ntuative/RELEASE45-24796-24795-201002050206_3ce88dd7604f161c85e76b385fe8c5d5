package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_372:int;
      
      private var var_167:String;
      
      private var var_185:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_167 = param1;
         var_185 = param2;
         var_372 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_185.text = var_167.substring(0,param1) + "...";
         return var_185.textWidth > var_372;
      }
   }
}
