function dFe = dFe_2412(E,nu,Lz,in4,in5,xi,eta)
%dFe_2412
%    dFe = dFe_2412(E,NU,Lz,IN4,IN5,XI,ETA)

%    This function was generated by the Symbolic Math Toolbox version 24.2.
%    05-Mar-2025 15:07:37

X1 = in5(1,:);
X2 = in5(2,:);
X3 = in5(3,:);
X4 = in5(4,:);
X5 = in5(5,:);
X6 = in5(6,:);
X7 = in5(7,:);
X8 = in5(8,:);
u1 = in4(1,:);
u2 = in4(3,:);
u3 = in4(5,:);
u4 = in4(7,:);
v1 = in4(2,:);
v2 = in4(4,:);
v3 = in4(6,:);
v4 = in4(8,:);
t2 = X1.*X4;
t3 = X2.*X3;
t4 = X1.*X8;
t5 = X2.*X7;
t6 = X3.*X6;
t7 = X4.*X5;
t8 = X5.*X8;
t9 = X6.*X7;
t10 = X1.*eta;
t11 = X2.*eta;
t12 = X3.*eta;
t13 = X4.*eta;
t14 = X5.*eta;
t15 = X6.*eta;
t16 = X7.*eta;
t17 = X8.*eta;
t18 = X1.*xi;
t19 = X2.*xi;
t20 = X3.*xi;
t21 = X4.*xi;
t22 = X5.*xi;
t23 = X6.*xi;
t24 = X7.*xi;
t25 = X8.*xi;
t26 = nu.^2;
t43 = -X3;
t44 = -X4;
t45 = -X5;
t46 = -X6;
t47 = -X7;
t48 = -X8;
t61 = eta./4.0;
t62 = nu./2.0;
t63 = xi./4.0;
t27 = eta.*t2;
t28 = eta.*t3;
t29 = X6.*t10;
t30 = X5.*t11;
t31 = X8.*t12;
t32 = X7.*t13;
t33 = eta.*t8;
t34 = eta.*t9;
t35 = X6.*t18;
t36 = X5.*t19;
t37 = t4.*xi;
t38 = t5.*xi;
t39 = t6.*xi;
t40 = t7.*xi;
t41 = X8.*t20;
t42 = X7.*t21;
t49 = -t3;
t50 = -t4;
t51 = -t7;
t52 = -t9;
t53 = -t10;
t54 = -t11;
t55 = -t14;
t56 = -t15;
t57 = -t18;
t58 = -t19;
t59 = -t22;
t60 = -t23;
t64 = t26-1.0;
t73 = t2./8.0;
t74 = t3./8.0;
t75 = t4./8.0;
t76 = t5./8.0;
t77 = t6./8.0;
t78 = t7./8.0;
t79 = t8./8.0;
t80 = t9./8.0;
t101 = t61+1.0./4.0;
t102 = t63+1.0./4.0;
t112 = t61-1.0./4.0;
t113 = t62-1.0./2.0;
t114 = t63-1.0./4.0;
t65 = -t27;
t66 = -t30;
t67 = -t31;
t68 = -t34;
t69 = -t35;
t70 = -t38;
t71 = -t40;
t72 = -t41;
t85 = t27./8.0;
t86 = t28./8.0;
t87 = t29./8.0;
t88 = t30./8.0;
t89 = t31./8.0;
t90 = t32./8.0;
t91 = t33./8.0;
t92 = t34./8.0;
t93 = t35./8.0;
t94 = t36./8.0;
t95 = t37./8.0;
t96 = t38./8.0;
t97 = t39./8.0;
t98 = t40./8.0;
t99 = t41./8.0;
t100 = t42./8.0;
t111 = 1.0./t64;
t115 = t102.*u2;
t116 = t102.*u3;
t117 = t102.*v2;
t118 = t102.*v3;
t119 = t101.*u3;
t120 = t101.*u4;
t121 = t101.*v3;
t122 = t101.*v4;
t123 = t114.*u1;
t124 = t114.*u4;
t125 = t114.*v1;
t126 = t114.*v4;
t127 = t112.*u1;
t128 = t112.*u2;
t129 = t112.*v1;
t130 = t112.*v2;
t139 = X1+X3+t20+t24+t45+t47+t57+t59;
t140 = X2+X4+t21+t25+t46+t48+t58+t60;
t141 = X1+X7+t12+t16+t43+t45+t53+t55;
t142 = X2+X8+t13+t17+t44+t46+t54+t56;
t103 = -t85;
t104 = -t88;
t105 = -t89;
t106 = -t92;
t107 = -t93;
t108 = -t96;
t109 = -t98;
t110 = -t99;
t133 = -t120;
t134 = -t122;
t137 = -t128;
t138 = -t130;
t147 = t2+t5+t6+t8+t28+t29+t32+t33+t36+t37+t39+t42+t49+t50+t51+t52+t65+t66+t67+t68+t69+t70+t71+t72;
t143 = t119+t127+t133+t137;
t144 = t121+t129+t134+t138;
t148 = 1.0./t147;
t149 = t101.*t142.*t148.*2.0;
t150 = t102.*t141.*t148.*2.0;
t151 = t101.*t140.*t148.*2.0;
t152 = t102.*t139.*t148.*2.0;
t153 = t112.*t142.*t148.*2.0;
t155 = t114.*t141.*t148.*2.0;
t157 = t112.*t140.*t148.*2.0;
t159 = t114.*t139.*t148.*2.0;
t166 = t140.*t144.*t148.*2.0;
t167 = t139.*t148.*(t115-t116-t123+t124).*-2.0;
t169 = t142.*t143.*t148.*2.0;
t170 = t142.*t144.*t148.*2.0;
t171 = t141.*t148.*(t115-t116-t123+t124).*-2.0;
t172 = t140.*t143.*t148.*2.0;
t173 = t141.*t148.*(t117-t118-t125+t126).*2.0;
t175 = t139.*t148.*(t117-t118-t125+t126).*2.0;
t178 = t141.*t148.*(t115-t116-t123+t124).*2.0;
t154 = -t149;
t156 = -t150;
t158 = -t151;
t160 = -t152;
t161 = -t153;
t162 = -t155;
t163 = -t157;
t164 = -t159;
t179 = -t172;
t188 = t169+t178;
t191 = t166+t175;
t192 = (t172+t139.*t148.*(t115-t116-t123+t124).*2.0).^2;
t195 = (t170+t173).^2;
t180 = t151+t160;
t181 = t149+t156;
t182 = t157+t160;
t183 = t151+t164;
t184 = t153+t156;
t185 = t149+t162;
t186 = t157+t164;
t187 = t153+t162;
t190 = t167+t179;
t193 = t191.^2;
t194 = t188.^2;
t196 = t192./2.0;
t199 = t195./2.0;
t202 = (t150+t161).*(t170+t173);
t204 = (t172+t139.*t148.*(t115-t116-t123+t124).*2.0).*(t152+t163);
t197 = t193./2.0;
t198 = t194./2.0;
t212 = t182+t204;
t214 = t150+t161+t202;
t218 = t190+t196+t197;
t219 = t170+t173+t198+t199;
t220 = (E.*Lz.*t111.*t218)./2.0;
t221 = (E.*Lz.*t111.*t219)./2.0;
t222 = E.*Lz.*t62.*t111.*t218;
t223 = E.*Lz.*t62.*t111.*t219;
t225 = t220+t223;
t226 = t221+t222;
et1 = t218.*((E.*Lz.*t111.*(t159+t163+t186.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))./2.0+E.*Lz.*t62.*t111.*t187.*t188)+t219.*((E.*Lz.*t111.*t187.*t188)./2.0+E.*Lz.*t62.*t111.*(t159+t163+t186.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))+t225.*(t159+t163+t186.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))+t187.*t188.*t226-E.*Lz.*t111.*t113.*(t155+t161+t186.*t188+t187.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0));
et2 = -(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110);
et3 = t218.*((E.*Lz.*t111.*(t152+t158+t180.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))./2.0+E.*Lz.*t62.*t111.*t181.*t188)+t219.*((E.*Lz.*t111.*t181.*t188)./2.0+E.*Lz.*t62.*t111.*(t152+t158+t180.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))+t225.*(t152+t158+t180.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))+t181.*t188.*t226-E.*Lz.*t111.*t113.*(t150+t154+t180.*t188+t181.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0));
et4 = -(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110);
et5 = t218.*((E.*Lz.*t111.*(t158+t159+t183.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))./2.0+E.*Lz.*t62.*t111.*t185.*t188)+t219.*((E.*Lz.*t111.*t185.*t188)./2.0+E.*Lz.*t62.*t111.*(t158+t159+t183.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)))+t225.*(t158+t159+t183.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))+t185.*t188.*t226-E.*Lz.*t111.*t113.*(t154+t155+t183.*t188+t185.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0)).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0));
et6 = t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110;
mt1 = [et1.*et2,-(t218.*((E.*Lz.*t111.*t186.*t191)./2.0+E.*Lz.*t62.*t111.*(t187+t187.*(t170+t173)))+t219.*((E.*Lz.*t111.*(t187+t187.*(t170+t173)))./2.0+E.*Lz.*t62.*t111.*t186.*t191)+t226.*(t187+t187.*(t170+t173))+t186.*t191.*t225-E.*Lz.*t111.*t113.*(t186+t186.*(t170+t173)+t187.*t191).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))).*(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110)];
mt2 = [-(t212.*t225+t218.*((E.*Lz.*t111.*t212)./2.0+E.*Lz.*t62.*t111.*t188.*(t150+t161))+t219.*((E.*Lz.*t111.*t188.*(t150+t161))./2.0+E.*Lz.*t62.*t111.*t212)+t188.*t226.*(t150+t161)-E.*Lz.*t111.*t113.*(t184+t188.*(t152+t163)+(t172+t139.*t148.*(t115-t116-t123+t124).*2.0).*(t150+t161)).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))).*(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110)];
mt3 = [-(t214.*t226+t218.*((E.*Lz.*t111.*t191.*(t152+t163))./2.0+E.*Lz.*t62.*t111.*t214)+t219.*((E.*Lz.*t111.*t214)./2.0+E.*Lz.*t62.*t111.*t191.*(t152+t163))+t191.*t225.*(t152+t163)-E.*Lz.*t111.*t113.*(t152+t163+t191.*(t150+t161)+(t152+t163).*(t170+t173)).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))).*(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110),et3.*et4];
mt4 = [-(t218.*((E.*Lz.*t111.*t180.*t191)./2.0+E.*Lz.*t62.*t111.*(t181+t181.*(t170+t173)))+t219.*((E.*Lz.*t111.*(t181+t181.*(t170+t173)))./2.0+E.*Lz.*t62.*t111.*t180.*t191)+t226.*(t181+t181.*(t170+t173))+t180.*t191.*t225-E.*Lz.*t111.*t113.*(t180+t180.*(t170+t173)+t181.*t191).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))).*(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110),et5.*et6];
mt5 = [(t218.*((E.*Lz.*t111.*t183.*t191)./2.0+E.*Lz.*t62.*t111.*(t185+t185.*(t170+t173)))+t219.*((E.*Lz.*t111.*(t185+t185.*(t170+t173)))./2.0+E.*Lz.*t62.*t111.*t183.*t191)+t226.*(t185+t185.*(t170+t173))+t183.*t191.*t225-E.*Lz.*t111.*t113.*(t183+t183.*(t170+t173)+t185.*t191).*(-t169+t171+t191+t191.*(t170+t173)+t188.*(t172+t139.*t148.*(t115-t116-t123+t124).*2.0))).*(t73-t74-t75+t76+t77-t78+t79-t80+t86+t87+t90+t91+t94+t95+t97+t100+t103+t104+t105+t106+t107+t108+t109+t110)];
dFe = [mt1,mt2,mt3,mt4,mt5];
end
