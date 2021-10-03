package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_110:DisplayObject;
      
      private var var_2294:uint;
      
      private var var_848:IWindowToolTipAgentService;
      
      private var var_847:IWindowMouseScalingService;
      
      private var var_358:IWindowContext;
      
      private var var_849:IWindowFocusManagerService;
      
      private var var_845:IWindowMouseListenerService;
      
      private var var_846:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2294 = 0;
         var_110 = param2;
         var_358 = param1;
         var_846 = new WindowMouseDragger(param2);
         var_847 = new WindowMouseScaler(param2);
         var_845 = new WindowMouseListener(param2);
         var_849 = new FocusManager(param2);
         var_848 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_847;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_849;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_848;
      }
      
      public function dispose() : void
      {
         if(var_846 != null)
         {
            var_846.dispose();
            var_846 = null;
         }
         if(var_847 != null)
         {
            var_847.dispose();
            var_847 = null;
         }
         if(var_845 != null)
         {
            var_845.dispose();
            var_845 = null;
         }
         if(var_849 != null)
         {
            var_849.dispose();
            var_849 = null;
         }
         if(var_848 != null)
         {
            var_848.dispose();
            var_848 = null;
         }
         var_358 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_845;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_846;
      }
   }
}
