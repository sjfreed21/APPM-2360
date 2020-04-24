%% Works Correctly
 n = 1;
 k = 0;
 c = n - k;
 if (n < k || n < 0 || k < 0)
     disp('“Insufficient facts always invite danger.” - Mr. Spock. Error.')
 else
     nf = 1;
     cf = 1;
     kf = 1;
     for i = 1:n
         nf = nf * i;
     end
     for j = 1:c
         cf = cf * j;
     end
     for l = 1:k
         kf = kf * l;
     end
     ck = cf * kf;
     f = nf / ck;
     disp (['Binomial = ' num2str(f)])
 end
 
 %% n < k returns an error
 n = 8;
 k = 23;
 c = n - k;
 if (n < k || n < 0 || k < 0)
     disp('“Insufficient facts always invite danger.” - Mr. Spock. Error.')
 else
     nf = 1;
     cf = 1;
     kf = 1;
     for i = 1:n
         nf = nf * i;
     end
     for j = 1:c
         cf = cf * j;
     end
     for l = 1:k
         kf = kf * l;
     end
     ck = cf * kf;
     f = nf / ck;
     disp (['Binomial = ' num2str(f)])
 end
 
 %% n or k is negative and returns an error
 n = 7;
 k = -3;
 c = n - k;
 if (n < k || n < 0 || k < 0)
     disp('“Insufficient facts always invite danger.” - Mr. Spock. Error.')
 else
     nf = 1;
     cf = 1;
     kf = 1;
     for i = 1:n
         nf = nf * i;
     end
     for j = 1:c
         cf = cf * j;
     end
     for l = 1:k
         kf = kf * l;
     end
     ck = cf * kf;
     f = nf / ck;
     disp (['Binomial = ' num2str(f)])
 end