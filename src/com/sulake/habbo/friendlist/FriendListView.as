package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1400:String = "noconvinfo";
      
      private static const const_1399:String = "messageinput";
       
      
      private var var_1439:int = -1;
      
      private var var_734:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1440:int = -1;
      
      private var var_1189:ITextWindow;
      
      private var var_1188:FriendListTabsView;
      
      private var var_11:IFrameWindow;
      
      private var var_243:IWindowContainer;
      
      private var var_1911:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1188 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_11 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_11.findChildByTag("close").procedure = onWindowClose;
         var_734 = IWindowContainer(var_11.content.findChildByName("main_content"));
         var_243 = IWindowContainer(var_11.content.findChildByName("footer"));
         var_1188.prepare(var_734);
         var_11.procedure = onWindow;
         var_11.content.setParamFlag(HabboWindowParam.const_899,false);
         var_11.content.setParamFlag(HabboWindowParam.const_1160,true);
         var_11.header.setParamFlag(HabboWindowParam.const_664,false);
         var_11.header.setParamFlag(HabboWindowParam.const_774,true);
         var_11.content.setParamFlag(HabboWindowParam.const_664,false);
         var_11.content.setParamFlag(HabboWindowParam.const_774,true);
         var_11.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1189 = ITextWindow(var_11.findChildByName("info_text"));
         var_1189.text = "";
         _friendList.refreshButton(var_11,"open_edit_ctgs",true,null,0);
         var_11.title.color = 4294623744;
         var_11.title.textColor = 4287851525;
         refresh("prepare");
         var_11.height = 350;
         var_11.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_11.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_11)
         {
            var_1189.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1189.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_11 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_30,HabboToolbarIconEnum.FRIENDLIST,var_11));
         }
         else
         {
            var_11.visible = true;
            var_11.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_11.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1188;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1911 = true;
         var_243.visible = false;
         var_243.y = Util.getLowestPoint(var_11.content);
         var_243.width = _friendList.tabs.windowWidth;
         var_243.visible = true;
         var_11.content.height = Util.getLowestPoint(var_11.content);
         var_11.content.width = _friendList.tabs.windowWidth - 10;
         var_11.header.width = _friendList.tabs.windowWidth - 10;
         var_11.height = var_11.content.height + 30;
         var_11.width = _friendList.tabs.windowWidth;
         this.var_1911 = false;
         var_11.scaler.setParamFlag(HabboWindowParam.const_566,false);
         var_11.scaler.setParamFlag(HabboWindowParam.const_883,this._friendList.tabs.findSelectedTab() != null);
         var_11.scaler.setParamFlag(HabboWindowParam.const_664,false);
         var_11.scaler.setParamFlag(HabboWindowParam.const_899,false);
         var_11.scaler.x = 0 - var_11.scaler.width;
         var_11.scaler.y = 0 - var_11.scaler.height;
         var_1440 = var_11.height;
         var_1439 = var_11.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_11 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_11 == null)
         {
            return;
         }
         var_1188.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_11;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_26 || param2 != var_11)
         {
            return;
         }
         if(this.var_1911)
         {
            return;
         }
         var _loc3_:int = var_1440 == -1 ? 0 : int(0 - var_1440);
         var _loc4_:int = var_1439 == -1 ? 0 : int(0 - var_1439);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_11 != null)
         {
            this.var_11.visible = false;
         }
      }
   }
}
