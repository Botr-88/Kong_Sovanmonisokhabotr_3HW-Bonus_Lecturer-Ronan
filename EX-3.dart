// class MyDuration {

//   // Display the duration in a readable format
//   @override
//   String toString() {
//     int seconds = (_milliseconds / 1000).round();
//     int minutes = (seconds / 60).floor();
//     seconds = seconds % 60;
//     int hours = (minutes / 60).floor();
//     minutes = minutes % 60;
//     return '$hours hours, $minutes minutes, $seconds seconds';
//   }
// }

// void main() {
//   MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
//   MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
//   print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
//   print(duration1>duration2); //true

//   try {
//     print(duration2 - duration1); // This will throw an exception
//   } catch (e) {
//     print(e);
//   }
// }
class CustomDuration {
  int milliseconds = 0;
  void fromHours(int hours) {
    milliseconds = hours * 3600000;
  }

  void fromMinutes(int minutes) {
    milliseconds = minutes * 60000;
  }

  void fromSeconds(int seconds) {
    milliseconds = seconds * 1000;
  }

    bool isGreater(CustomDuration other) {
    return milliseconds > other.milliseconds;
  }

  void display() {
    print("$milliseconds ms");
  }
}

void main() {
  CustomDuration d1 = CustomDuration();
  d1.fromMinutes(7);
  CustomDuration d2 = CustomDuration();
  d2.fromSeconds(45);
  if (d1.isGreater(d2)) {
    print("first duration is bigger");
  }else{
    print("Second duration is bigger or equal");
  }
  }

