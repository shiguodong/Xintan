#language: zh-CN
功能: 系统初始化设置
      系统的初始化设置


 场景: 学生在系统未开放时注册
  假如: 系统没有开放注册
  当: 我访问注册页面
  那么: 会跳到登录页面提示:抱歉，本系统尚未开放注册   

@wip   
 场景: 学生在系统已经开放时注册
   假如: 系统已经开放注册
   当: 我访问注册页面
   那么: 会跳到注册页面去
