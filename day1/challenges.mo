// CHALLENGE 1

actor ChallengeOne {
    public func multiply(n: Nat, m: Nat) : async Nat {
        return n * m;
    }
};


// CHALLENEGE 2

actor ChallengeTwo {
    public func volume(n: Nat) : async Nat {
        return n * n * n;
    }
};


// CHALLENEGE 3

actor ChallengeThree {
    public func hours_to_minutes(n: Nat) : async Nat {
        return n * 60;
    }
};


// CHALLENEGE 4

actor ChallengeFour {
    var counter: Nat = 0;

    public func set_counter(n: Nat) : async () {
        counter := n
    };

    public func get_counter() : async Nat {
        return counter;
    }
};


// CHALLENEGE 5

actor ChallengeFive {
    public func test_divide(n: Nat, m: Nat) : async Bool {
        return (m % n) == 0;
    }
};


// CHALLENEGE 6

actor ChallengeSix {
    public func is_even(n: Nat) : async Bool {
        return (n % 2) == 0
    }
};





