function loss = softmax_forward(score, label)

% softmax��ʧ����ǰ�򴫲�
%
% :param score: �����������Ԫ
% :param label: ѵ��������ʵ��ǩ
%
% :return loss: softmax��ʧ

% ����ʵ�֣�softmax��ʧ����ǰ�򴫲�==========================================
% ����1��ʾ������������������Ϊ2���������������
% m = size(score,1);
% a = exp(score);
% % sum��һ����������ÿһ��Ԫ����a�����ÿһ�еĺͣ�Ȼ������bsxfun��@rdivide�� ����
% % ��a����ĵ�i�е�ÿ��Ԫ����sum��a�������ĵ�i��Ԫ��
% p = bsxfun(@rdivide,a,sum(a));
% c = log(p);
% loss = -(1/m)*sum(c);


% 
e = label - score;
mm = size(score,1);
% loss = 1/2 * sum(sum(e.^2)) / mm;
loss = 1/2 * sum(sum(e.^2)) / mm;
% % 
% e = batch_y - a{n};
% L(ll) = 1/2 * sum(sum(e.^2)) / mm;



% �������==================================================================
end