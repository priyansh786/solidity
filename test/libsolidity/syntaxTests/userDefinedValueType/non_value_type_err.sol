type MyInt is mapping(uint => uint);
type MyString is string;
type MyBytes is bytes;

struct S {uint x;}

contract C {
    type MyType is S;
}

// ----
// TypeError 8129: (0-36): The user defined type "MyInt" can only be defined on value types.
// TypeError 8129: (37-61): The user defined type "MyString" can only be defined on value types.
// TypeError 8129: (62-84): The user defined type "MyBytes" can only be defined on value types.
// TypeError 8129: (123-140): The user defined type "MyType" can only be defined on value types.
