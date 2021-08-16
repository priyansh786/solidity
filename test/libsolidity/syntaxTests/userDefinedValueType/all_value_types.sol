type MyAddress is address;
type MyInt is int;
type MyUInt is uint;
type MyInt128 is int128;
type MyUInt128 is uint128;
// TODO add fixed point type
type MyFixedBytes32 is bytes32;
type MyFixedBytes1 is bytes1;
type MyBool is bool;
type MyFunction is function() external;
type MyFunctionWithParm is function(uint) returns (uint);
type MyFunctionWithCustomParam is function(MyAddress) returns (MyInt);


// TODO should these be disallowed?
contract C {}
interface I{}
enum E{One, Two}
type MyContract is C;
type MyInterface is I;
type MyEnum is E;
