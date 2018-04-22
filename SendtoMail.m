function SendtoMail(subject,content,attachment)

% 该函数用Matlab向邮箱发送带附件的邮件
% subject为邮件标题
% content为邮件内容
% attachment 为附件地址（同目录下为文件名）

Mail = 'x@xx.cn';  %发送邮件的邮箱地址
password = '******';  % 发送邮件的邮箱密码
receive_mail='xxxx@xxx.cn'; % 接受邮件的邮箱地址
setpref('Internet','E_mail',Mail);
setpref('Internet','SMTP_Server','smtp.xxxxx.cn'); % 发送邮件的smtp地址
setpref('Internet','SMTP_Username',Mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
sendmail(receive_mail,subject,content,attachment);
end