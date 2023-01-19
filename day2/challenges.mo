// CHALLENGE ONE

actor {
  public func average_array(array : [Int]) : async Int {
    var sum = 0;
    for i in array {
      sum += i;
    }
    return sum / array.size;
  }
};

// CHALLENGE TWO

actor {
  public func count_character(t : Text, c : Char) : async Nat {
    var count = 0;
    for i in t.iter() {
      if (i == c) {
        count += 1;
      }
    }
    return count;
  }
};


// CHALLENGE THREE

actor {
  public func factorial(n : Nat) -> async Nat {
    var result = 1;
    for i in 1..n {
      result *= i;
    }
    return result;
  }
};


// CHALLENGE FOUR

actor {
  public func number_of_words(t : Text) -> async Nat {
    return t.split(" ").size;
  }
};


// CHALLENGE FIVE

actor {
  public func find_duplicates(a : [Nat]) -> async [Nat] {
    let seen = new Map[Nat, Bool];
    let result = new Array[Nat]();
    for i in a.iter() {
      if seen.get(i) == None {
        seen.set(i, true);
      } else {
        result.push(i);
      }
    }
    return result;
  }
};


// CHALLENGE SIX

actor {
  public func convert_to_binary(n : Nat) -> async Text {
    var binary = "";
    while (n > 0) {
      binary = if (n % 2 == 0) { "0" } else { "1" } + binary;
      n /= 2;
    }
    return binary;
  }
};







