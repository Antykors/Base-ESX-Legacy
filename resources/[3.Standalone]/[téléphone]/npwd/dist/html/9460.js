(self.webpackChunknpwd_nui=self.webpackChunknpwd_nui||[]).push([[9460],{52471:function(e,n,t){"use strict";t.r(n),t.d(n,{I18nContext:function(){return k},I18nextProvider:function(){return le},Trans:function(){return G},Translation:function(){return se},composeInitialProps:function(){return Z},date:function(){return ye},getDefaults:function(){return I},getI18n:function(){return R},getInitialProps:function(){return L},initReactI18next:function(){return T},number:function(){return he},plural:function(){return be},select:function(){return ve},selectOrdinal:function(){return Oe},setDefaults:function(){return N},setI18n:function(){return C},time:function(){return me},useSSR:function(){return fe},useTranslation:function(){return re},withSSR:function(){return ge},withTranslation:function(){return ce}});var r=t(31461);function o(e,n){if(null==e)return{};var t,o,i=(0,r.Z)(e,n);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(o=0;o<a.length;o++)t=a[o],n.indexOf(t)>=0||Object.prototype.propertyIsEnumerable.call(e,t)&&(i[t]=e[t])}return i}var i=t(86522),a=t(56666),c=t(96927),u=t(64896),s=t.n(u),l=/\s([^'"/\s><]+?)[\s/>]|([^\s=]+)=\s?(".*?"|'.*?')/g;function f(e){var n={type:"tag",name:"",voidElement:!1,attrs:{},children:[]},t=e.match(/<\/?([^\s]+?)[/\s>]/);if(t&&(n.name=t[1],(s()[t[1]]||"/"===e.charAt(e.length-2))&&(n.voidElement=!0),n.name.startsWith("!--"))){var r=e.indexOf("--\x3e");return{type:"comment",comment:-1!==r?e.slice(4,r):""}}for(var o=new RegExp(l),i=null;null!==(i=o.exec(e));)if(i[0].trim())if(i[1]){var a=i[1].trim(),c=[a,""];a.indexOf("=")>-1&&(c=a.split("=")),n.attrs[c[0]]=c[1],o.lastIndex--}else i[2]&&(n.attrs[i[2]]=i[3].trim().substring(1,i[3].length-1));return n}var p=/<[a-zA-Z0-9\-\!\/](?:"[^"]*"|'[^']*'|[^'">])*>/g,d=/^\s*$/,g=Object.create(null);function y(e,n){switch(n.type){case"text":return e+n.content;case"tag":return e+="<"+n.name+(n.attrs?function(e){var n=[];for(var t in e)n.push(t+'="'+e[t]+'"');return n.length?" "+n.join(" "):""}(n.attrs):"")+(n.voidElement?"/>":">"),n.voidElement?e:e+n.children.reduce(y,"")+"</"+n.name+">";case"comment":return e+"\x3c!--"+n.comment+"--\x3e"}}var m={parse:function(e,n){n||(n={}),n.components||(n.components=g);var t,r=[],o=[],i=-1,a=!1;if(0!==e.indexOf("<")){var c=e.indexOf("<");r.push({type:"text",content:-1===c?e:e.substring(0,c)})}return e.replace(p,(function(c,u){if(a){if(c!=="</"+t.name+">")return;a=!1}var s,l="/"!==c.charAt(1),p=c.startsWith("\x3c!--"),g=u+c.length,y=e.charAt(g);if(p){var m=f(c);return i<0?(r.push(m),r):((s=o[i]).children.push(m),r)}if(l&&(i++,"tag"===(t=f(c)).type&&n.components[t.name]&&(t.type="component",a=!0),t.voidElement||a||!y||"<"===y||t.children.push({type:"text",content:e.slice(g,e.indexOf("<",g))}),0===i&&r.push(t),(s=o[i-1])&&s.children.push(t),o[i]=t),(!l||t.voidElement)&&(i>-1&&(t.voidElement||t.name===c.slice(2,-1))&&(i--,t=-1===i?r:o[i]),!a&&"<"!==y&&y)){s=-1===i?r:o[i].children;var h=e.indexOf("<",g),v=e.slice(g,-1===h?void 0:h);d.test(v)&&(v=" "),(h>-1&&i+s.length>=0||" "!==v)&&s.push({type:"text",content:v})}})),r},stringify:function(e){return e.reduce((function(e,n){return e+y("",n)}),"")}},h=m,v=t(9249),b=t(87371),O=/&(?:amp|#38|lt|#60|gt|#62|apos|#39|quot|#34|nbsp|#160|copy|#169|reg|#174|hellip|#8230|#x2F|#47);/g,j={"&amp;":"&","&#38;":"&","&lt;":"<","&#60;":"<","&gt;":">","&#62;":">","&apos;":"'","&#39;":"'","&quot;":'"',"&#34;":'"',"&nbsp;":" ","&#160;":" ","&copy;":"©","&#169;":"©","&reg;":"®","&#174;":"®","&hellip;":"…","&#8230;":"…","&#x2F;":"/","&#47;":"/"},w=function(e){return j[e]};function P(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,r)}return t}function x(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?P(Object(t),!0).forEach((function(n){(0,a.Z)(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):P(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}var E,S={bindI18n:"languageChanged",bindI18nStore:"",transEmptyNodeValue:"",transSupportBasicHtmlNodes:!0,transWrapTextNodes:"",transKeepBasicHtmlNodesFor:["br","strong","i","p"],useSuspense:!0,unescape:function(e){return e.replace(O,w)}},k=(0,c.createContext)();function N(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};S=x(x({},S),e)}function I(){return S}var D=function(){function e(){(0,v.Z)(this,e),this.usedNamespaces={}}return(0,b.Z)(e,[{key:"addUsedNamespaces",value:function(e){var n=this;e.forEach((function(e){n.usedNamespaces[e]||(n.usedNamespaces[e]=!0)}))}},{key:"getUsedNamespaces",value:function(){return Object.keys(this.usedNamespaces)}}]),e}();function C(e){E=e}function R(){return E}var T={type:"3rdParty",init:function(e){N(e.options.react),C(e)}};function Z(e){return function(n){return new Promise((function(t){var r=L();e.getInitialProps?e.getInitialProps(n).then((function(e){t(x(x({},e),r))})):t(r)}))}}function L(){var e=R(),n=e.reportNamespaces?e.reportNamespaces.getUsedNamespaces():[],t={},r={};return e.languages.forEach((function(t){r[t]={},n.forEach((function(n){r[t][n]=e.getResourceBundle(t,n)||{}}))})),t.initialI18nStore=r,t.initialLanguage=e.language,t}function A(){if(console&&console.warn){for(var e,n=arguments.length,t=new Array(n),r=0;r<n;r++)t[r]=arguments[r];"string"==typeof t[0]&&(t[0]="react-i18next:: ".concat(t[0])),(e=console).warn.apply(e,t)}}var z={};function B(){for(var e=arguments.length,n=new Array(e),t=0;t<e;t++)n[t]=arguments[t];"string"==typeof n[0]&&z[n[0]]||("string"==typeof n[0]&&(z[n[0]]=new Date),A.apply(void 0,n))}function F(e,n,t){e.loadNamespaces(n,(function(){e.isInitialized?t():e.on("initialized",(function n(){setTimeout((function(){e.off("initialized",n)}),0),t()}))}))}function U(e,n){var t=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{},r=n.languages[0],o=!!n.options&&n.options.fallbackLng,i=n.languages[n.languages.length-1];if("cimode"===r.toLowerCase())return!0;var a=function(e,t){var r=n.services.backendConnector.state["".concat(e,"|").concat(t)];return-1===r||2===r};return!(t.bindI18n&&t.bindI18n.indexOf("languageChanging")>-1&&n.services.backendConnector.backend&&n.isLanguageChangingTo&&!a(n.isLanguageChangingTo,e)||!n.hasResourceBundle(r,e)&&n.services.backendConnector.backend&&(!n.options.resources||n.options.partialBundledLanguages)&&(!a(r,e)||o&&!a(i,e)))}function H(e,n){var t=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};if(!n.languages||!n.languages.length)return B("i18n.languages were undefined or empty",n.languages),!0;var r=void 0!==n.options.ignoreJSONStructure;return r?n.hasLoadedNamespace(e,{precheck:function(n,r){if(t.bindI18n&&t.bindI18n.indexOf("languageChanging")>-1&&n.services.backendConnector.backend&&n.isLanguageChangingTo&&!r(n.isLanguageChangingTo,e))return!1}}):U(e,n,t)}function K(e){return e.displayName||e.name||("string"==typeof e&&e.length>0?e:"Unknown")}var V=["format"],W=["children","count","parent","i18nKey","context","tOptions","values","defaults","components","ns","i18n","t","shouldUnescape"];function M(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,r)}return t}function $(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?M(Object(t),!0).forEach((function(n){(0,a.Z)(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):M(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}function q(e,n){if(!e)return!1;var t=e.props?e.props.children:e.children;return n?t.length>0:!!t}function Y(e){return e?e.props?e.props.children:e.children:[]}function _(e){return Array.isArray(e)?e:[e]}function J(e,n){if(!e)return"";var t="",r=_(e),a=n.transSupportBasicHtmlNodes&&n.transKeepBasicHtmlNodesFor?n.transKeepBasicHtmlNodesFor:[];return r.forEach((function(e,r){if("string"==typeof e)t+="".concat(e);else if((0,c.isValidElement)(e)){var u=Object.keys(e.props).length,s=a.indexOf(e.type)>-1,l=e.props.children;if(!l&&s&&0===u)t+="<".concat(e.type,"/>");else if(l||s&&0===u)if(e.props.i18nIsDynamicList)t+="<".concat(r,"></").concat(r,">");else if(s&&1===u&&"string"==typeof l)t+="<".concat(e.type,">").concat(l,"</").concat(e.type,">");else{var f=J(l,n);t+="<".concat(r,">").concat(f,"</").concat(r,">")}else t+="<".concat(r,"></").concat(r,">")}else if(null===e)A("Trans: the passed in value is invalid - seems you passed in a null child.");else if("object"===(0,i.Z)(e)){var p=e.format,d=o(e,V),g=Object.keys(d);if(1===g.length){var y=p?"".concat(g[0],", ").concat(p):g[0];t+="{{".concat(y,"}}")}else A("react-i18next: the passed in object contained more than one variable - the object should look like {{ value, format }} where format is optional.",e)}else A("Trans: the passed in value is invalid - seems you passed in a variable like {number} - please pass in variables for interpolation as full objects like {{number}}.",e)})),t}function G(e){var n=e.children,t=e.count,r=e.parent,a=e.i18nKey,u=e.context,s=e.tOptions,l=void 0===s?{}:s,f=e.values,p=e.defaults,d=e.components,g=e.ns,y=e.i18n,m=e.t,v=e.shouldUnescape,b=o(e,W),O=(0,c.useContext)(k)||{},j=O.i18n,w=O.defaultNS,P=y||j||R();if(!P)return B("You will need to pass in an i18next instance by using i18nextReactModule"),n;var x=m||P.t.bind(P)||function(e){return e};u&&(l.context=u);var E=$($({},I()),P.options&&P.options.react),S=g||x.ns||w||P.options&&P.options.defaultNS;S="string"==typeof S?[S]:S||["translation"];var N=p||J(n,E)||E.transEmptyNodeValue||a,D=E.hashTransKey,C=a||(D?D(N):N),T=f?l.interpolation:{interpolation:$($({},l.interpolation),{},{prefix:"#$?",suffix:"?$#"})},Z=$($($($({},l),{},{count:t},f),T),{},{defaultValue:N,ns:S}),L=function(e,n,t,r,o,a){if(""===n)return[];var u=r.transKeepBasicHtmlNodesFor||[],s=n&&new RegExp(u.join("|")).test(n);if(!e&&!s)return[n];var l={};!function e(n){_(n).forEach((function(n){"string"!=typeof n&&(q(n)?e(Y(n)):"object"!==(0,i.Z)(n)||(0,c.isValidElement)(n)||Object.assign(l,n))}))}(e);var f=h.parse("<0>".concat(n,"</0>")),p=$($({},l),o);function d(e,n,t){var r=Y(e),o=y(r,n.children,t);return function(e){return"[object Array]"===Object.prototype.toString.call(e)&&e.every((function(e){return(0,c.isValidElement)(e)}))}(r)&&0===o.length?r:o}function g(e,n,t,r,o){e.dummy&&(e.children=n),t.push((0,c.cloneElement)(e,$($({},e.props),{},{key:r}),o?void 0:n))}function y(n,o,l){var f=_(n);return _(o).reduce((function(n,o,m){var h,v,b,O=o.children&&o.children[0]&&o.children[0].content&&t.services.interpolator.interpolate(o.children[0].content,p,t.language);if("tag"===o.type){var j=f[parseInt(o.name,10)];!j&&1===l.length&&l[0][o.name]&&(j=l[0][o.name]),j||(j={});var w=0!==Object.keys(o.attrs).length?(h={props:o.attrs},(b=$({},v=j)).props=Object.assign(h.props,v.props),b):j,P=(0,c.isValidElement)(w),x=P&&q(o,!0)&&!o.voidElement,E=s&&"object"===(0,i.Z)(w)&&w.dummy&&!P,S="object"===(0,i.Z)(e)&&null!==e&&Object.hasOwnProperty.call(e,o.name);if("string"==typeof w){var k=t.services.interpolator.interpolate(w,p,t.language);n.push(k)}else if(q(w)||x)g(w,d(w,o,l),n,m);else if(E){var N=y(f,o.children,l);n.push((0,c.cloneElement)(w,$($({},w.props),{},{key:m}),N))}else if(Number.isNaN(parseFloat(o.name)))if(S)g(w,d(w,o,l),n,m,o.voidElement);else if(r.transSupportBasicHtmlNodes&&u.indexOf(o.name)>-1)if(o.voidElement)n.push((0,c.createElement)(o.name,{key:"".concat(o.name,"-").concat(m)}));else{var I=y(f,o.children,l);n.push((0,c.createElement)(o.name,{key:"".concat(o.name,"-").concat(m)},I))}else if(o.voidElement)n.push("<".concat(o.name," />"));else{var D=y(f,o.children,l);n.push("<".concat(o.name,">").concat(D,"</").concat(o.name,">"))}else if("object"!==(0,i.Z)(w)||P)1===o.children.length&&O?n.push((0,c.cloneElement)(w,$($({},w.props),{},{key:m}),O)):n.push((0,c.cloneElement)(w,$($({},w.props),{},{key:m})));else{var C=o.children[0]?O:null;C&&n.push(C)}}else if("text"===o.type){var R=r.transWrapTextNodes,T=a?r.unescape(t.services.interpolator.interpolate(o.content,p,t.language)):t.services.interpolator.interpolate(o.content,p,t.language);R?n.push((0,c.createElement)(R,{key:"".concat(o.name,"-").concat(m)},T)):n.push(T)}return n}),[])}return Y(y([{dummy:!0,children:e||[]}],f,_(e||[]))[0])}(d||n,C?x(C,Z):N,P,E,Z,v),A=void 0!==r?r:E.defaultTransParent;return A?(0,c.createElement)(A,b,L):L}var Q=t(59147);function X(e,n){return function(e){if(Array.isArray(e))return e}(e)||function(e,n){var t=null==e?null:"undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null!=t){var r,o,i=[],a=!0,c=!1;try{for(t=t.call(e);!(a=(r=t.next()).done)&&(i.push(r.value),!n||i.length!==n);a=!0);}catch(e){c=!0,o=e}finally{try{a||null==t.return||t.return()}finally{if(c)throw o}}return i}}(e,n)||(0,Q.Z)(e,n)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function ee(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,r)}return t}function ne(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?ee(Object(t),!0).forEach((function(n){(0,a.Z)(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):ee(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}var te=function(e,n){var t=(0,c.useRef)();return(0,c.useEffect)((function(){t.current=n?t.current:e}),[e,n]),t.current};function re(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},t=n.i18n,r=(0,c.useContext)(k)||{},o=r.i18n,i=r.defaultNS,a=t||o||R();if(a&&!a.reportNamespaces&&(a.reportNamespaces=new D),!a){B("You will need to pass in an i18next instance by using initReactI18next");var u=function(e){return Array.isArray(e)?e[e.length-1]:e},s=[u,{},!1];return s.t=u,s.i18n={},s.ready=!1,s}a.options.react&&void 0!==a.options.react.wait&&B("It seems you are still using the old wait option, you may migrate to the new useSuspense behaviour.");var l=ne(ne(ne({},I()),a.options.react),n),f=l.useSuspense,p=l.keyPrefix,d=e||i||a.options&&a.options.defaultNS;d="string"==typeof d?[d]:d||["translation"],a.reportNamespaces.addUsedNamespaces&&a.reportNamespaces.addUsedNamespaces(d);var g=(a.isInitialized||a.initializedStoreOnce)&&d.every((function(e){return H(e,a,l)}));function y(){return a.getFixedT(null,"fallback"===l.nsMode?d:d[0],p)}var m=(0,c.useState)(y),h=X(m,2),v=h[0],b=h[1],O=d.join(),j=te(O),w=(0,c.useRef)(!0);(0,c.useEffect)((function(){var e=l.bindI18n,n=l.bindI18nStore;function t(){w.current&&b(y)}return w.current=!0,g||f||F(a,d,(function(){w.current&&b(y)})),g&&j&&j!==O&&w.current&&b(y),e&&a&&a.on(e,t),n&&a&&a.store.on(n,t),function(){w.current=!1,e&&a&&e.split(" ").forEach((function(e){return a.off(e,t)})),n&&a&&n.split(" ").forEach((function(e){return a.store.off(e,t)}))}}),[a,O]);var P=(0,c.useRef)(!0);(0,c.useEffect)((function(){w.current&&!P.current&&b(y),P.current=!1}),[a,p]);var x=[v,a,g];if(x.t=v,x.i18n=a,x.ready=g,g)return x;if(!g&&!f)return x;throw new Promise((function(e){F(a,d,(function(){e()}))}))}var oe=["forwardedRef"];function ie(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,r)}return t}function ae(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?ie(Object(t),!0).forEach((function(n){(0,a.Z)(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):ie(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}function ce(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};return function(t){function r(r){var i=r.forwardedRef,a=o(r,oe),u=X(re(e,ae(ae({},a),{},{keyPrefix:n.keyPrefix})),3),s=u[0],l=u[1],f=u[2],p=ae(ae({},a),{},{t:s,i18n:l,tReady:f});return n.withRef&&i?p.ref=i:!n.withRef&&i&&(p.forwardedRef=i),(0,c.createElement)(t,p)}return r.displayName="withI18nextTranslation(".concat(K(t),")"),r.WrappedComponent=t,n.withRef?(0,c.forwardRef)((function(e,n){return(0,c.createElement)(r,Object.assign({},e,{forwardedRef:n}))})):r}}var ue=["ns","children"];function se(e){var n=e.ns,t=e.children,r=X(re(n,o(e,ue)),3),i=r[0],a=r[1],c=r[2];return t(i,{i18n:a,lng:a.language},c)}function le(e){var n=e.i18n,t=e.defaultNS,r=e.children,o=(0,c.useMemo)((function(){return{i18n:n,defaultNS:t}}),[n,t]);return(0,c.createElement)(k.Provider,{value:o},r)}function fe(e,n){var t=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{},r=t.i18n,o=(0,c.useContext)(k)||{},i=o.i18n,a=r||i||R();a.options&&a.options.isClone||(e&&!a.initializedStoreOnce&&(a.services.resourceStore.data=e,a.options.ns=Object.values(e).reduce((function(e,n){return Object.keys(n).forEach((function(n){e.indexOf(n)<0&&e.push(n)})),e}),a.options.ns),a.initializedStoreOnce=!0,a.isInitialized=!0),n&&!a.initializedLanguageOnce&&(a.changeLanguage(n),a.initializedLanguageOnce=!0))}var pe=["initialI18nStore","initialLanguage"];function de(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,r)}return t}function ge(){return function(e){function n(n){var t=n.initialI18nStore,r=n.initialLanguage,i=o(n,pe);return fe(t,r),(0,c.createElement)(e,function(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?de(Object(t),!0).forEach((function(n){(0,a.Z)(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):de(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}({},i))}return n.getInitialProps=Z(e),n.displayName="withI18nextSSR(".concat(K(e),")"),n.WrappedComponent=e,n}}var ye=function(){return""},me=function(){return""},he=function(){return""},ve=function(){return""},be=function(){return""},Oe=function(){return""}},64896:function(e){e.exports={area:!0,base:!0,br:!0,col:!0,embed:!0,hr:!0,img:!0,input:!0,link:!0,meta:!0,param:!0,source:!0,track:!0,wbr:!0}},9249:function(e,n,t){"use strict";function r(e,n){if(!(e instanceof n))throw new TypeError("Cannot call a class as a function")}t.d(n,{Z:function(){return r}})},56666:function(e,n,t){"use strict";function r(e,n,t){return n in e?Object.defineProperty(e,n,{value:t,enumerable:!0,configurable:!0,writable:!0}):e[n]=t,e}t.d(n,{Z:function(){return r}})},86522:function(e,n,t){"use strict";function r(e){return r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},r(e)}t.d(n,{Z:function(){return r}})}}]);