import java.util.Arrays;
//import java.io.OutputStreamWriter;
//import java.io.PrintWriter;
//import java.io.UnsupportedEncodingException;
//import java.util.Locale;

class ExampleWord {
  public static void main(String[] args) {
    int arr[] = {1,2,3,4,5,6,7,8};
    int key = 4;
    if (find(key, arr) == -1)
      System.out.println(key);
  }

  public static int find(int key, int[] a){
    int lo = 0;
    int mid = 0;
    int hi = a.length - 1;
    while(lo <= hi) {
      mid = lo + (hi - lo) / 2;
      if (key < a[mid]) hi = mid - 1;
      else if (key > a[mid]) lo = mid + 1;
      else return mid;
    }
    return -1;
  }
}
