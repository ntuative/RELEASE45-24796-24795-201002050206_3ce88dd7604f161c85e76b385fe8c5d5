package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_489:String = "me_menu_settings_view";
      
      private static const const_725:int = 10;
      
      public static const const_711:String = "me_menu_effects_view";
      
      public static const const_97:String = "me_menu_top_view";
      
      public static const const_1248:String = "me_menu_rooms_view";
      
      public static const const_901:String = "me_menu_dance_moves_view";
      
      public static const const_222:String = "me_menu_my_clothes_view";
       
      
      private var var_1676:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1366:int = 0;
      
      private var var_1673:int = 0;
      
      private var var_1674:Boolean = false;
      
      private var var_241:Boolean = false;
      
      private var var_1675:int = 0;
      
      private var var_1671:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_523:Boolean = false;
      
      private var var_82:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1102:int = 0;
      
      private var var_1672:Boolean = false;
      
      private var var_914:Point;
      
      private var var_25:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_914 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1672 = param5.getKey("client.news.embed.enabled","false") == "com.sulake.habbo.room.object.visualization.room.publicroom.rasterizer";
         }
         changeView(const_97);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_496,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_636,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_554,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_713,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_269,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_601,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_393,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_823,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_187,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_189,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_563,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_192,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_318,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_85,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_374,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_138,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_523;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_241)
         {
            return;
         }
         if(var_25.window.name == const_489)
         {
            (var_25 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1102 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1366 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1366.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_241 && var_25.window.name == const_222))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_695);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_496,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_636,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_554,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_713,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_269,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_187,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_189,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_563,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_601,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_393,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_823,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_192,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_318,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_374,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_85,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_138,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_25 != null)
         {
            var_25.dispose();
            var_25 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1676;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1671 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_82 != null)
         {
            var_82.dispose();
            var_82 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_1674;
      }
      
      public function get creditBalance() : int
      {
         return var_1366;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_374:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_241 + " view: " + var_25.window.name);
               if(var_241 != true || var_25.window.name != const_97)
               {
                  return;
               }
               (var_25 as MeMenuMainView).setIconAssets("clothes_icon",const_97,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_85:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1671 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1673;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_523 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_523 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1102 > 0;
         var_1102 = param1.daysLeft;
         var_1673 = param1.periodsLeft;
         var_1675 = param1.pastPeriods;
         var_1676 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_25 != null)
            {
               changeView(var_25.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1674 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_25 != null && var_25.window.name != const_222)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_25 != null && var_25.window.name == const_222)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_980)
            {
               var_82 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1182);
            }
            else
            {
               var_82 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_367);
            }
            _loc2_ = _mainContainer.getChildByName(var_25.window.name);
            if(_loc2_ != null)
            {
               var_82.window.x = _loc2_.width + const_725;
               _mainContainer.addChild(var_82.window);
               _mainContainer.width = var_82.window.x + var_82.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_523 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_523 = true;
            }
         }
         if(var_25 != null && var_25.window.name == const_711)
         {
            (var_25 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1675;
      }
      
      public function get habboClubDays() : int
      {
         return var_1102;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1291,HabboWindowStyle.const_862,HabboWindowParam.const_23,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_241 = !var_241;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_241 = false;
               break;
            default:
               return;
         }
         if(var_241)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_521);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_25 != null)
         {
            _mainContainer.removeChild(var_25.window);
            var_25.dispose();
            var_25 = null;
         }
         var_241 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_25 != null && var_25.window.name == const_222)
         {
            if(var_82 != null)
            {
               var_82.dispose();
               var_82 = null;
            }
            changeView(const_97);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1672;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_82 != null)
         {
            var_82.dispose();
            var_82 = null;
         }
         switch(param1)
         {
            case const_97:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_711:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_901:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_222:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1248:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_489:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_25 != null)
            {
               _mainContainer.removeChild(var_25.window);
               var_25.dispose();
               var_25 = null;
            }
            var_25 = _loc2_;
            var_25.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_25 != null)
         {
            var_914.x = var_25.window.width + 10;
            var_914.y = var_25.window.height;
            var_25.window.x = 5;
            var_25.window.y = 0;
            _mainContainer.width = var_914.x;
            _mainContainer.height = var_914.y;
            if(var_82 != null)
            {
               _mainContainer.width = var_82.window.x + var_82.window.width + const_725;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_97);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_559);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_241 = true;
      }
   }
}
