%---- This function tests the four zero-finding methods 'Bisect'; 'Newton'; 'Secant'; 'Matlab'
%---- using 12 different test functions.
%
%+++++  This function and its associates are NOT TO BE ALTERED by students +++++
%
%--------------------------------------------------------------------------
function  dummy = DrEqn();
clear all
global FuncNo;  %--- We use this global so that we can call FUN(x) rather than FUN(x,FuncNo);
global NEvals;  %--- This keeps a count of the f-evals without passing it as a parameter.
                %--- If we did not use these globals we would have FUN(x,FuncNo,NEvals). 
                

warning off MATLAB:divideByZero

        name = ['Bisect'; 'Newton'; 'Secant'; 'Matlab'];
        MaxFun = 12;
        NEvals = zeros(MaxFun);
        Xtol   = 0.0;
        Maxits = 200;
    
        disp(' ')
        disp('====================================================================================')
        disp(['              Roots   Date : ' date])
        disp('====================================================================================')
        disp(' ')
        disp(' ')
        
% 
% ------- For each function apply each method --------------------------
%         
        for FuncNo = 1:MaxFun
           
           fprintf('------------------------------------------------------------------------------------\n')
           fprintf('               Function No %4.0f\n%',FuncNo)
           fprintf('------------------------------------------------------------------------------------\n')
           fprintf('                  zero                    f(zero)             flag  iters  No Evals\n')
           for Method = 1:4
                 flag = inf;
                 [Xlo Xhi] = GetDat(Method,FuncNo);
                 NEvals(FuncNo) = 0; 
                 
                 if(Method == 1)
                   [zero flag iters] = Bisect(Xlo,Xhi,Xtol,Maxits);
                                 
                 elseif(Method == 2)
                   [zero flag iters] = Newton(Xlo,Xtol,Maxits);
                                 
                 elseif(Method == 3)
                   [zero flag iters] = Secant(Xlo,Xhi,Xtol,Maxits);
                   
                 else
                   [zero flag iters] = ModFzero(Xlo,Xhi,Xtol,Maxits);
                 end;
                 %PrintResults(Method,FuncNo, zero, iters,Nevals(FuncNo), flag);
                 disp(name(Method,:))
                 fprintf('         %25.16e%25.16e%6.0f%7.0f%8.0f\n',zero,FUN(zero),flag,iters,NEvals(FuncNo));
             end;
             
        end;
% C
% C-------------- OutPut Results to Screen and Disk File ----------------
% C
                