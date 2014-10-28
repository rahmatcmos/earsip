Ext.require ([
	'Earsip.view.BerkasBerbagiTree'
,	'Earsip.view.BerkasBerbagiList'
,	'Earsip.view.BerkasForm'
]);

Ext.define ('Earsip.view.BerkasBerbagi', {
	extend		: 'Ext.container.Container'
,	alias		: 'widget.berkasberbagi'
,	itemId		: 'berkasberbagi'
,	title		: 'Berkas berbagi'
,	layout		: 'border'
,	items		: [{
		xtype		: 'berkasberbagitree'
	,	region		: 'west'
	},{
		xtype		: 'berkasberbagilist'
	,	region		: 'center'
	},{
		xtype		: 'berkasform'
	,	itemId		: 'berkasberbagi_form'
	,	region		: 'east'
	,	width		: 400
	,	split		: true
	,	collapsible	: true
	,	header		: false
	}]
	
,	listeners : {
		activate	: function (c)
		{
			c.down ('#berkasberbagitree').do_refresh ();
		}
	,	beforerender: function (comp)
		{
			this.down ('#berkasberbagi_form').down ('#indeks_relatif').hide ();
		}
	}
});
