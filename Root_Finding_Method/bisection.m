y = @(x) 3*x^2 - 5*x + 1;
a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
if y(a)*y(b) > 0
  fprintf('No roots exist within the given interval\n');
  return
end

if y(a) == 0
  fprintf('a is one of the roots\n')
  return
elseif y(b) == 0
  fprintf('b is one of the roots\n')
  return
end

for i = 1: 100
  c = (a+b)/2; 
  if y(a)*y(c) < 0
    b = c;
  else
    a = c;
  end
  if abs(y(a)) < 1.0E-6
    break
  end
end
fprintf('The root: %f\nThe number of iterations: %d\n',a,i)