package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1929:int;
      
      private var var_1616:int;
      
      private var var_1932:Boolean;
      
      private var var_1931:Boolean;
      
      private var var_1933:Array;
      
      private var var_1614:Boolean;
      
      private var var_1149:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_590:Array;
      
      private var var_1148:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1616;
      }
      
      public function get description() : String
      {
         return var_1148;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1931;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1929;
      }
      
      public function set description(param1:String) : void
      {
         var_1148 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1614 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1929 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1149;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1933;
      }
      
      public function get tags() : Array
      {
         return var_590;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1614;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1616 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1932 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_590 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1933 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1149 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1932;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1931 = param1;
      }
   }
}
