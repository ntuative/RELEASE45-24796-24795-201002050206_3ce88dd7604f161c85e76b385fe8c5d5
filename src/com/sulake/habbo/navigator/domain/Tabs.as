package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_561:int = 6;
      
      public static const const_202:int = 5;
      
      public static const const_539:int = 2;
      
      public static const const_282:int = 9;
      
      public static const const_313:int = 4;
      
      public static const const_254:int = 2;
      
      public static const const_706:int = 4;
      
      public static const const_197:int = 8;
      
      public static const const_491:int = 7;
      
      public static const const_213:int = 3;
      
      public static const const_273:int = 1;
      
      public static const const_186:int = 5;
      
      public static const const_436:int = 12;
      
      public static const const_294:int = 1;
      
      public static const const_604:int = 11;
      
      public static const const_505:int = 3;
      
      public static const const_1457:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_352:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_352 = new Array();
         var_352.push(new Tab(_navigator,const_273,const_436,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_352.push(new Tab(_navigator,const_254,const_294,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_352.push(new Tab(_navigator,const_313,const_604,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_839));
         var_352.push(new Tab(_navigator,const_213,const_202,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_440));
         var_352.push(new Tab(_navigator,const_186,const_197,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_645));
         setSelectedTab(const_273);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_352)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_352)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_352)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_313;
      }
      
      public function get tabs() : Array
      {
         return var_352;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
