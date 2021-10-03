package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1244:int;
      
      private var var_1243:String;
      
      private var var_1840:String;
      
      private var _index:int;
      
      private var var_1841:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1244 = param1;
         var_1840 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1243;
      }
      
      public function get questionId() : int
      {
         return var_1244;
      }
      
      public function get questionText() : String
      {
         return var_1840;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1243 = param1;
         var_1841 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1841;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
