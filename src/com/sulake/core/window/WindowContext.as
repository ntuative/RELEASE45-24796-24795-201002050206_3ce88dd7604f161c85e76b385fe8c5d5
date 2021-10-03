package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_880:MouseEventQueue;
      
      public static var var_1553:IMouseCursor;
      
      public static const const_1476:int = 2;
      
      private static var var_932:Factory;
      
      private static var var_119:IWindowRenderer;
      
      public static var var_1319:KeyboardEventQueue;
      
      public static const const_1547:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1587:int = 0;
      
      public static const const_1497:int = 3;
      
      public static const const_1188:int = 4;
       
      
      protected var var_2242:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_619:WindowController;
      
      private var var_622:Date;
      
      protected var var_2243:IWindowParser;
      
      protected var var_886:Error;
      
      protected var var_2241:IInternalWindowServices;
      
      protected var var_88:WindowController;
      
      protected var var_1321:int = -1;
      
      protected var var_80:IDesktopWindow;
      
      private var var_1393:Boolean = false;
      
      protected var var_2326:Boolean = true;
      
      private var var_170:Boolean = false;
      
      protected var var_1057:SubstituteParentController;
      
      private var var_2269:Point;
      
      protected var var_298:DisplayObjectContainer;
      
      private var var_308:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_527:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_527 = new Point();
         var_2269 = new Point();
         super();
         _name = param1;
         var_119 = param2;
         _localization = param4;
         var_298 = param5;
         var_2241 = new InternalWindowServices(this,param5);
         var_2242 = param3;
         var_2243 = new WindowParser(this);
         var_622 = new Date();
         if(var_932 == null)
         {
            var_932 = new Factory();
         }
         if(var_880 == null)
         {
            var_880 = new MouseEventQueue(param5);
         }
         if(var_1319 == null)
         {
            var_1319 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_80 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_298.addChild(var_80.getDisplayObject());
         var_298.doubleClickEnabled = true;
         var_298.addEventListener(Event.RESIZE,stageResizedHandler);
         var_88 = WindowController(var_80);
         var_1057 = new SubstituteParentController(this);
         var_308 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_80)
         {
            var_80 = null;
         }
         if(param1.state != WindowState.const_406)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_932.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1188,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1057;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_80,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_80;
      }
      
      public function render(param1:uint) : void
      {
         var_1393 = true;
         var_119.update(param1);
         var_1393 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_298.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_298.removeChild(IGraphicContextHost(var_80).getGraphicContext(true) as DisplayObject);
         var_80.destroy();
         var_80 = null;
         var_1057.destroy();
         var_1057 = null;
         var_932 = null;
         var_119 = null;
         var_88 = null;
         var_622 = null;
         var_308 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_80 != null && true)
         {
            if(var_298 is Stage)
            {
               var_80.width = Stage(var_298).stageWidth;
               var_80.height = Stage(var_298).stageHeight;
            }
            else
            {
               var_80.width = var_298.width;
               var_80.height = var_298.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_119.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2243;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2242;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_170 = true;
         if(var_886)
         {
            throw var_886;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_880;
         _loc7_.begin();
         var_527.x = -1;
         var_527.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_527.x || _loc2_.stageY != var_527.y)
            {
               var_527.x = _loc2_.stageX;
               var_527.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_80.groupChildrenUnderPoint(var_527,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_88 != var_80 && true)
                  {
                     var_88.getGlobalPosition(_loc6_);
                     var_88.update(var_88,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_88 = WindowController(var_80);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_88)
                     {
                        if(true)
                        {
                           var_88.getGlobalPosition(_loc6_);
                           var_88.update(var_88,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_88 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_88 && true)
                     {
                        if(var_308 != null)
                        {
                           var_308.mouseEventReceived(_loc2_.type,var_88);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_88)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_80)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_170 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_886 = param2;
         var_1321 = param1;
         if(var_2326)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_886;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1553 == null)
         {
            var_1553 = new MouseCursorControl(var_298 as Stage);
         }
         return var_1553;
      }
      
      public function flushError() : void
      {
         var_886 = null;
         var_1321 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1321;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_32))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_47))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_119.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_380))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_619 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_619 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_619 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_619 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_619 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_80.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2241;
      }
   }
}
