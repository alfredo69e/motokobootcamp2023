import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";


module {

    // * In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.

    public func second_maximum( array : [Int] ) : async Int {

        if ( array.size() == 0 ) {
            return 0;
        };

        if( array.size() > 1  ) {
            let order = Array.sort( array, Int.compare );
            let new_array = Array.reverse( order );
            var valor : Int = 0;
            for(i in Iter.range(0, new_array.size() - 2)) {

                if( new_array[i] != new_array[i + 1] ) {
                    valor := new_array[i + 1];
                    return valor;
                }
            };
            return new_array[1];
        } else {
            return array[0];
        }
    };

    // * In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.

    public func remove_event( array : [Nat] ) : async [Nat] {

        var result: [Nat] = [];

        for(item in array.vals()) {
            if( item % 2 != 0 ) {
               result := Array.append( result, [ item ] );
            }
        };

        return result;
    };

    // * In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.

    public func drop<T>(xs : [T], n : Nat ) : [T] {
        var result : [T] = [];
        if( xs.size() < n ) return [];
        for(i in Iter.range(0, xs.size() - 1)) {
            result := Array.append( result, [ xs[i] ] );
        };
        return result;
    };

    // public func drop<T> : (xs : [T], n : Nat) -> [T]

}