package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_680:IWindowContainer;
      
      private var var_1011:ITextWindow;
      
      private var var_189:RoomSettingsCtrl;
      
      private var var_1267:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_474:Timer;
      
      private var var_1272:ITextWindow;
      
      private var var_337:IWindowContainer;
      
      private var var_2095:IWindowContainer;
      
      private var var_2094:ITextWindow;
      
      private var var_840:IWindowContainer;
      
      private var var_1516:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_618:ITextWindow;
      
      private var var_1514:IWindowContainer;
      
      private var var_1269:IWindowContainer;
      
      private var var_839:ITextWindow;
      
      private var var_1009:ITextFieldWindow;
      
      private var var_286:IWindowContainer;
      
      private var var_838:ITextWindow;
      
      private var var_1512:IButtonWindow;
      
      private var var_1010:ITextWindow;
      
      private var var_2292:int;
      
      private var var_1271:IContainerButtonWindow;
      
      private var var_841:IWindowContainer;
      
      private var var_1268:ITextWindow;
      
      private var var_1266:IContainerButtonWindow;
      
      private var var_1513:ITextWindow;
      
      private var var_1515:IButtonWindow;
      
      private var var_984:TagRenderer;
      
      private var var_2041:ITextWindow;
      
      private var var_336:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_679:ITextWindow;
      
      private var var_256:RoomThumbnailCtrl;
      
      private var var_1270:IContainerButtonWindow;
      
      private var var_2093:IWindowContainer;
      
      private var var_255:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_336 = new RoomEventViewCtrl(_navigator);
         var_189 = new RoomSettingsCtrl(_navigator,this,true);
         var_256 = new RoomThumbnailCtrl(_navigator);
         var_984 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_189);
         var_474 = new Timer(6000,1);
         var_474.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_189.active = true;
         this.var_336.active = false;
         this.var_256.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1516.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1515.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1514.visible = Util.hasVisibleChildren(var_1514);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_618.text = param1.roomName;
         var_618.height = NaN;
         _ownerName.text = param1.ownerName;
         var_839.text = param1.description;
         var_984.refreshTags(var_337,param1.tags);
         var_839.visible = false;
         if(param1.description != "")
         {
            var_839.height = NaN;
            var_839.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_337,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_337,"thumb_down",_loc3_,onThumbDown,0);
         var_2094.visible = _loc3_;
         var_838.visible = !_loc3_;
         var_1513.visible = !_loc3_;
         var_1513.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_337,"home",param2,null,0);
         _navigator.refreshButton(var_337,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_337,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_618.y,0);
         var_337.visible = true;
         var_337.height = Util.getLowestPoint(var_337);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_421,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1512.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1267.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1270.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1271.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1266.visible = _navigator.data.canEditRoomSettings && param1;
         var_1269.visible = Util.hasVisibleChildren(var_1269);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_474.reset();
         this.var_336.active = false;
         this.var_189.active = false;
         this.var_256.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_30,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_474.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_474.reset();
         this.var_336.active = false;
         this.var_189.active = false;
         this.var_256.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_30,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_421,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_286);
         var_286.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_189.refresh(var_286);
         this.var_256.refresh(var_286);
         Util.moveChildrenToColumn(var_286,["room_details","room_buttons"],0,2);
         var_286.height = Util.getLowestPoint(var_286);
         var_286.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1009.setSelection(0,var_1009.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_255);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_336.refresh(var_255);
         if(Util.hasVisibleChildren(var_255) && !this.var_256.active)
         {
            Util.moveChildrenToColumn(var_255,["event_details","event_buttons"],0,2);
            var_255.height = Util.getLowestPoint(var_255);
            var_255.visible = true;
         }
         else
         {
            var_255.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_474.reset();
         this.var_336.active = true;
         this.var_189.active = false;
         this.var_256.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_474.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1011.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1011.height = NaN;
         var_1272.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1272.height = NaN;
         Util.moveChildrenToColumn(var_680,["public_space_name","public_space_desc"],var_1011.y,0);
         var_680.visible = true;
         var_680.height = Math.max(86,Util.getLowestPoint(var_680));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "com.sulake.habbo.room.object.visualization.room.publicroom.rasterizer";
         if(_loc1_ && true && true && true)
         {
            var_841.visible = true;
            var_1009.text = this.getEmbedData();
         }
         else
         {
            var_841.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_474.reset();
         this.var_189.load(param1);
         this.var_189.active = true;
         this.var_336.active = false;
         this.var_256.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_474.reset();
         this.var_189.active = false;
         this.var_336.active = false;
         this.var_256.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_49,false);
         _window.setParamFlag(HabboWindowParam.const_1356,true);
         _window.visible = false;
         var_286 = IWindowContainer(find("room_info"));
         var_337 = IWindowContainer(find("room_details"));
         var_680 = IWindowContainer(find("public_space_details"));
         var_2093 = IWindowContainer(find("owner_name_cont"));
         var_2095 = IWindowContainer(find("rating_cont"));
         var_1269 = IWindowContainer(find("room_buttons"));
         var_618 = ITextWindow(find("room_name"));
         var_1011 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_839 = ITextWindow(find("room_desc"));
         var_1272 = ITextWindow(find("public_space_desc"));
         var_1010 = ITextWindow(find("owner_caption"));
         var_838 = ITextWindow(find("rating_caption"));
         var_2094 = ITextWindow(find("rate_caption"));
         var_1513 = ITextWindow(find("rating_txt"));
         var_255 = IWindowContainer(find("event_info"));
         var_840 = IWindowContainer(find("event_details"));
         var_1514 = IWindowContainer(find("event_buttons"));
         var_2041 = ITextWindow(find("event_name"));
         var_679 = ITextWindow(find("event_desc"));
         var_1267 = IContainerButtonWindow(find("add_favourite_button"));
         var_1270 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1271 = IContainerButtonWindow(find("make_home_button"));
         var_1266 = IContainerButtonWindow(find("unmake_home_button"));
         var_1512 = IButtonWindow(find("room_settings_button"));
         var_1516 = IButtonWindow(find("create_event_button"));
         var_1515 = IButtonWindow(find("edit_event_button"));
         var_841 = IWindowContainer(find("embed_info"));
         var_1268 = ITextWindow(find("embed_info_txt"));
         var_1009 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1267,onAddFavouriteClick);
         Util.setProcDirectly(var_1270,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1512,onRoomSettingsClick);
         Util.setProcDirectly(var_1271,onMakeHomeClick);
         Util.setProcDirectly(var_1266,onUnmakeHomeClick);
         Util.setProcDirectly(var_1516,onEventSettingsClick);
         Util.setProcDirectly(var_1515,onEventSettingsClick);
         Util.setProcDirectly(var_1009,onEmbedSrcClick);
         _navigator.refreshButton(var_1267,"favourite",true,null,0);
         _navigator.refreshButton(var_1270,"favourite",true,null,0);
         _navigator.refreshButton(var_1271,"home",true,null,0);
         _navigator.refreshButton(var_1266,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_286,onHover);
         Util.setProcDirectly(var_255,onHover);
         var_1010.width = var_1010.textWidth;
         Util.moveChildrenToRow(var_2093,["owner_caption","owner_name"],var_1010.x,var_1010.y,3);
         var_838.width = var_838.textWidth;
         Util.moveChildrenToRow(var_2095,["rating_caption","rating_txt"],var_838.x,var_838.y,3);
         var_1268.height = NaN;
         Util.moveChildrenToColumn(var_841,["embed_info_txt","embed_src_txt"],var_1268.y,2);
         var_841.height = Util.getLowestPoint(var_841) + 5;
         var_2292 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2041.text = param1.eventName;
         var_679.text = param1.eventDescription;
         var_984.refreshTags(var_840,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_679.visible = false;
         if(param1.eventDescription != "")
         {
            var_679.height = NaN;
            var_679.y = Util.getLowestPoint(var_840) + 2;
            var_679.visible = true;
         }
         var_840.visible = true;
         var_840.height = Util.getLowestPoint(var_840);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_841,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
