const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Hello from Dockerized Node.js App!</h1><p>CI/CD 第一阶段：夯实本地基础成功！你可以看到这个页面，说明代码已经成功运行在 Docker 容器里了。</p>');
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
