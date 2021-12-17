function h = control(x,loc)
%     display(loc);
%     display(x);
    off = [20,20,20,20]';
    on = [15 19 15 19]';
    
    if x(1) <= on(1) && loc(1) == 1
        h(1) = 1;
%         display("Checked IF1");
    elseif x(1) >= off(1) || loc(1) == 0
        h(1) = 0;
%         display("Checked ELSE1");
    else
        h(1) = 0;
    end
    

    if x(2) <= on(2) && loc(2) == 1
        h(2) = 1;
%         display("Checked IF2");
    elseif x(2) >= off(2) || loc(2) == 0
        h(2) = 0;
%         display("Checked ELSE2");
    else
        h(2) = 0;    
    end
    

    if x(3) <= on(3) && loc(3) == 1
        h(3) = 1;
%         display("Checked IF3");

    elseif x(3) >= off(3) || loc(3) == 0
        h(3) = 0;
%         display("Checked ELSE3");
    else
        h(3) = 0;
    end
    

    if x(4) <= on(4) && loc(4) == 1
        h(4) = 1; 
%         display("Checked IF4");

    elseif x(4) >= off(4) || loc(4) == 0
        h(4) = 0;      
%         display("Checked ELSE4");
    else
        h(4) = 0;

    end

    
%     display(h)

end