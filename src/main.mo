import Debug "mo:base/Debug";
import Deque "mo:base/Deque";
import List "mo:base/List";

actor Counter {

  stable var testingQueue: Deque.Deque<Nat> = Deque.empty<Nat>();

  public query func get() : async () {
    Debug.print(debug_show testingQueue);
    Debug.print("\n\n\n");
    Debug.print(debug_show testingQueue.0);
    Debug.print("\n\n\n");
    Debug.print(debug_show testingQueue.1);
  };

  public query func getSize(): async Nat {
    return List.size(testingQueue.0) + List.size(testingQueue.1);
  };

  public func addToFront(n : Nat) : async () {
    testingQueue := Deque.pushFront<Nat>(testingQueue, n);
  };
  
  public func addToBack(n : Nat) : async () {
    testingQueue := Deque.pushBack<Nat>(testingQueue, n);
  };
};
