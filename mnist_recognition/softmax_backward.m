function ds = softmax_backward(score, label)
% softmax��ʧ�������򴫲�
%
% :param score: �����������Ԫ
% :param label: ѵ��������ʵ��ǩ
%
% :return ds: �����Ԫ����ʧ���ݶ�

% ����ʵ�֣�softmax��ʧ�������򴫲�==========================================

% ���������Ԫ�����
[mm, ~] = size(label);
ds = (score - label).*score.*(1-score)/ mm;





% �������==================================================================
end