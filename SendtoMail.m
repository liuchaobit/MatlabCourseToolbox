function SendtoMail(subject,content,attachment)

% �ú�����Matlab�����䷢�ʹ��������ʼ�
% subjectΪ�ʼ�����
% contentΪ�ʼ�����
% attachment Ϊ������ַ��ͬĿ¼��Ϊ�ļ�����

Mail = 'x@xx.cn';  %�����ʼ��������ַ
password = '******';  % �����ʼ�����������
receive_mail='xxxx@xxx.cn'; % �����ʼ��������ַ
setpref('Internet','E_mail',Mail);
setpref('Internet','SMTP_Server','smtp.xxxxx.cn'); % �����ʼ���smtp��ַ
setpref('Internet','SMTP_Username',Mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
sendmail(receive_mail,subject,content,attachment);
end