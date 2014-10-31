Ext.require ([
	'Earsip.store.Berkas'
,	'Earsip.store.KlasArsip'
,	'Earsip.store.TipeArsip'
,	'Earsip.view.BerkasBerbagiWin'
,	'Earsip.view.CariBerkasWin'
,	'Earsip.view.DocViewer'
]);

Ext.define ('Earsip.view.BerkasList', {
	extend		: 'Ext.grid.Panel'
,	alias		: 'widget.berkaslist'
,	id			: 'berkaslist'
,	store		: 'Berkas'
,	columns		: [{
		text		: 'Nama Berkas'
	,	width		: 280
	,	hideable	: false
	,	dataIndex	: 'nama'
	,	locked		: true
	,	renderer	: function (v, md, r)
		{
			if (r.get ('tipe_file') == 0) {
				md.tdCls = 'dir';
			} else {
				md.tdCls = 'doc';
			}
			return v;
		}
	},{
		text		: 'Klasifikasi'
	,	width		: 150
	,	dataIndex	: 'berkas_klas_id'
	,	renderer	: store_renderer ('id', 'nama', Ext.getStore ('KlasArsip'))
	},{
		text		: 'Tipe'
	,	width		: 150
	,	dataIndex	: 'berkas_tipe_id'
	,	renderer	: store_renderer ('id', 'nama', Ext.getStore ('TipeArsip'))
	},{
		text		: 'Tanggal Dibuat'
	,	width		: 150
	,	dataIndex	: 'tgl_dibuat'
	,	align		:'center'
	,	renderer	: function(v)
			{return date_renderer (v);}
	},{
		text		: 'Status'
	,	dataIndex	: 'status'
	,	hidden		: true
	,	width		: 100
	,	renderer	: function (v, md, r)
		{
			if (v == 1) {
				return 'Aktif';
			}
			return 'Non-Aktif';
		}
	}]

,	initComponent	: function ()
	{
		this.callParent (arguments);

		Earsip.win_viewer = Ext.create ('Earsip.view.DocViewer', {});
	}

,	do_refresh	: function (id)
	{
		this.getStore ().load ({
			scope	:this
		,	params	: {
				berkas_id : Earsip.berkas.tree.id
			}
		,	callback:function (r, op, s)
			{
				if (id == undefined) {
					return	;
				}

				var berkas		= Ext.getCmp ('berkas');
				var berkasform	= berkas.down ('#berkasform');
				var rid;

				for (var i = 0; i < r.length; i++) {
					rid = parseInt (r[i].get ('id'));

					if (id == rid) {
						this.getSelectionModel ().select (r[i]);
						berkasform.set_disabled (false);
						break;
					}
				}
			}
		});
	}
});
