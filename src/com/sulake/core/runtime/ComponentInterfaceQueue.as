package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1315:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_876:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1315 = param1;
         var_876 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_876;
      }
      
      public function get identifier() : IID
      {
         return var_1315;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1315 = null;
            while(false)
            {
               var_876.pop();
            }
            var_876 = null;
         }
      }
   }
}
