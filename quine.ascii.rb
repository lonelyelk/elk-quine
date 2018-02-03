eval(a=%w[ee=["8s2^2.2^4sn5s5_sU6sn3s~(2s_2s/7sn5s2|s2|8sn5s2^s2^8s",
"9s2^2.2^3sn5s5_sU6sn3s`(2s_2s/7sn5s2/s2l8sn4s2^3s2^7s"];m=1;
r=ee[1].split("n").map{|l|l.chars.reduce(""){|s,c|if(c.to_i>0);m=c.to_i;s;else;case(c);when("s");s<<(32.chr)*m;when("l");s<<(92.chr)*m;else;s<<c*m;end;m=1;s;end}};
puts(%q[eval(a=%%w[%s].join.gsub(/#{39.chr}.*#{39.chr}/m,""))]%a)].join.gsub(/#{39.chr}.*#{39.chr}/m,""))
