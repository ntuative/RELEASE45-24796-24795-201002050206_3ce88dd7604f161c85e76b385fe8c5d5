package com.sulake.habbo.help.help.data
{
   import com.sulake.core.utils.Map;
   
   public class FaqIndex
   {
       
      
      private var var_2324:int;
      
      private var _frontPageNormal:FaqCategory;
      
      private var var_2323:int;
      
      private var var_703:FaqCategory;
      
      private var var_702:FaqCategory;
      
      private var var_132:Map;
      
      public function FaqIndex()
      {
         super();
         var_702 = new FaqCategory(-999,"${help.faq.title.urgent}");
         _frontPageNormal = new FaqCategory(-9999,"${help.faq.title.normal}");
         var_703 = new FaqCategory(-99999,"${help.faq.title.searchresults}");
         var_132 = new Map();
      }
      
      public function getCategory(param1:int, param2:String = null, param3:Boolean = false) : FaqCategory
      {
         var _loc4_:FaqCategory = var_132.getValue(param1);
         if(_loc4_ != null || !param3)
         {
            return _loc4_;
         }
         _loc4_ = new FaqCategory(param1,param2);
         var_132.add(param1,_loc4_);
         return _loc4_;
      }
      
      public function get lastUpdatedQuestionId() : int
      {
         return var_2324;
      }
      
      public function getItem(param1:int, param2:int = -1) : FaqItem
      {
         if(param2 < 0)
         {
            return findItem(param1);
         }
         var _loc3_:FaqCategory = getCategory(param2);
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_.getItem(param1);
      }
      
      public function storeAnswerText(param1:int, param2:String) : void
      {
         var _loc4_:* = null;
         if(var_702.hasItem(param1))
         {
            var_702.getItem(param1).answerText = param2;
         }
         if(_frontPageNormal.hasItem(param1))
         {
            _frontPageNormal.getItem(param1).answerText = param2;
         }
         if(var_703.hasItem(param1))
         {
            var_703.getItem(param1).answerText = param2;
         }
         var _loc3_:int = 0;
         while(_loc3_ < var_132.length)
         {
            _loc4_ = var_132.getWithIndex(_loc3_);
            if(_loc4_.hasItem(param1))
            {
               _loc4_.getItem(param1).answerText = param2;
            }
            _loc3_++;
         }
      }
      
      public function getFrontPageNormalCategory() : FaqCategory
      {
         return _frontPageNormal;
      }
      
      public function get lastUpdatedCategoryId() : int
      {
         return var_2323;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_132 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_132.length)
            {
               _loc2_ = var_132.getWithIndex(_loc1_);
               _loc2_.dispose();
               _loc1_++;
            }
            var_132.dispose();
            var_132 = null;
         }
         var_702.dispose();
         _frontPageNormal.dispose();
         var_703.dispose();
      }
      
      public function getFrontPageUrgentCategory() : FaqCategory
      {
         return var_702;
      }
      
      public function getCategoryByIndex(param1:int) : FaqCategory
      {
         if(param1 >= var_132.length)
         {
            return null;
         }
         return var_132.getWithIndex(param1);
      }
      
      private function findItem(param1:int) : FaqItem
      {
         var _loc3_:* = null;
         if(var_702.hasItem(param1))
         {
            return var_702.getItem(param1);
         }
         if(_frontPageNormal.hasItem(param1))
         {
            return _frontPageNormal.getItem(param1);
         }
         if(var_703.hasItem(param1))
         {
            return var_703.getItem(param1);
         }
         var _loc2_:int = 0;
         while(_loc2_ < var_132.length)
         {
            _loc3_ = var_132.getWithIndex(_loc2_);
            if(_loc3_.hasItem(param1))
            {
               return _loc3_.getItem(param1);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getCategoryTitleArray() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < var_132.length)
         {
            _loc2_ = var_132.getWithIndex(_loc3_);
            if(_loc2_ != null)
            {
               _loc1_.push(_loc2_.categoryTitle);
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function getSearchResultCategory() : FaqCategory
      {
         return var_703;
      }
      
      public function getCategoryCount() : int
      {
         return var_132.length;
      }
   }
}