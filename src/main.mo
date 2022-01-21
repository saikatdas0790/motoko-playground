import Debug "mo:base/Debug";
import List "mo:base/List";

actor Counter {

  stable var testingList: List.List<Nat> = List.nil<Nat>();

  public query func print() : async () {
    Debug.print(debug_show testingList);
  };

  public func addToList(n : Nat) : async () {
    testingList := List.push(n, testingList);
  };

  public func removeFirstEntered() : async () {
    testingList := List.reverse(List.drop(List.reverse(testingList), 1));
  };

  public func paginateList(skip: Nat, take: Nat): async List.List<Nat> {
    return List.take(List.drop(testingList, skip), take);
  };
};
