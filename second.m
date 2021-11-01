function out=second(P)
	np1=0;  
	for n=2:9             %find the number of Non-zero point
        if P(n)~=0
            np1=np1+1;
        end           
    end
	if P(5)~=0
        np1=np1-1;
    end
	p=[P(1) P(2) P(3) P(6) P(9) P(8) P(7) P(4) P(1)];
	sp1=0;
	for m=1:8             %find the number of 0-1
        if (p(m)~=p(m+1))&&(p(m)==0)
            sp1=sp1+1;
        end
    end
	if ((2<=np1)&&(np1<=6))&&(sp1==1)&&(P(2)*P(4)*P(8)==0)&&(P(2)*P(4)*P(6)==0)&&(P(5)==1)
        out=0;
    else
        out=P(5);
    end
end