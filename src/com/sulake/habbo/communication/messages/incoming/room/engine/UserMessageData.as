package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1334:String = "F";
      
      public static const const_887:String = "M";
       
      
      private var var_75:Number = 0;
      
      private var var_538:String = "";
      
      private var var_1985:int = 0;
      
      private var var_1988:String = "";
      
      private var var_1986:int = 0;
      
      private var var_1864:int = 0;
      
      private var var_1987:String = "";
      
      private var var_1260:String = "";
      
      private var _id:int = 0;
      
      private var var_184:Boolean = false;
      
      private var var_215:int = 0;
      
      private var var_1989:String = "";
      
      private var _name:String = "";
      
      private var var_1857:int = 0;
      
      private var _y:Number = 0;
      
      private var var_76:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_76;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_215;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_184)
         {
            var_215 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_184)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1985;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_184)
         {
            var_1986 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1989;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_184)
         {
            var_1987 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_184)
         {
            var_1989 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_184)
         {
            var_1864 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_184)
         {
            var_538 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_184)
         {
            var_1985 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_184)
         {
            var_1260 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1986;
      }
      
      public function get groupID() : String
      {
         return var_1987;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_184)
         {
            var_1857 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_184)
         {
            var_1988 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function get sex() : String
      {
         return var_1260;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get webID() : int
      {
         return var_1857;
      }
      
      public function get custom() : String
      {
         return var_1988;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_76 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_184)
         {
            var_75 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_75;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1864;
      }
   }
}
