package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1464:BigInteger;
      
      private var var_925:BigInteger;
      
      private var var_1973:BigInteger;
      
      private var var_1465:BigInteger;
      
      private var var_1972:BigInteger;
      
      private var var_1715:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1464 = param1;
         var_1973 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1972.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1465 = new BigInteger();
         var_1465.fromRadix(param1,param2);
         var_1972 = var_1465.modPow(var_925,var_1464);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1715.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_925 = new BigInteger();
         var_925.fromRadix(param1,param2);
         var_1715 = var_1973.modPow(var_925,var_1464);
         return true;
      }
   }
}
