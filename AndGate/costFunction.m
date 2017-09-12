function J = costFunction(X, y, Theta)
  J = 0;
  m = size(X, 1);
  K = size(y, 2);
  
  X = [ones(size(X, 1), 1) X];
  z2 = Theta * X';
  a2 = sigmoid(z2);
  pred = a2;
  
  for i = 1:m
    for j = 1:K
      J += (y(i) * log(pred(i)));
      J += ((1 - y(i)) * log(1 - pred(i)));
    endfor
  endfor
  
  J = J * (-1/m);
end