"use strict";(self.webpackChunknpwd_nui=self.webpackChunknpwd_nui||[]).push([[6770],{56770:function(n,t,e){e.r(t),e.d(t,{SnackbarContent:function(){return fn},SnackbarProvider:function(){return Rn},Transition:function(){return q},closeSnackbar:function(){return kn},enqueueSnackbar:function(){return bn},useSnackbar:function(){return Mn}});var r=e(96927),i=e.n(r),o=e(54819),a=e(6277);let s={data:""},u=n=>"object"==typeof window?((n?n.querySelector("#_goober"):window._goober)||Object.assign((n||document.head).appendChild(document.createElement("style")),{innerHTML:" ",id:"_goober"})).firstChild:n||s,c=/(?:([\u0080-\uFFFF\w-%@]+) *:? *([^{;]+?);|([^;}{]*?) *{)|(}\s*)/g,l=/\/\*[^]*?\*\/|  +/g,d=/\n+/g,f=(n,t)=>{let e="",r="",i="";for(let o in n){let a=n[o];"@"==o[0]?"i"==o[1]?e=o+" "+a+";":r+="f"==o[1]?f(a,o):o+"{"+f(a,"k"==o[1]?"":t)+"}":"object"==typeof a?r+=f(a,t?t.replace(/([^,])+/g,(n=>o.replace(/(^:.*)|([^,])+/g,(t=>/&/.test(t)?t.replace(/&/g,n):n?n+" "+t:t)))):o):null!=a&&(o=/^--/.test(o)?o:o.replace(/[A-Z]/g,"-$&").toLowerCase(),i+=f.p?f.p(o,a):o+":"+a+";")}return e+(t&&i?t+"{"+i+"}":i)+r},p={},m=n=>{if("object"==typeof n){let t="";for(let e in n)t+=e+m(n[e]);return t}return n},h=(n,t,e,r,i)=>{let o=m(n),a=p[o]||(p[o]=(n=>{let t=0,e=11;for(;t<n.length;)e=101*e+n.charCodeAt(t++)>>>0;return"go"+e})(o));if(!p[a]){let t=o!==n?n:(n=>{let t,e,r=[{}];for(;t=c.exec(n.replace(l,""));)t[4]?r.shift():t[3]?(e=t[3].replace(d," ").trim(),r.unshift(r[0][e]=r[0][e]||{})):r[0][t[1]]=t[2].replace(d," ").trim();return r[0]})(n);p[a]=f(i?{["@keyframes "+a]:t}:t,e?"":"."+a)}let s=e&&p.g?p.g:null;return e&&(p.g=p[a]),((n,t,e,r)=>{r?t.data=t.data.replace(r,n):-1===t.data.indexOf(n)&&(t.data=e?n+t.data:t.data+n)})(p[a],t,r,s),a},g=(n,t,e)=>n.reduce(((n,r,i)=>{let o=t[i];if(o&&o.call){let n=o(e),t=n&&n.props&&n.props.className||/^go/.test(n)&&n;o=t?"."+t:n&&"object"==typeof n?n.props?"":f(n,""):!1===n?"":n}return n+r+(null==o?"":o)}),"");function x(n){let t=this||{},e=n.call?n(t.p):n;return h(e.unshift?e.raw?g(e,[].slice.call(arguments,1),t.p):e.reduce(((n,e)=>Object.assign(n,e&&e.call?e(t.p):e)),{}):e,u(t.target),t.g,t.o,t.k)}function v(n,t){for(var e=0;e<t.length;e++){var r=t[e];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(n,r.key,r)}}function E(n,t,e){return t&&v(n.prototype,t),e&&v(n,e),n}function b(){return b=Object.assign||function(n){for(var t=1;t<arguments.length;t++){var e=arguments[t];for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(n[r]=e[r])}return n},b.apply(this,arguments)}function k(n,t){n.prototype=Object.create(t.prototype),n.prototype.constructor=n,n.__proto__=t}function y(n,t){if(null==n)return{};var e,r,i={},o=Object.keys(n);for(r=0;r<o.length;r++)e=o[r],t.indexOf(e)>=0||(i[e]=n[e]);return i}x.bind({g:1}),x.bind({k:1});var C=function(){return""},w=i().createContext({enqueueSnackbar:C,closeSnackbar:C}),S="@media (max-width:599.95px)",L="@media (min-width:600px)",O=function(n){return n.charAt(0).toUpperCase()+n.slice(1)},T=function(n){return""+O(n.vertical)+O(n.horizontal)},D=function(n){return!!n||0===n},N="unmounted",j="exited",H="entering",R="entered",M="exiting",q=function(n){function t(t){var e;e=n.call(this,t)||this;var r,i=t.appear;return e.appearStatus=null,t.in?i?(r=j,e.appearStatus=H):r=R:r=t.unmountOnExit||t.mountOnEnter?N:j,e.state={status:r},e.nextCallback=null,e}k(t,n),t.getDerivedStateFromProps=function(n,t){return n.in&&t.status===N?{status:j}:null};var e=t.prototype;return e.componentDidMount=function(){this.updateStatus(!0,this.appearStatus)},e.componentDidUpdate=function(n){var t=null;if(n!==this.props){var e=this.state.status;this.props.in?e!==H&&e!==R&&(t=H):e!==H&&e!==R||(t=M)}this.updateStatus(!1,t)},e.componentWillUnmount=function(){this.cancelNextCallback()},e.getTimeouts=function(){var n=this.props.timeout,t=n,e=n;return null!=n&&"number"!=typeof n&&"string"!=typeof n&&(e=n.exit,t=n.enter),{exit:e,enter:t}},e.updateStatus=function(n,t){void 0===n&&(n=!1),null!==t?(this.cancelNextCallback(),t===H?this.performEnter(n):this.performExit()):this.props.unmountOnExit&&this.state.status===j&&this.setState({status:N})},e.performEnter=function(n){var t=this,e=this.props,r=e.enter,i=e.id,o=n,a=this.getTimeouts();n||r?(this.props.onEnter&&this.props.onEnter(this.node,o,i),this.safeSetState({status:H},(function(){t.props.onEntering&&t.props.onEntering(t.node,o,i),t.onTransitionEnd(a.enter,(function(){t.safeSetState({status:R},(function(){t.props.onEntered&&t.props.onEntered(t.node,o,i)}))}))}))):this.safeSetState({status:R},(function(){t.props.onEntered&&t.props.onEntered(t.node,o,i)}))},e.performExit=function(){var n=this,t=this.props,e=t.exit,r=t.id,i=this.getTimeouts();e?(this.props.onExit&&this.props.onExit(this.node,r),this.safeSetState({status:M},(function(){n.props.onExiting&&n.props.onExiting(n.node,r),n.onTransitionEnd(i.exit,(function(){n.safeSetState({status:j},(function(){n.props.onExited&&n.props.onExited(n.node,r)}))}))}))):this.safeSetState({status:j},(function(){n.props.onExited&&n.props.onExited(n.node,r)}))},e.cancelNextCallback=function(){null!==this.nextCallback&&this.nextCallback.cancel&&(this.nextCallback.cancel(),this.nextCallback=null)},e.safeSetState=function(n,t){t=this.setNextCallback(t),this.setState(n,t)},e.setNextCallback=function(n){var t=this,e=!0;return this.nextCallback=function(){e&&(e=!1,t.nextCallback=null,n())},this.nextCallback.cancel=function(){e=!1},this.nextCallback},e.onTransitionEnd=function(n,t){this.setNextCallback(t);var e=null==n&&!this.props.addEndListener;this.node&&!e?(this.props.addEndListener&&this.props.addEndListener(this.node,this.nextCallback),null!=n&&setTimeout(this.nextCallback,n)):setTimeout(this.nextCallback,0)},e.render=function(){var n=this.state.status;if(n===N)return null;var t=this.props;return(0,t.children)(n,y(t,["children","id","in","mountOnEnter","unmountOnExit","appear","enter","exit","timeout","addEndListener","onEnter","onEntering","onEntered","onExit","onExiting","onExited","nodeRef"]))},E(t,[{key:"node",get:function(){var n=this.props.nodeRef.current;if(!n)throw new Error("notistack - Custom snackbar is not refForwarding");return n}}]),t}(i().Component);function P(){}function A(n,t){"function"==typeof n?n(t):n&&(n.current=t)}function V(n,t){return(0,r.useMemo)((function(){return null==n&&null==t?null:function(e){A(n,e),A(t,e)}}),[n,t])}function I(n){var t=n.timeout,e=n.style,r=void 0===e?{}:e,i=n.mode;return{duration:"object"==typeof t?t[i]||0:t,easing:r.transitionTimingFunction,delay:r.transitionDelay}}q.defaultProps={in:!1,mountOnEnter:!1,unmountOnExit:!1,appear:!1,enter:!0,exit:!0,onEnter:P,onEntering:P,onEntered:P,onExit:P,onExiting:P,onExited:P};var W=function(n){n.scrollTop=n.scrollTop},z=function(n){return Math.round(n)+"ms"};function F(n,t){void 0===n&&(n=["all"]);var e=t||{},r=e.duration,i=void 0===r?300:r,o=e.easing,a=void 0===o?"cubic-bezier(0.4, 0, 0.2, 1)":o,s=e.delay,u=void 0===s?0:s;return(Array.isArray(n)?n:[n]).map((function(n){var t="string"==typeof i?i:z(i),e="string"==typeof u?u:z(u);return n+" "+t+" "+a+" "+e})).join(",")}function B(n){var t=function(n){return n&&n.ownerDocument||document}(n);return t.defaultView||window}function Z(n,t){if(t){var e=function(n,t){var e,r=t.getBoundingClientRect(),i=B(t);if(t.fakeTransform)e=t.fakeTransform;else{var o=i.getComputedStyle(t);e=o.getPropertyValue("-webkit-transform")||o.getPropertyValue("transform")}var a=0,s=0;if(e&&"none"!==e&&"string"==typeof e){var u=e.split("(")[1].split(")")[0].split(",");a=parseInt(u[4],10),s=parseInt(u[5],10)}switch(n){case"left":return"translateX("+(i.innerWidth+a-r.left)+"px)";case"right":return"translateX(-"+(r.left+r.width-a)+"px)";case"up":return"translateY("+(i.innerHeight+s-r.top)+"px)";default:return"translateY(-"+(r.top+r.height-s)+"px)"}}(n,t);e&&(t.style.webkitTransform=e,t.style.transform=e)}}var _=(0,r.forwardRef)((function(n,t){var e=n.children,i=n.direction,o=void 0===i?"down":i,a=n.in,s=n.style,u=n.timeout,c=void 0===u?0:u,l=n.onEnter,d=n.onEntered,f=n.onExit,p=n.onExited,m=y(n,["children","direction","in","style","timeout","onEnter","onEntered","onExit","onExited"]),h=(0,r.useRef)(null),g=V(e.ref,h),x=V(g,t),v=(0,r.useCallback)((function(){h.current&&Z(o,h.current)}),[o]);return(0,r.useEffect)((function(){if(!a&&"down"!==o&&"right"!==o){var n=function(n,t){var e;function r(){for(var r=this,i=arguments.length,o=new Array(i),a=0;a<i;a++)o[a]=arguments[a];var s=function(){n.apply(r,o)};clearTimeout(e),e=setTimeout(s,t)}return void 0===t&&(t=166),r.clear=function(){clearTimeout(e)},r}((function(){h.current&&Z(o,h.current)})),t=B(h.current);return t.addEventListener("resize",n),function(){n.clear(),t.removeEventListener("resize",n)}}}),[o,a]),(0,r.useEffect)((function(){a||v()}),[a,v]),(0,r.createElement)(q,Object.assign({appear:!0,nodeRef:h,onEnter:function(n,t,e){Z(o,n),W(n),l&&l(n,t,e)},onEntered:d,onEntering:function(n){var t=(null==s?void 0:s.transitionTimingFunction)||"cubic-bezier(0.0, 0, 0.2, 1)",e=I({timeout:c,mode:"enter",style:b({},s,{transitionTimingFunction:t})});n.style.webkitTransition=F("-webkit-transform",e),n.style.transition=F("transform",e),n.style.webkitTransform="none",n.style.transform="none"},onExit:function(n,t){var e=(null==s?void 0:s.transitionTimingFunction)||"cubic-bezier(0.4, 0, 0.6, 1)",r=I({timeout:c,mode:"exit",style:b({},s,{transitionTimingFunction:e})});n.style.webkitTransition=F("-webkit-transform",r),n.style.transition=F("transform",r),Z(o,n),f&&f(n,t)},onExited:function(n,t){n.style.webkitTransition="",n.style.transition="",p&&p(n,t)},in:a,timeout:c},m),(function(n,t){return(0,r.cloneElement)(e,b({ref:x,style:b({visibility:"exited"!==n||a?void 0:"hidden"},s,{},e.props.style)},t))}))}));_.displayName="Slide";var X=function(n){return i().createElement("svg",Object.assign({viewBox:"0 0 24 24",focusable:"false",style:{fontSize:20,marginInlineEnd:8,userSelect:"none",width:"1em",height:"1em",display:"inline-block",fill:"currentColor",flexShrink:0}},n))},Q=function(){return i().createElement(X,null,i().createElement("path",{d:"M12 2C6.5 2 2 6.5 2 12S6.5 22 12 22 22 17.5 22 12 17.5 2 12 2M10 17L5 12L6.41\n        10.59L10 14.17L17.59 6.58L19 8L10 17Z"}))},U=function(){return i().createElement(X,null,i().createElement("path",{d:"M13,14H11V10H13M13,18H11V16H13M1,21H23L12,2L1,21Z"}))},G=function(){return i().createElement(X,null,i().createElement("path",{d:"M12,2C17.53,2 22,6.47 22,12C22,17.53 17.53,22 12,22C6.47,22 2,17.53 2,12C2,\n        6.47 6.47,2 12,2M15.59,7L12,10.59L8.41,7L7,8.41L10.59,12L7,15.59L8.41,17L12,\n        13.41L15.59,17L17,15.59L13.41,12L17,8.41L15.59,7Z"}))},Y=function(){return i().createElement(X,null,i().createElement("path",{d:"M13,9H11V7H13M13,17H11V11H13M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,\n        0 22,12A10,10 0 0,0 12,2Z"}))},$={maxSnack:3,persist:!1,hideIconVariant:!1,disableWindowBlurListener:!1,variant:"default",autoHideDuration:5e3,iconVariant:{default:void 0,success:i().createElement(Q,null),warning:i().createElement(U,null),error:i().createElement(G,null),info:i().createElement(Y,null)},anchorOrigin:{vertical:"bottom",horizontal:"left"},TransitionComponent:_,transitionDuration:{enter:225,exit:195}};function J(n){return Object.entries(n).reduce((function(n,t){var e,r=t[0],i=t[1];return b({},n,((e={})[r]=x(i),e))}),{})}var K="notistack-CollapseWrapper",nn=J({root:{height:0},entered:{height:"auto"}}),tn="0px",en=(0,r.forwardRef)((function(n,t){var e=n.children,i=n.in,o=n.onExited,s=n.id,u=(0,r.useRef)(null),c=(0,r.useRef)(null),l=V(t,c),d=function(){return u.current?u.current.clientHeight:0};return(0,r.createElement)(q,{id:s,in:i,unmountOnExit:!0,onEnter:function(n){n.style.height=tn},onEntered:function(n){n.style.height="auto"},onEntering:function(n){var t=d(),e=I({timeout:175,mode:"enter"}),r=e.duration,i=e.easing;n.style.transitionDuration="string"==typeof r?r:r+"ms",n.style.height=t+"px",n.style.transitionTimingFunction=i||""},onExit:function(n){n.style.height=d()+"px"},onExited:o,onExiting:function(n){W(n);var t=I({timeout:175,mode:"exit"}),e=t.duration,r=t.easing;n.style.transitionDuration="string"==typeof e?e:e+"ms",n.style.height=tn,n.style.transitionTimingFunction=r||""},nodeRef:c,timeout:175},(function(n,t){return(0,r.createElement)("div",Object.assign({ref:l,className:(0,a.Z)(nn.root,"entered"===n&&nn.entered),style:b({pointerEvents:"all",overflow:"hidden",minHeight:tn,transition:F("height")},"entered"===n&&{overflow:"visible"},{},"exited"===n&&!i&&{visibility:"hidden"})},t),(0,r.createElement)("div",{ref:u,className:K,style:{display:"flex",width:"100%"}},e))}))}));en.displayName="Collapse";var rn={right:"left",left:"right",bottom:"up",top:"down"},on=function(n){return"anchorOrigin"+T(n)};function an(){for(var n=arguments.length,t=new Array(n),e=0;e<n;e++)t[e]=arguments[e];return t.reduce((function(n,t){return null==t?n:function(){for(var e=arguments.length,r=new Array(e),i=0;i<e;i++)r[i]=arguments[i];n.apply(this,r),t.apply(this,r)}}),(function(){}))}var sn="undefined"!=typeof window?r.useLayoutEffect:r.useEffect;function un(n){var t=(0,r.useRef)(n);return sn((function(){t.current=n})),(0,r.useCallback)((function(){return t.current.apply(void 0,arguments)}),[])}var cn,ln=(0,r.forwardRef)((function(n,t){var e=n.children,i=n.className,o=n.autoHideDuration,s=n.disableWindowBlurListener,u=void 0!==s&&s,c=n.onClose,l=n.id,d=n.open,f=n.SnackbarProps,p=void 0===f?{}:f,m=(0,r.useRef)(),h=un((function(){c&&c.apply(void 0,arguments)})),g=un((function(n){c&&null!=n&&(m.current&&clearTimeout(m.current),m.current=setTimeout((function(){h(null,"timeout",l)}),n))}));(0,r.useEffect)((function(){return d&&g(o),function(){m.current&&clearTimeout(m.current)}}),[d,o,g]);var x=function(){m.current&&clearTimeout(m.current)},v=(0,r.useCallback)((function(){null!=o&&g(.5*o)}),[o,g]);return(0,r.useEffect)((function(){if(!u&&d)return window.addEventListener("focus",v),window.addEventListener("blur",x),function(){window.removeEventListener("focus",v),window.removeEventListener("blur",x)}}),[u,v,d]),(0,r.createElement)("div",Object.assign({ref:t},p,{className:(0,a.Z)("notistack-Snackbar",i),onMouseEnter:function(n){p.onMouseEnter&&p.onMouseEnter(n),x()},onMouseLeave:function(n){p.onMouseLeave&&p.onMouseLeave(n),v()}}),e)}));ln.displayName="Snackbar";var dn=J({root:(cn={display:"flex",flexWrap:"wrap",flexGrow:1},cn[L]={flexGrow:"initial",minWidth:"288px"},cn)}),fn=(0,r.forwardRef)((function(n,t){var e=n.className,r=y(n,["className"]);return i().createElement("div",Object.assign({ref:t,className:(0,a.Z)(dn.root,e)},r))}));fn.displayName="SnackbarContent";var pn=J({root:{backgroundColor:"#313131",fontSize:"0.875rem",lineHeight:1.43,letterSpacing:"0.01071em",color:"#fff",alignItems:"center",padding:"6px 16px",borderRadius:"4px",boxShadow:"0px 3px 5px -1px rgba(0,0,0,0.2),0px 6px 10px 0px rgba(0,0,0,0.14),0px 1px 18px 0px rgba(0,0,0,0.12)"},lessPadding:{paddingLeft:"20px"},default:{backgroundColor:"#313131"},success:{backgroundColor:"#43a047"},error:{backgroundColor:"#d32f2f"},warning:{backgroundColor:"#ff9800"},info:{backgroundColor:"#2196f3"},message:{display:"flex",alignItems:"center",padding:"8px 0"},action:{display:"flex",alignItems:"center",marginLeft:"auto",paddingLeft:"16px",marginRight:"-8px"}}),mn=(0,r.forwardRef)((function(n,t){var e=n.id,r=n.message,o=n.action,s=n.iconVariant,u=n.variant,c=n.hideIconVariant,l=n.style,d=s[u],f=o;return"function"==typeof f&&(f=f(e)),i().createElement(fn,{ref:t,role:"alert",style:l,className:(0,a.Z)("notistack-MuiContent",pn.root,pn[u],!c&&d&&pn.lessPadding)},i().createElement("div",{id:"notistack-snackbar",className:pn.message},c?null:d,r),f&&i().createElement("div",{className:pn.action},f))}));mn.displayName="MaterialDesignContent";var hn,gn,xn,vn,En,bn,kn,yn=(0,r.memo)(mn),Cn=J({wrappedRoot:{width:"100%",position:"relative",transform:"translateX(0)",top:0,right:0,bottom:0,left:0,minWidth:"288px"}}),wn=function(n){var t=(0,r.useRef)(),e=(0,r.useState)(!0),o=e[0],s=e[1],u=an(n.snack.onClose,n.onClose),c=(0,r.useCallback)((function(){t.current=setTimeout((function(){s((function(n){return!n}))}),125)}),[]);(0,r.useEffect)((function(){return function(){t.current&&clearTimeout(t.current)}}),[]);var l,d=n.snack,f=n.classes,p=n.Component,m=void 0===p?yn:p,h=(0,r.useMemo)((function(){return function(n){void 0===n&&(n={});var t={containerRoot:!0,containerAnchorOriginTopCenter:!0,containerAnchorOriginBottomCenter:!0,containerAnchorOriginTopRight:!0,containerAnchorOriginBottomRight:!0,containerAnchorOriginTopLeft:!0,containerAnchorOriginBottomLeft:!0};return Object.keys(n).filter((function(n){return!t[n]})).reduce((function(t,e){var r;return b({},t,((r={})[e]=n[e],r))}),{})}(f)}),[f]),g=d.open,x=d.SnackbarProps,v=d.TransitionComponent,E=d.TransitionProps,k=d.transitionDuration,C=d.disableWindowBlurListener,w=d.content,S=y(d,["open","SnackbarProps","TransitionComponent","TransitionProps","transitionDuration","disableWindowBlurListener","content","entered","requestClose","onEnter","onEntered","onExit","onExited"]),L=b({direction:(l=S.anchorOrigin,"center"!==l.horizontal?rn[l.horizontal]:rn[l.vertical]),timeout:k},E),O=w;"function"==typeof O&&(O=O(S.id,S.message));var T=["onEnter","onEntered","onExit","onExited"].reduce((function(t,e){var r;return b({},t,((r={})[e]=an(n.snack[e],n[e]),r))}),{});return i().createElement(en,{id:S.id,in:o,onExited:T.onExited},i().createElement(ln,{open:g,id:S.id,disableWindowBlurListener:C,autoHideDuration:S.autoHideDuration,className:(0,a.Z)(Cn.wrappedRoot,h.root,h[on(S.anchorOrigin)]),SnackbarProps:x,onClose:u},i().createElement(v,Object.assign({},L,{id:S.id,in:g,onExit:T.onExit,onExited:c,onEnter:T.onEnter,onEntered:an(T.onEntered,(function(){n.snack.requestClose&&u(null,"instructed",n.snack.id)}))}),O||i().createElement(m,Object.assign({},S)))))},Sn=20,Ln=6,On=2,Tn=".notistack-CollapseWrapper",Dn=J({root:(hn={boxSizing:"border-box",display:"flex",maxHeight:"100%",position:"fixed",zIndex:1400,height:"auto",width:"auto",transition:F(["top","right","bottom","left","max-width"],{duration:300,easing:"ease"}),pointerEvents:"none"},hn[Tn]={padding:Ln+"px 0px",transition:"padding 300ms ease 0ms"},hn.maxWidth="calc(100% - "+2*Sn+"px)",hn[S]={width:"100%",maxWidth:"calc(100% - 32px)"},hn),rootDense:(gn={},gn[Tn]={padding:On+"px 0px"},gn),top:{top:Sn-Ln+"px",flexDirection:"column"},bottom:{bottom:Sn-Ln+"px",flexDirection:"column-reverse"},left:(xn={left:Sn+"px"},xn[L]={alignItems:"flex-start"},xn[S]={left:"16px"},xn),right:(vn={right:Sn+"px"},vn[L]={alignItems:"flex-end"},vn[S]={right:"16px"},vn),center:(En={left:"50%",transform:"translateX(-50%)"},En[L]={alignItems:"center"},En)}),Nn=function(n){var t=n.classes,e=void 0===t?{}:t,r=n.anchorOrigin,o=n.dense,s=n.children,u=(0,a.Z)("notistack-SnackbarContainer",Dn[r.vertical],Dn[r.horizontal],Dn.root,e.containerRoot,e["containerAnchorOrigin"+T(r)],o&&Dn.rootDense);return i().createElement("div",{className:u},s)},jn=(0,r.memo)(Nn),Hn=function(n){return"string"!=typeof n},Rn=function(n){function t(t){var e;return(e=n.call(this,t)||this).enqueueSnackbar=function(n,t){void 0===t&&(t={});var r=Hn(n)?n:t,i=n;Hn(n)&&(i=n.message);var o=r.key,s=r.preventDuplicate,u=y(r,["key","preventDuplicate"]),c=D(o),l=c?o:(new Date).getTime()+Math.random(),d=function(n,t){return function(e,r){return void 0===r&&(r=!1),r?b({},$[e],{},t[e],{},n[e]):"autoHideDuration"===e?(i=n.autoHideDuration,o=t.autoHideDuration,(a=function(n){return"number"==typeof n||null===n})(i)?i:a(o)?o:$.autoHideDuration):"transitionDuration"===e?function(n,t){var e=function(n,t){return t.some((function(t){return typeof n===t}))};return e(n,["string","number"])?n:e(n,["object"])?b({},$.transitionDuration,{},e(t,["object"])&&t,{},n):e(t,["string","number"])?t:e(t,["object"])?b({},$.transitionDuration,{},t):$.transitionDuration}(n.transitionDuration,t.transitionDuration):n[e]||t[e]||$[e];var i,o,a}}(u,e.props),f=b({id:l},u,{message:i,open:!0,entered:!1,requestClose:!1,persist:d("persist"),action:d("action"),content:d("content"),variant:d("variant"),anchorOrigin:d("anchorOrigin"),disableWindowBlurListener:d("disableWindowBlurListener"),autoHideDuration:d("autoHideDuration"),hideIconVariant:d("hideIconVariant"),TransitionComponent:d("TransitionComponent"),transitionDuration:d("transitionDuration"),TransitionProps:d("TransitionProps",!0),iconVariant:d("iconVariant",!0),style:d("style",!0),SnackbarProps:d("SnackbarProps",!0),className:(0,a.Z)(e.props.className,u.className)});return f.persist&&(f.autoHideDuration=void 0),e.setState((function(n){if(void 0===s&&e.props.preventDuplicate||s){var t=function(n){return c?n.id===l:n.message===i},r=n.queue.findIndex(t)>-1,o=n.snacks.findIndex(t)>-1;if(r||o)return n}return e.handleDisplaySnack(b({},n,{queue:[].concat(n.queue,[f])}))})),l},e.handleDisplaySnack=function(n){return n.snacks.length>=e.maxSnack?e.handleDismissOldest(n):e.processQueue(n)},e.processQueue=function(n){var t=n.queue,e=n.snacks;return t.length>0?b({},n,{snacks:[].concat(e,[t[0]]),queue:t.slice(1,t.length)}):n},e.handleDismissOldest=function(n){if(n.snacks.some((function(n){return!n.open||n.requestClose})))return n;var t=!1,r=!1;n.snacks.reduce((function(n,t){return n+(t.open&&t.persist?1:0)}),0)===e.maxSnack&&(r=!0);var i=n.snacks.map((function(n){return t||n.persist&&!r?b({},n):(t=!0,n.entered?(n.onClose&&n.onClose(null,"maxsnack",n.id),e.props.onClose&&e.props.onClose(null,"maxsnack",n.id),b({},n,{open:!1})):b({},n,{requestClose:!0}))}));return b({},n,{snacks:i})},e.handleEnteredSnack=function(n,t,r){if(!D(r))throw new Error("handleEnteredSnack Cannot be called with undefined key");e.setState((function(n){return{snacks:n.snacks.map((function(n){return n.id===r?b({},n,{entered:!0}):b({},n)}))}}))},e.handleCloseSnack=function(n,t,r){e.props.onClose&&e.props.onClose(n,t,r);var i=void 0===r;e.setState((function(n){var t=n.snacks,e=n.queue;return{snacks:t.map((function(n){return i||n.id===r?n.entered?b({},n,{open:!1}):b({},n,{requestClose:!0}):b({},n)})),queue:e.filter((function(n){return n.id!==r}))}}))},e.closeSnackbar=function(n){var t=e.state.snacks.find((function(t){return t.id===n}));D(n)&&t&&t.onClose&&t.onClose(null,"instructed",n),e.handleCloseSnack(null,"instructed",n)},e.handleExitedSnack=function(n,t){if(!D(t))throw new Error("handleExitedSnack Cannot be called with undefined key");e.setState((function(n){var r=e.processQueue(b({},n,{snacks:n.snacks.filter((function(n){return n.id!==t}))}));return 0===r.queue.length?r:e.handleDismissOldest(r)}))},bn=e.enqueueSnackbar,kn=e.closeSnackbar,e.state={snacks:[],queue:[],contextValue:{enqueueSnackbar:e.enqueueSnackbar,closeSnackbar:e.closeSnackbar}},e}return k(t,n),t.prototype.render=function(){var n=this,t=this.state.contextValue,e=this.props,r=e.domRoot,a=e.children,s=e.dense,u=void 0!==s&&s,c=e.Components,l=void 0===c?{}:c,d=e.classes,f=this.state.snacks.reduce((function(n,t){var e,r=T(t.anchorOrigin),i=n[r]||[];return b({},n,((e={})[r]=[].concat(i,[t]),e))}),{}),p=Object.keys(f).map((function(t){var e=f[t],r=e[0];return i().createElement(jn,{key:t,dense:u,anchorOrigin:r.anchorOrigin,classes:d},e.map((function(t){return i().createElement(wn,{key:t.id,snack:t,classes:d,Component:l[t.variant],onClose:n.handleCloseSnack,onEnter:n.props.onEnter,onExit:n.props.onExit,onExited:an(n.handleExitedSnack,n.props.onExited),onEntered:an(n.handleEnteredSnack,n.props.onEntered)})})))}));return i().createElement(w.Provider,{value:t},a,r?(0,o.createPortal)(p,r):p)},E(t,[{key:"maxSnack",get:function(){return this.props.maxSnack||$.maxSnack}}]),t}(r.Component),Mn=function(){return(0,r.useContext)(w)}}}]);