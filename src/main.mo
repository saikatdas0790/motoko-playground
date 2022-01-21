import Debug "mo:base/Debug";

import Adder "./importFrom";

actor Importer {
  public func addNums(): async () {
    Debug.print(debug_show Adder.addTwoNumbers(1, 2));
  };
};
