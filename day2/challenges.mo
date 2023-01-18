import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Buffer "mo:base/Buffer";

actor DChallengeDay2 {

    // *Write a function average_array that takes an array of integers and returns the average value of the elements in the array.

    public func average_array(array : [Int] ) : async Int {
        let cant: Int = array.size();
        if ( cant > 0 ) {

            var sum : Int = 0;
            for (items in array.vals()) {
                sum += items;
            };
            let result  = sum / cant;
            return result;

        } else {
            return 0;
        }
        
       
    };

    // *Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.


    public func count_character( text : Text, char : Char ) : async Nat {

        var cont = 0;
        
        for(items : Char in text.chars() ) {
            if( Char.equal( items, char ) ) {
                cont += 1;
            }
        };
        return cont;
    };

    // * Write a function factorial that takes a natural number n and returns the factorial of n.
    

    public func factorial(n : Nat) :  async Nat {
        var result : Nat = n;
        var count : Nat = n;
        if( n == 0 ) {
            return 1;
        };

        while( count > 1 ) {
            count := count - 1;
            result := count * result;
        };

        return result;
    };

    // * Write a function number_of_words that takes a sentence and returns the number of words in the sentence.

    public func number_of_words( t : Text ) : async Nat {

        var count : Nat = 0;
        let p = #text(" ");

        var new_text = Text.trimStart( t, p );
        new_text := Text.trimEnd( new_text, p );
        // Debug.print( debug_show( new_text )  );
    
        let value = Text.split( new_text, p );
        for( items in value) {
           count += 1;
        };

        return count;
    };

    // * Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.

     public func find_duplicates(a : [Nat]) : async [Nat] {

        var duplicate : [Nat] = [];

        let buffer = Buffer.Buffer<Nat>(0);

        for(i in Iter.range(0, a.size() - 1)  ) {

                if ( i > 0 ) {
                    var paso = false;
                    for(x in Iter.range(0, a.size() - 1) ) {
                        if ( i != x ) {
                            if ( a[i] == a[x] ) {
                                 paso := true;
                                for(item in duplicate.vals()) {
                                    if( item == a[i] ) {
                                        paso := false;
                                    }
                                };
                            }
                        }
                    };
                    if ( paso )  {
                        buffer.add( a[i]  );
                        duplicate := Buffer.toArray(buffer);
                    };

                };

        };
        return duplicate;
     };

    // * Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.

    public func convert_to_binary(n : Nat) : async Text {
       if(n > 255) {
            return "0";
        } else {
            let value = Nat8.fromNat( n );
            Debug.print( debug_show( value )  );
            return Nat8.toText( value );
        };
    };

}