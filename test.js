const assert = require('assert');
console.log('⏳ 正在运行单元测试...');
// 模拟测试一个非常关键的业务逻辑
const mathResult = 1 + 1;
assert.strictEqual(mathResult, 2, '如果是别的值，就会报错停止流水线');
console.log('✅ 单元测试全部通过！');
