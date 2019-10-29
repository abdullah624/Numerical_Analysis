f = @(x) 3*x - cos(x) - 1;
f1 = @(x) 3 + sin(x);
a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
if f(a)*f(b) > 0
  fprintf('No roots exist within the given interval\n');
  return
end

if f(a) == 0
  fprintf('a is one of the roots\n')
  return
elseif f(b) == 0
  fprintf('b is one of the roots\n')
  return
end
xn=(a+b)/2;
for i = 1: 100
  c = f(xn);
  d = f1(xn);
  e = xn - (f(xn)/f1(xn));
  fprintf('%f, %f, %f, %f\n', xn, c, d, e);
  if abs(f(xn)) < 1.0E-6
    break
  end
  xn = e;
end
fprintf('The root: %f\nThe number of iterations: %d\n',xn,i)