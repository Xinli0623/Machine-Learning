% predefined function costFunction
% you set a few options
options=optimset('GradObj','on','MaxIter','100');
% options is a data structure that stores the options you want;
% GradObj on ,this sets the gradient objective parameter to on, means you are 
% going to provide a gradient to this algorithm. and then set the maximum of 
% iterations to 100
initialTheta=zeros(2,1) % initial guess of theta
% call the advanced optimation function called fminunc
[optTheta, functionVal,exitFlag] = fminunc(@costFunction, initialTheta,options)
help fminunc
% using fminunc must have more than 2 elements in theta
