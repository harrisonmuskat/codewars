function GetSum( a,b )
{
   let max = Math.max( a,b );
   let sum;
   if (max == a) {
     sum = (max - b + 1)*(b + max)/2;
   } else {
     sum = sum = (max - a + 1)*(a + max)/2;
   }
   return sum;
}
