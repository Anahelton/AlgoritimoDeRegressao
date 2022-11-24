%TRABALHO 01 QUESTÃO 02
%JOSÉ ANAHELTON SOUSA FONTELES - 356721

%{
ENUNCIADO QUESTÃO 2:
Usando o conjunto de dados do aerogerador (variável de entrada: velocidade do vento
– m/s, variável de saída: potência gerada – kWatts), determine os modelos de regressão
polinomial (graus 2 a 7) com parâmetros estimados pelo método dos mínimos
quadrados.
%}

clc;
base=load('aerogerador.dat'); %Importando os dados do aerogerador, velocidade do vento e potência.
x=base(:,1); %Associando x a todos os valores da primeira coluna, velocidade do vento.
y=base(:,2); %Associando y a todos os valores da segunda coluna, potência do vento.

n=length(y); %n representa o número de amostras.

lambda = 0.001; %Definindo lambda para o calculo de beta.
plot(x,y,'.'); %Gráfico da velociadade do vento em relação a potência.

%Normalizando os valores para evitar erros.
x = x./max(x);
y = y./max(y);

for grau = 2:7
    
    %Regressão polinomial de grau 2
    if (grau == 2) 
        X=[ones(n,1) x, x.^2];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y; %Regularização de Tikhonov
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2; %Preditor
        hold on
        plot(x,y_chap); 
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2); %coeficiente de determinação R2
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1)); %coeficiente de determinação R2 ajustado
        fprintf("R2 de grau 2 = %f\n", R2);
        fprintf("R2 ajustado de grau 2 = %f\n", R2aj);
        fprintf("\n");   
    end
    
    %Regressão polinomial de grau 3
    if (grau == 3) 
        X=[ones(n,1) x, x.^2, x.^3];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3;
        hold on
        plot(x,y_chap);
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        fprintf("R2 de grau 3 = %f\n", R2);
        fprintf("R2 ajustado de grau 3 = %f\n", R2aj);  
        fprintf("\n");  
    end
    
    %Regressão polinomial de grau 4
    if (grau == 4) 
        X=[ones(n,1) x, x.^2, x.^3, x.^4];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4;
        hold on
        plot(x,y_chap);
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        fprintf("R2 de grau 4 = %f\n", R2);
        fprintf("R2 ajustado de grau 4 = %f\n", R2aj); 
        fprintf("\n");   
    end
    
    %Regressão polinomial de grau 5
    if (grau == 5) 
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5;
        hold on
        plot(x,y_chap);
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        fprintf("R2 de grau 5 = %f\n", R2);
        fprintf("R2 ajustado de grau 5 = %f\n", R2aj); 
        fprintf("\n");   
    end
    
    %Regressão polinomial de grau 6
    if (grau == 6) 
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5, x.^6];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5+beta(7)*x.^6;
        hold on
        plot(x,y_chap);
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        fprintf("R2 de grau 6 = %f\n", R2);
        fprintf("R2 ajustado de grau 6 = %f\n", R2aj); 
        fprintf("\n");   
    end

    %Regressão polinomial de grau 7
    if (grau == 7) 
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5, x.^6, x.^7];
        [sx, sy] = size(X');
        beta = (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5+beta(7)*x.^6+beta(8)*x.^7;
        hold on
        plot(x,y_chap);
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        fprintf("R2 de grau 7 = %f\n", R2);
        fprintf("R2 ajustado de grau 7 = %f\n", R2aj); 
        fprintf("\n");   
    end
    
end
