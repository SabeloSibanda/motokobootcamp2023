import List from 'std:list'

actor Unique {
    public func unique<T>(l : List<T>, equal : (T, T) -> Bool) : List<T> {
        let nl = List<T>()
        for i in 0..l.size() {
            let current = l.get(i)
            if (nl.findIndex(current, equal) == -1) {
                nl.push(current)
            }
        }
        return nl
    }
};


import List from 'std:list'

actor Reverse {
    public func reverse<T>(l : List<T>) : List<T> {
        let nl = List<T>()
        for i in (0..l.size()).reverse() {
            nl.push(l.get(i))
        }
        return nl
    }
};


actor IsAnonymous {
    public func is_anonymous() : async Bool {
        return caller().is_anonymous()
    }
};


import Buffer from 'std:buffer'

actor FindInBuffer {
    public func find_in_buffer<T>(buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) : ?Nat {
        for i in 0..buf.size() {
            if (equal(buf.get(i), val)) {
                return i
            }
        }
        return null
    }
};


import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
actor {

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    public func get_usernames() : async [(Principal, Text)] {
        let result = [(Principal, Text)]();
        let iter = Iter.Iter(usernames.entries());
        while (iter.hasNext()) {
            let entry = iter.next();
            result.push((entry.key, entry.value));
        }
        return result;
    }
};

