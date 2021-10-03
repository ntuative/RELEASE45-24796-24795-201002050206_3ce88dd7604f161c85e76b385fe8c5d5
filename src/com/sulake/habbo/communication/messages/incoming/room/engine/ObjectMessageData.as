package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_995:int = 0;
      
      private var _data:String = "";
      
      private var var_1549:int = -1;
      
      private var var_29:int = 0;
      
      private var _type:int = 0;
      
      private var var_994:int = 0;
      
      private var var_2355:String = "";
      
      private var var_1696:int = 0;
      
      private var _id:int = 0;
      
      private var var_184:Boolean = false;
      
      private var var_215:int = 0;
      
      private var var_2227:String = null;
      
      private var var_75:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_76:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_184)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_184)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_215;
      }
      
      public function get extra() : int
      {
         return var_1549;
      }
      
      public function get state() : int
      {
         return var_29;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_184)
         {
            var_215 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_184)
         {
            var_75 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_184)
         {
            var_1549 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_76;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_184)
         {
            var_29 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1696;
      }
      
      public function get staticClass() : String
      {
         return var_2227;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_184)
         {
            var_1696 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_184)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_184)
         {
            var_2227 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_184 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_184)
         {
            var_995 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_184)
         {
            var_994 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_184)
         {
            var_76 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_995;
      }
      
      public function get x() : Number
      {
         return var_75;
      }
      
      public function get sizeY() : int
      {
         return var_994;
      }
   }
}
