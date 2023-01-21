import HashMap "mo:base/HashMap";
import List "mo:base/List";
import Principal "mo:base/Principal";

actor DAO {
    let proposals = HashMap.HashMap<Nat, Proposal>(0, Nat.equal, Nat.hash);
    let votes = HashMap.HashMap<Nat, List.List<Vote>>(0, Nat.equal, Nat.hash);

    struct Proposal {
        id : Nat;
        description : Text;
        proposer : Principal;
    }

    struct Vote {
        voter : Principal;
        vote : Bool;
    }

    public func create_proposal(description : Text) : async Nat {
        let id = proposals.size();
        proposals.put(id, Proposal(id, description, caller()));
        votes.put(id, List.List());
        return id;
    }

    public func get_proposal(id : Nat) : async Proposal {
        return proposals.get(id);
    }

    public func update_proposal(id : Nat, description : Text) : async () {
        let proposal = proposals.get(id);
        proposal.description = description;
        proposals.put(id, proposal);
    }

    public func delete_proposal(id : Nat) : async () {
        proposals.remove(id);
        votes.remove(id);
    }

    public func cast_vote(id : Nat, vote : Bool) : async () {
        let list = votes.get(id);
        list.push(Vote(caller(), vote));
        votes.put(id, list);
    }

    public func get_votes(id : Nat) : async List.List<Vote> {
        return votes.get(id);
    }
}
