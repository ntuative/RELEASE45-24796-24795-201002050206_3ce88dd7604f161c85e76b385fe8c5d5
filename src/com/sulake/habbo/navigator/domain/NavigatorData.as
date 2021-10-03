package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1401:int = 10;
       
      
      private var var_1441:NavigatorSettingsMessageParser;
      
      private var var_1191:int;
      
      private var var_1917:Boolean;
      
      private var var_1920:int;
      
      private var var_794:Dictionary;
      
      private var var_2278:int;
      
      private var var_1919:int;
      
      private var var_1667:int;
      
      private var var_306:Array;
      
      private var var_1921:int;
      
      private var var_549:PublicRoomShortData;
      
      private var var_383:RoomEventData;
      
      private var var_120:MsgWithRequestId;
      
      private var var_1702:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1918:Boolean;
      
      private var var_182:GuestRoomData;
      
      private var var_649:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_306 = new Array();
         var_794 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1920;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1918;
      }
      
      public function startLoading() : void
      {
         this.var_649 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1918 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_383 != null)
         {
            var_383.dispose();
         }
         var_383 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_120 != null && var_120 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_120 != null && var_120 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_649 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_120 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_182;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_549 = null;
         var_182 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_549 = param1.publicSpace;
            var_383 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_383 != null)
         {
            var_383.dispose();
            var_383 = null;
         }
         if(var_549 != null)
         {
            var_549.dispose();
            var_549 = null;
         }
         if(var_182 != null)
         {
            var_182.dispose();
            var_182 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1441;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_649 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_306.length > param1)
         {
            return var_306[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2278 = param1.limit;
         this.var_1191 = param1.favouriteRoomIds.length;
         this.var_794 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_794[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_120 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_306;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_549;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1667 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1917;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_649 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_306.length)
         {
            if((var_306[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_182 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_649;
      }
      
      public function set categories(param1:Array) : void
      {
         var_306 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1919;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1921;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1441 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_120 == null)
         {
            return;
         }
         var_120.dispose();
         var_120 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_383;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_794[param1] = !!param2 ? "yes" : null;
         var_1191 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_120 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1667;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_120 != null && var_120 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1917 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1919 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1702 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_182 != null)
         {
            var_182.dispose();
         }
         var_182 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_306)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_182 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1441.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1191 >= var_2278;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1921 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1702;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_182 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1920 = param1;
      }
   }
}
