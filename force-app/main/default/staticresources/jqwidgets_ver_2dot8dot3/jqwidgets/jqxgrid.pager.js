/*
jQWidgets v2.8.3 (2013-Apr-29)
Copyright (c) 2011-2013 jQWidgets.
License: http://jqwidgets.com/license/
*/

(function(a){a.extend(a.jqx._jqxGrid.prototype,{_initpager:function(){var k=this;var c=this.gridlocalization.pagergotopagestring;var j=this.gridlocalization.pagerrangestring;var n=this.gridlocalization.pagershowrowsstring;var l=(this.pagerheight-17)/2;this.pagerdiv=this.pagerdiv||a('<div style="width: 100%; height: 100%; position: relative;"></div>');if(!this.pageable){this.pagerdiv.remove();this.vScrollBar.jqxScrollBar({thumbSize:0});return}if(!this.pagerrenderer){this.pagerdiv.css("top",l);this.pagergotoinput=this.pagergotoinput||a('<div style="margin-right: 7px; width: 27px; height: 17px; float: right;"><input style="margin-top: 0px; text-align: right; width: 27px;" type="text"/></div>');this.pagergoto=this.pagergoto||a('<div style="float: right; margin-right: 7px;"></div>');this.pagerrightbutton=this.pagerrightbutton||a('<div type="button" style="padding: 0px; margin-top: 0px; margin-right: 3px; width: 27px; float: right;"></div>');this.pagerleftbutton=this.pagerleftbutton||a('<div type="button" style="padding: 0px; margin-top: 0px; margin-right: 3px; width: 27px; float: right;"></div>');this.pagerdetails=this.pagerdetails||a('<div style="margin-right: 7px; float: right;"></div>');this.pagershowrows=this.pagershowrows||a('<div style="margin-right: 7px; float: right;"></div>');if(this.pagershowrowscombo&&this.pagershowrowscombo.jqxDropDownList){this.pagershowrowscombo.remove();this.pagershowrowscombo=null}this.pagershowrowscombo=this.pagershowrowscombo||a('<div id="gridpagerlist" style="margin-top: 0px; margin-right: 7px; float: right;"></div>');this.pagerdiv.children().remove();this.pagershowrowscombo[0].id="gridpagerlist"+this.element.id;this.removeHandler(this.pagerrightbutton,"mousedown");this.removeHandler(this.pagerrightbutton,"mouseup");this.removeHandler(this.pagerrightbutton,"click");this.removeHandler(this.pagerleftbutton,"mousedown");this.removeHandler(this.pagerleftbutton,"mouseup");this.removeHandler(this.pagerleftbutton,"click");this.pagerleftbutton.attr("title",this.gridlocalization.pagerpreviousbuttonstring);this.pagerrightbutton.attr("title",this.gridlocalization.pagernextbuttonstring);this.pagerdiv.append(this.pagerrightbutton);this.pagerdiv.append(this.pagerleftbutton);this.pagerrightbutton.jqxButton({cursor:"pointer",theme:this.theme});this.pagerleftbutton.jqxButton({cursor:"pointer",theme:this.theme});this.pagerleftbutton.find(".jqx-icon-arrow-left").remove();this.pagerrightbutton.find(".jqx-icon-arrow-right").remove();var d=a("<div style='margin-left: 6px; width: 15px; height: 15px;'></div>");d.addClass(this.toThemeProperty("jqx-icon-arrow-left"));this.pagerleftbutton.wrapInner(d);var h=a("<div style='margin-left: 6px; width: 15px; height: 15px;'></div>");h.addClass(this.toThemeProperty("jqx-icon-arrow-right"));this.pagerrightbutton.wrapInner(h);this.pagerdiv.append(this.pagerdetails);this.pagerdiv.append(this.pagershowrowscombo);this.pagerdiv.append(this.pagershowrows);this.pagerdiv.append(this.pagergotoinput);this.pagerdiv.append(this.pagergoto);var b=this.pagesizeoptions;if(!this.pagershowrowscombo.jqxDropDownList){throw new Error("jqxGrid: jqxdropdownlist.js is not loaded.");return}this.pagershowrowscombo.jqxDropDownList({rtl:this.rtl,source:b,enableBrowserBoundsDetection:true,keyboardSelection:false,autoDropDownHeight:true,width:44,height:16,theme:this.theme});var g=0;for(var f=0;f<b.length;f++){if(this.pagesize>=b[f]){g=f}}this.pagershowrows[0].innerHTML=n;this.pagergoto[0].innerHTML=c;this.updatepagerdetails();this.pager.append(this.pagerdiv);this.pagershowrowscombo.jqxDropDownList({selectedIndex:g});this.pagerpageinput=this.pagergotoinput.find("input");this.pagerpageinput.addClass(this.toThemeProperty("jqx-input"));this.pagerpageinput.addClass(this.toThemeProperty("jqx-widget-content"));if(this.rtl){this.pagerpageinput.css("direction","rtl")}var k=this;this.removeHandler(this.pagershowrowscombo,"select");this.addHandler(this.pagershowrowscombo,"select",function(q){if(q.args){if(k.editcell!=null&&k.endcelledit){k.endcelledit(k.editcell.row,k.editcell.column,true,false)}var o=q.args.index;var r=k.dataview.pagenum*k.dataview.pagesize;var p=b[o];var s=k.pagesize;k.pagesize=parseInt(p);if(isNaN(k.pagesize)){k.pagesize=10}if(p>=100){k.pagershowrowscombo.jqxDropDownList({width:55})}else{k.pagershowrowscombo.jqxDropDownList({width:44})}k.dataview.pagesize=k.pagesize;var i=Math.floor(r/k.dataview.pagesize);k.prerenderrequired=true;k._requiresupdate=true;k._raiseEvent(10,{pagenum:i,oldpagesize:s,pagesize:k.dataview.pagesize});k.gotopage(i);if(k.autoheight&&k._updatesizeonwindowresize){k._updatesize(true);setTimeout(function(){k._updatesize(true)},500)}}});var m=this.pagergotoinput.find("input");m.addClass(this.toThemeProperty("jqx-grid-pager-input"));m.addClass(this.toThemeProperty("jqx-rc-all"));this.removeHandler(m,"keydown");this.removeHandler(m,"change");this.addHandler(m,"keydown",function(i){if(i.keyCode>=65&&i.keyCode<=90){return false}if(i.keyCode=="13"){var o=m.val();o=parseInt(o);if(!isNaN(o)){k.gotopage(o-1)}return false}});this.addHandler(m,"change",function(){var i=m.val();i=parseInt(i);if(!isNaN(i)){k.gotopage(i-1)}});this.addHandler(this.pagerrightbutton,"mouseenter",function(){h.addClass(k.toThemeProperty("jqx-icon-arrow-right-hover"))});this.addHandler(this.pagerleftbutton,"mouseenter",function(){d.addClass(k.toThemeProperty("jqx-icon-arrow-left-hover"))});this.addHandler(this.pagerrightbutton,"mouseleave",function(){h.removeClass(k.toThemeProperty("jqx-icon-arrow-right-hover"))});this.addHandler(this.pagerleftbutton,"mouseleave",function(){d.removeClass(k.toThemeProperty("jqx-icon-arrow-left-hover"))});this.addHandler(this.pagerrightbutton,"mousedown",function(){h.addClass(k.toThemeProperty("jqx-icon-arrow-right-selected"))});this.addHandler(this.pagerrightbutton,"mouseup",function(){h.removeClass(k.toThemeProperty("jqx-icon-arrow-right-selected"))});this.addHandler(this.pagerleftbutton,"mousedown",function(){d.addClass(k.toThemeProperty("jqx-icon-arrow-left-selected"))});this.addHandler(this.pagerleftbutton,"mouseup",function(){d.removeClass(k.toThemeProperty("jqx-icon-arrow-left-selected"))});this.addHandler(a(document),"mouseup.pagerbuttons"+this.element.id,function(){h.removeClass(k.toThemeProperty("jqx-icon-arrow-right-selected"));d.removeClass(k.toThemeProperty("jqx-icon-arrow-left-selected"))});this.addHandler(this.pagerrightbutton,"click",function(){if(!k.pagerrightbutton.jqxButton("disabled")){k.gotonextpage()}});this.addHandler(this.pagerleftbutton,"click",function(){if(!k.pagerrightbutton.jqxButton("disabled")){k.gotoprevpage()}})}else{this.pagerdiv.children().remove();var e=this.pagerrenderer();if(e!=null){this.pagerdiv.append(a(e))}this.pager.append(this.pagerdiv)}this.vScrollBar.jqxScrollBar({thumbSize:this.host.height()/5});this.vScrollBar.jqxScrollBar("refresh");this._arrange()},_updatepagertheme:function(){if(this.pagershowrowscombo==null){return}this.pagershowrowscombo.jqxDropDownList({theme:this.theme});this.pagerrightbutton.jqxButton({theme:this.theme});this.pagerleftbutton.jqxButton({theme:this.theme});this.pagerpageinput.removeClass();var c=this.pagergotoinput.find("input");c.removeClass();c.addClass(this.toThemeProperty("jqx-grid-pager-input"));c.addClass(this.toThemeProperty("jqx-rc-all"));this.pagerpageinput.addClass(this.toThemeProperty("jqx-input"));this.pagerpageinput.addClass(this.toThemeProperty("jqx-widget-content"));this.pagerleftbutton.find(".jqx-icon-arrow-left").remove();this.pagerrightbutton.find(".jqx-icon-arrow-right").remove();var d=a("<div style='width: 27px; height: 15px;'></div>");d.addClass(this.toThemeProperty("jqx-icon-arrow-left"));this.pagerleftbutton.wrapInner(d);var e=a("<div style='width: 27px; height: 15px;'></div>");e.addClass(this.toThemeProperty("jqx-icon-arrow-right"));this.pagerrightbutton.wrapInner(e);var b=function(h,g){h.removeHandler(g,"mouseenter");h.removeHandler(g,"mouseleave");h.removeHandler(g,"mousedown");h.removeHandler(g,"mouseup")};b(this,this.pagerrightbutton);b(this,this.pagerleftbutton);var f=this;this.addHandler(this.pagerrightbutton,"mouseenter",function(){e.addClass(f.toThemeProperty("jqx-icon-arrow-right-hover"))});this.addHandler(this.pagerleftbutton,"mouseenter",function(){d.addClass(f.toThemeProperty("jqx-icon-arrow-left-hover"))});this.addHandler(this.pagerrightbutton,"mouseleave",function(){e.removeClass(f.toThemeProperty("jqx-icon-arrow-right-hover"))});this.addHandler(this.pagerleftbutton,"mouseleave",function(){d.removeClass(f.toThemeProperty("jqx-icon-arrow-left-hover"))});this.addHandler(this.pagerrightbutton,"mousedown",function(){e.addClass(f.toThemeProperty("jqx-icon-arrow-right-selected"))});this.addHandler(this.pagerrightbutton,"mouseup",function(){e.removeClass(f.toThemeProperty("jqx-icon-arrow-right-selected"))});this.addHandler(this.pagerleftbutton,"mousedown",function(){d.addClass(f.toThemeProperty("jqx-icon-arrow-left-selected"))});this.addHandler(this.pagerleftbutton,"mouseup",function(){d.removeClass(f.toThemeProperty("jqx-icon-arrow-left-selected"))})},gotopage:function(d){if(d==null||d==undefined){d=0}if(d==-1){d=0}if(d<0){return}var c=this.dataview.totalrecords;if(this.summaryrows){c+=this.summaryrows.length}var e=this.pagenum;this._raiseEvent(25,{oldpagenum:this.dataview.pagenum,pagenum:d,pagesize:this.dataview.pagesize});var b=Math.ceil(c/this.pagesize);if(d>=b){if(this.dataview.totalrecords==0){this.dataview.pagenum=0;this.updatepagerdetails()}if(d>0){d=b-1}}if(this.dataview.pagenum!=d||this._requiresupdate){if(this.pageable){if(this.source.pager){this.source.pager(d,this.dataview.pagesize,this.dataview.pagenum)}this.dataview.pagenum=d;if(this.virtualmode){this.hiddens=new Array();this.expandedgroups=new Array();if(this.rendergridrows){var h=d*this.dataview.pagesize;var g=h+this.dataview.pagesize;if(h!=null&&g!=null){if(this.pagerrightbutton){this.pagerrightbutton.jqxButton({disabled:true});this.pagerleftbutton.jqxButton({disabled:true});this.pagershowrowscombo.jqxDropDownList({disabled:true})}this.updatebounddata("pagechanged");this._raiseEvent(9,{pagenum:d,oldpagenum:e,pagesize:this.dataview.pagesize});this.updatepagerdetails();if(this.autosavestate){if(this.savestate){this.savestate()}}return}}}else{this.dataview.updateview()}this._loadrows();this._updatepageviews();this.tableheight=null;this._updatecolumnwidths();this._updatecellwidths();this._renderrows(this.virtualsizeinfo);this.updatepagerdetails();if(this.autoheight){var f=this.host.height()-this._gettableheight();height=f+this._pageviews[0].height;if(height!=this.host.height()){this._arrange();this._updatepageviews();if(this.autorowheight){this._renderrows(this.virtualsizeinfo)}}}if(this.editcell!=null&&this.endcelledit){this.endcelledit(this.editcell.row,this.editcell.column,true,false)}this._raiseEvent(9,{pagenum:d,oldpagenum:e,pagesize:this.dataview.pagesize});if(this.autosavestate){if(this.savestate){this.savestate()}}}}},gotoprevpage:function(){if(this.dataview.pagenum>0){this.gotopage(this.dataview.pagenum-1)}else{var c=this.dataview.totalrecords;if(this.summaryrows){c+=this.summaryrows.length}var b=Math.ceil(c/this.pagesize);this.gotopage(b-1)}},gotonextpage:function(){var c=this.dataview.totalrecords;if(this.summaryrows){c+=this.summaryrows.length}var b=Math.ceil(c/this.pagesize);if(this.dataview.pagenum<b-1){this.gotopage(this.dataview.pagenum+1)}else{this.gotopage(0)}},updatepagerdetails:function(){if(this.pagerdetails!=null&&this.pagerdetails.length>0){var f=this.dataview.pagenum*this.pagesize;var c=(this.dataview.pagenum+1)*this.pagesize;if(c>=this.dataview.totalrecords){c=this.dataview.totalrecords}var b=this.dataview.totalrecords;if(this.summaryrows){b+=this.summaryrows.length;if((this.dataview.pagenum+1)*this.pagesize>this.dataview.totalrecords){c=b}}f++;var e=this.pagergotoinput.find("input");e.val(this.dataview.pagenum+1);var d=Math.round(b/this.dataview.pagesize);if(d>1){d--}d++;this.pagergotoinput.attr("title","1 - "+d);if(c==0&&c<f){f=0}this.pagerdetails[0].innerHTML=f+"-"+c+this.gridlocalization.pagerrangestring+b;if(f>c){this.gotoprevpage()}}},_updatepagedview:function(e,g,b){var j=this;if(this.dataview.rows.length!=this.dataview.pagesize){this.dataview.updateview()}var k=this.dataview.rows.length;for(var d=0;d<k;d++){var f=this.dataview.rows[d].visibleindex;var h={index:f,height:this.heights[f],hidden:this.hiddens[f],details:this.details[f]};if(this.heights[f]==undefined){this.heights[f]=this.rowsheight;h.height=this.rowsheight}if(this.hiddens[f]==undefined){this.hiddens[f]=false;h.hidden=false}if(this.details[f]==undefined){this.details[f]=null}if(h.height!=j.rowsheight){g-=j.rowsheight;g+=h.height}if(h.hidden){g-=h.height}else{b+=h.height;var c=0;if(this.rowdetails){if(h.details&&h.details.rowdetails&&!h.details.rowdetailshidden){c=h.details.rowdetailsheight;b+=c;g+=c}}}}this._pageviews[0]={top:0,height:b};return g}})})(jQuery);