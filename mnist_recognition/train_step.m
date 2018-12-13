function [loss, y, W1, b1, W2, b2] = train_step(train_data, train_label, ...
                    W1, b1, ...
                    W2, b2, ...
                    lr)
% һ�����ز��˹������絥��ѵ����ʵ��
%
% :param train_data: ����ѵ��������
% :param train_label: ����ѵ��������ǩ
% :param W1: �����Ȩ�ؾ���
% :param b1: ������ƫ������
% :param W2: ���ز��Ȩ�ؾ���
% :param b2: ���ز��ƫ������
% :param lr: ѧϰ��
%
% :return loss: ��ʧ����
% :return y: ���������Ԫ
% :return W1: �ݶ��½���������Ȩ�ؾ���
% :return b1: �ݶ��½����������ƫ������
% :return W2: �ݶ��½�������ز��Ȩ�ؾ���
% :return b2: �ݶ��½�������ز��ƫ������

% ����ʵ��1���˹�������ĵ�ǰ�򴫲�================================
% ��matlab2016b�����е�
beta = 1;
a_hidden = train_data*W1+b1;
% hidden_output = [1;sigmf(W1*train_data,[beta 0])];
hidden_output = sigmf(a_hidden,[beta 0]);
b_hidden = hidden_output*W2+b2;
output = sigmf(b_hidden,[beta 0]);
y = output;
% % ���������Ԫ�����
% delta_c = (output - train_label).*output.*(1-output);
% % �������ز����
% delta_h = (W2*delta_c).*output.*(1-output);
% delta_h = delta_h(2:end);
% W1 = W1 -lr*(train_data*delta_h);
% W2 = W2 -lr*(hidden_output*delta_c);


% �������1=================================================================

% ��ʧ��������
softmax_loss = softmax_forward(output, train_label);  % softmax��ʧ
loss = softmax_loss;  % ����ʧ

% ��ʧ�������򴫲�
delta_c = softmax_backward(output,train_label);

% ����ʵ��2���˹�������ĵĺ��򴫲�=========================================
% ��ʾ��ÿ��������ƫ��Ӧ���Ƕ���ʧ�󵼣���ʧ��һ����������������ƫ���Ľ��Ӧ��
% ��ԭ����ά����ͬ��
% �������2=================================================================
b = delta_c*W2';
delta_h = (b).*hidden_output.*(1-hidden_output);
% delta_h = delta_h(2:end);
 
% ����ʵ��3���ݶ��½�========================================================
W1 = W1 -lr.*(train_data'*delta_h);
% dw = delta_h*ones(100,1);
% b1 = b1 -lr.*((delta_h*ones(100,1))');
W2 = W2 -lr.*(a_hidden'*delta_c);
% b2 = b2 -lr.*(delta_c);


% �������3=================================================================
