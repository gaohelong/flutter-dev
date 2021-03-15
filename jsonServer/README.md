## JSON-SERVER
[json-server](https://github.com/typicode/json-server)

### 使用
#### 安装
```js
npm install -g json-server
```

#### 创建json文件
```js
{
  "posts": [
    { "id": 1, "title": "json-server", "author": "typicode" }
  ],
  "comments": [
    { "id": 1, "body": "some comment", "postId": 1 }
  ],
  "profile": { "name": "typicode" }
}
```

#### 启动json-server
```js
json-server --watch db.json
```

#### 访问
```js
http://localhost:3000/posts/1
```

#### 设置端口
> 192.168.2.23->imac ip地址
```js
json-server --watch test.json --port 6666 --host 192.168.2.23
```