void findMaxSubarraySum(List<int> arr) {
  int maxSum = 0;
  int currentSum = 0;
  int startIndex = 0;
  
  for (int i = 0; i < 4; i++) {
    currentSum += arr[i];
  }
  
  maxSum = currentSum; 
  startIndex = 0;

  for (int i = 1; i <= arr.length - 4; i++) {
    
    currentSum = currentSum - arr[i - 1] + arr[i + 3];
    
    if (currentSum > maxSum) {
      maxSum = currentSum;
      startIndex = i;
    }
  }

  print("Sum of sub-array from index $startIndex to ${startIndex + 3} = $maxSum");
}

void main() {
  List<int> elements = [12, 3, 1, 9, 4, 12, 9, 7, 8, 12, 9, 4, 8, 8, 2, 3, 8];
 
  findMaxSubarraySum(elements);
}
