//引入模块
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const session = require("express-session");
const userRouter = require("./routes/user.js");

const pool = require("./pool.js");
//创建express对象
var server = express();
//绑定监听端口
server.listen(9731);

//处理post请求中间件
server.use(bodyParser.urlencoded({
  extended: false
}));

//跨域
server.use(cors({
  origin:['http://127.0.0.1:8080',"http://localhost:8080"],
  credentials: true  //是否验证
}));

//添加session功能
server.use(session({
  secret:'随机字符串',
  cookie:{maxAge:60*1000*30},//过期时间ms
  resave:false,
  saveUninitialized:true
}));//将服务器的session，放在req.session中

//托管静态文件夹
server.use(express.static("public"))

//挂载的路由器
server.use("/user", userRouter);