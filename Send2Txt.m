clc
clear
% ������ʾ����ε���php������������д������������ϵ�txt�ı���
% 1���ҵ�ͬ��.php�ļ��������ϴ�����������
% 2����ȡ.phpҳ���ַ���硰http://www.aaa.com/Send2Txt.php��,
% 3����php�����еĲ������ƶ�Ӧ�����������������ֵ��cell����ʽ��ʾ����
% 4������urlread����post������php������

opt{1} = 'name';
opt{2} = '��С��';
opt{3} = 'ID';
opt{4} = '100008';
opt{5} = 'score';
opt{6} = '60';
opt{7} = 'Skey';
opt{8} = 'JKUSBSKL';
% opt 1 3 5 7�е��ַ�������php�����в�����Ӧ
url='http://www.aaa.com/Send2Txt.php';
urlread(url,'post',opt)