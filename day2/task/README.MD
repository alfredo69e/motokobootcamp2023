# Coding challenges 🧑‍💻
1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
```
average_array(array : [Int]) -> async Int. 
```
2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
```
count_character(t : Text, c : Char) -> async Nat
```
3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
```
factorial(n : Nat) ->  async Nat
```
4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.
```
number_of_words(t : Text) -> async Nat 
```
5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
```
find_duplicates(a : [Nat]) -> async [Nat]
```
6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
```
convert_to_binary(n : Nat) -> async Text
```

# Useful resources & links 🔗
- [ICScan](https://icscan.io/): this website is an incredible tool to access information about the Internet Computer. You can inspect and find informations on different topics (subnets, canisters, neurons, transactions). You can also use this website as a tool to directly interact with canisters deployed on the Internet Computer.
- [NNS-UI](https://nns.ic0.app): the offical interface of the NNS. You can use it to stake ICPs, create neurons, vote on proposals, invest in SNS lauchs, and more...
- [Array module](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/base/Array): the documentation for the **Array** module in Motoko.
- [Bool module](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/base/Bool): the documentation for the **Bool** module in Motoko.
- [Base Library](https://github.com/dfinity/motoko-base): the source code for the entiere Motoko Base Library - maintained by DFINITY engineers & the community.
- [Mutable state](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/mutable-state): a longer explanation on mutable state of actors in Motoko.