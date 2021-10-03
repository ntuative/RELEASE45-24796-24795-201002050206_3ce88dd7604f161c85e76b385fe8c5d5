package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1013:SoundChannel = null;
      
      private var var_843:Boolean;
      
      private var var_1012:Sound = null;
      
      private var var_626:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1012 = param1;
         var_1012.addEventListener(Event.COMPLETE,onComplete);
         var_626 = 1;
         var_843 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_843;
      }
      
      public function stop() : Boolean
      {
         var_1013.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_843 = false;
         var_1013 = var_1012.play(0);
         this.volume = var_626;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_626;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1013.position;
      }
      
      public function get length() : Number
      {
         return var_1012.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_626 = param1;
         if(var_1013 != null)
         {
            var_1013.soundTransform = new SoundTransform(var_626);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_843 = true;
      }
   }
}
