goog.declareModuleId('corp.abc');

import {
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

goog.exportSymbol("MyClass", MyClass);
