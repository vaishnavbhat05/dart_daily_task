class DualStack {
  List<int> arr;
  int leftStackTop; 
  int rightStackTop; 

  DualStack(int N)
      : arr = List.filled(N, 0),
        leftStackTop = -1,
        rightStackTop = N;

  void pushLeft(int value) {
    if (leftStackTop + 1 == rightStackTop) {
      print('Stack Overflow: No space available');
      return;
    }
    leftStackTop++;
    arr[leftStackTop] = value;
    print('Pushed $value to left stack');
  }

  void pushRight(int value) {
    if (rightStackTop - 1 == leftStackTop) {
      print('Stack Overflow: No space available');
      return;
    }
    rightStackTop--;
    arr[rightStackTop] = value;
    print('Pushed $value to right stack');
  }

  int popLeft() {
    if (leftStackTop == -1) {
      print('Left Stack Underflow: No elements to pop');
      return -1; 
    }
    int poppedValue = arr[leftStackTop];
    leftStackTop--;
    print('Popped $poppedValue from left stack');
    return poppedValue;
  }

  int popRight() {
    if (rightStackTop == arr.length) {
      print('Right Stack Underflow: No elements to pop');
      return -1; 
    }
    int poppedValue = arr[rightStackTop];
    rightStackTop++;
    print('Popped $poppedValue from right stack');
    return poppedValue;
  }

  int peekLeft() {
    if (leftStackTop == -1) {
      print('Left Stack is empty');
      return -1; 
    }
    return arr[leftStackTop];
  }

  int peekRight() {
    if (rightStackTop == arr.length) {
      print('Right Stack is empty');
      return -1; 
    }
    return arr[rightStackTop];
  }

  void displayStacks() {
    print('Left Stack:');
    for (int i = 0; i <= leftStackTop; i++) {
      print(arr[i]);
    }
    print('Right Stack:');
    for (int i = arr.length - 1; i >= rightStackTop; i--) {
      print(arr[i]);
    }
  }
}

void main() {
  DualStack dualStack = DualStack(10); 

  dualStack.pushLeft(5);
  dualStack.pushLeft(10);
  dualStack.pushLeft(15);
  dualStack.pushLeft(17);
  dualStack.pushLeft(21);
  dualStack.pushLeft(1);
 
  dualStack.pushRight(100);
  dualStack.pushRight(200);
  dualStack.pushRight(300);
  dualStack.pushRight(400);
  
  
  dualStack.displayStacks();

  dualStack.popLeft();
  
  dualStack.popRight();
  
  print('Top of left stack: ${dualStack.peekLeft()}');
  print('Top of right stack: ${dualStack.peekRight()}');

  dualStack.displayStacks();
}
