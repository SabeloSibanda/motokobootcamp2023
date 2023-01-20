fun second_maximum(array: [Int]) -> Int:
    var max = Int.min
    var second_max = Int.min
    for value in array:
        if value > max:
            second_max = max
            max = value
        elif value > second_max:
            second_max = value
    return second_max;


    fun remove_even(array: [Nat]) -> [Nat]:
    var result = []
    for value in array:
        if value % 2 != 0:
            result.push(value)
    return result;


    fun drop<T>(xs: [T], n: Nat) -> [T]:
    return xs[n..];



