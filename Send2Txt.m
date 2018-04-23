clc
clear
% 本函数示例如何调用php函数，将内容写入网络服务器上的txt文本。
% 1、找到同名.php文件，将其上传至服务器，
% 2、获取.php页面地址，如“http://www.aaa.com/Send2Txt.php”,
% 3、与php函数中的参数名称对应，将参数名称与参数值以cell的形式表示出，
% 4、利用urlread函数post参数至php函数。

opt{1} = 'name';
opt{2} = '刘小超';
opt{3} = 'ID';
opt{4} = '100008';
opt{5} = 'score';
opt{6} = '60';
opt{7} = 'Skey';
opt{8} = 'JKUSBSKL';
% opt 1 3 5 7中的字符串均与php函数中参数对应
url='http://www.aaa.com/Send2Txt.php';
urlread(url,'post',opt)