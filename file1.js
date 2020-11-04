goog.declareModuleId('corp.abc');

import {
  default as FN,
  VARIABLE_1,
  VARIABLE_2
} from '/file2';

goog.require('goog.array');

export class MyClass {
    constructor() {
        console.log("ctor");
    }
}

console.log(VARIABLE_1);
console.log(VARIABLE_2);
console.log(FN());

goog.exportSymbol("MyClass", MyClass);
