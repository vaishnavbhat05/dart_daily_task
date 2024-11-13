List<int> sortArray(List<int> arr) 
{
  Map<int, int> frequencyMap = {};
  for (int num in arr) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }
  arr.sort((a, b) {
    int freqA = frequencyMap[a]!;
    int freqB = frequencyMap[b]!;
    if (freqA == freqB) {
      return arr.indexOf(a) - arr.indexOf(b);
    }
    return freqB - freqA; 
  });

  return arr;
}

void main() {
  List<int> elements = [12, 3, 1, 9, 4, 12, 9, 7, 8, 12, 9, 4, 8, 8, 2, 3, 8];
  List<int> sortedArray = sortArray(elements);
  print(sortedArray);
}
