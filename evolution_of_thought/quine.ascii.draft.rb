t=39.chr;eval(q=%w[e=["9s8sn9s8sn8s2^2.2^3sn5s5_sU5sn3s~(2s_2s/6sn5s2|s2|7sn5s2^s2^7sn9s8s",
"9s8sn9s2^2.2^2sn5s5_sU5sn3s`(2s_2s/6sn5s2/s2x7sn4s2^3s2^6sn9s8sn9s8s"];m=1;s,x,n=[32,92,10].map(&:chr);
z=0;zz=0;Signal.trap("INT"){z=1};Signal.trap("TERM"){z=1};
r=e.map{|v|v.split("n").map{|l|l.chars.reduce(t.dup){|a,c|if(c.to_i>0);m=c.to_i;a;else;case(c);when("s");a<<s*m;when("x");a<<x*m;else;a<<c*m;end;m=1;a;end}+t}};
g="t=39.chr;eval(q=%w[";g<<q;g<<%q+].join.gsub(/#{t}[^#{t}]*#{t}/m,""))#©lonelyelk2021+;
ew=r[0][0].length;eh=r[0].length;b=2*ew+8*eh;w=((-b+Math.sqrt(b*b+64*g.length))/32).ceil;ww=ew+8*w;j=0;
begin;
gg=g.dup;as="";
w.times{|_|as<<gg.slice!(0,ww);as<<n};eh.times{|i|as<<gg.slice!(0,4*w);as<<r[j][i];as<<gg.slice!(0,4*w);as<<n};
w.times{|_|break()if(gg.empty?);as<<gg.slice!(0,ww);as<<n};
puts("#{as}");raise("_");
rescue;
j==0?(zz>10?z=1:(sleep(0.18)&&(j=1)&&(zz+=1))):(sleep(0.25)&&j=0);
z==0&&puts("\e#{91.chr}#{as.count(n)+1}A").nil?&&retry;
end;##inspiredByYusukeEndoh(reservedForFutureBugFixes)
].join.gsub(/#{t}[^#{t}]*#{t}/m,""))


