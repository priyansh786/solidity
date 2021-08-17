type MyUInt8 is uint8;
type MyInt8 is int8;

contract C {
    function f(uint a) external returns(MyUInt8) {
        return MyUInt8(uint8(a));
    }
    function g(uint a) external returns(MyInt8) {
        return MyInt8(int8(int((a))));
    }
    function h(MyUInt8 a) external returns (MyInt8) {
        return MyInt8(int8(uint8(a)));
    }
}
// ====
// compileViaYul: also
// ----
// f(uint256): 1 -> 1
// f(uint256): 2 -> 2
// f(uint256): 257 -> 1
// g(uint256): 1 -> 1
// g(uint256): 2 -> 2
// g(uint256): 255 -> -1
// g(uint256): 257 -> 1
// h(uint8): 1 -> 1
// h(uint8): 2 -> 2
// h(uint8): 255 -> -1
// h(uint8): 257 -> FAILURE
