Ext.require ([
	'Earsip.view.WinUploadSingle'
,	'Earsip.view.WinIndeksRelatif'
]);

Ext.define ('Earsip.controller.Berkas', {
	extend	: 'Ext.app.Controller'
,	refs	: [{
		ref		: 'mainview'
	,	selector: 'mainview'
	},{
		ref		: 'berkas'
	,	selector: 'berkas'
	},{
		ref		: 'berkastree'
	,	selector: 'berkastree'
	},{
		ref		: 'berkaslist'
	,	selector: 'berkaslist'
	},{
		ref		: 'berkasform'
	,	selector: 'berkasform'
	},{
		ref		: 'cariberkaswin'
	,	selector: 'cariberkaswin'
	},{
		ref		: 'winuploadsingle'
	,	selector: 'winuploadsingle'
	},{
		ref		: 'win_indeks_relatif'
	,	selector: 'win_indeks_relatif'
	}]
,	init	: function ()
	{
		this.control ({
			'berkastree': {
				selectionchange : this.tree_selectionchange
			}
		,	'berkastree button[itemId=trash]': {
				click : this.do_open_trash
			}
		,	'berkaslist' : {
				itemdblclick : this.list_itemdblclick
			}
		,	'berkaslist button[itemId=upload]': {
				click : this.do_upload
			}
		,	'berkaslist button[itemId=refresh]': {
				click : this.list_refresh
			}
		,	'berkaslist button[itemId=dirup]' : {
				click : this.do_dirup
			}
		,	'berkaslist button[itemId=search]' : {
				click : this.open_search_win
			}
		,	'berkaslist button[itemId=share]': {
				click : this.do_share
			}
		,	'berkaslist button[itemId=del]': {
				click : this.do_delete
			}

		,	'berkasform combo[itemId=berkas_klas_id]': {
				select 	: this.on_select_berkas_klas
			}
		,	'berkasform button[itemId=indeks_relatif]':{
				click  : this.do_search_indeks_relatif
			}

		,	'cariberkaswin button[itemId=cari]' : {
				click : this.do_search
			}
		,	'winupload' : {
				close : this.winupload_close
			}
		,	'win_indeks_relatif #grid_ir' : {
				selectionchange : this.grid_indeks_on_select
			}
		,	'win_indeks_relatif button[itemId=ambil]' : {
				click : this.get_indeks_relatif
			}
		});
	}

,	tree_selectionchange : function (tree, records, opts)
	{
		if (records.length > 0) {
			Earsip.berkas.id		= records[0].get ('id');
			Earsip.berkas.pid		= records[0].get ('parentId');
			Earsip.berkas.tree.id	= records[0].get ('id');
			Earsip.berkas.tree.pid	= records[0].get ('parentId');

			this.getBerkaslist ().do_refresh ();
		}
	}

,	do_open_trash : function (b)
	{
		var tabpanel = this.getMainview ().down ('#content_tab');

		Earsip.acl = b.acl;

		var c = tabpanel.getComponent (b.itemId);
		if (c == undefined) {
			tabpanel.add ({
				xtype	: b.itemId
			});
		}
		tabpanel.setActiveTab (b.itemId);
	}

,	list_itemdblclick : function (v, r, idx)
	{
		var t = r.get ("tipe_file");
		if (t != 0) {
			Earsip.win_viewer.down ('#download').show ();
			Earsip.win_viewer.do_open (r);
			return;
		}

		Earsip.berkas.id	= r.get ("id");
		Earsip.berkas.pid	= r.get ("pid");

		var berkastree	= this.getBerkastree ();
		var node		= berkastree.getRootNode ().findChild ('id', Earsip.berkas.id, true);

		berkastree.expandAll ();
		berkastree.getSelectionModel ().select (node);
	}

,	do_upload : function (b)
	{
		if (Earsip.berkas.tree.id <= 0) {
			Ext.msg.error ('Pilih direktori penyimpanan terlebih dahulu!');
			return;
		}

		Ext.create ('Earsip.view.WinUploadSingle').show ();
	}

,	list_refresh : function (b)
	{
		var form	= this.getBerkasform ();
		var bform	= form.getForm ();

		this.getBerkaslist ().do_refresh ();

		bform.reset ();
		form.set_disabled (true);
	}

,	do_dirup : function (b)
	{
		if (Earsip.berkas.tree.pid == 0) {
			return;
		}

		var berkastree	= this.getBerkastree ();
		var root		= berkastree.getRootNode ();
		var node		= null;

		if (root.get ('id') == Earsip.berkas.tree.pid) {
			node = root;
		} else {
			node = root.findChild ('id', Earsip.berkas.tree.pid, true);
		}

		berkastree.expandAll ();
		berkastree.getSelectionModel ().select (node);
	}

,	open_search_win : function (b)
	{
		this.getBerkaslist ().win_search.show ();
	}

,	do_share : function (b)
	{
		var berkaslist = this.getBerkaslist ();

		Earsip.acl = 4;
		berkaslist.win_share.load (berkaslist.record);
		berkaslist.win_share.show ();
	}

,	do_delete : function (b)
	{
		var form			= this.getMainview ().down ('#berkasform');
		var stat_hapus_f	= form.getComponent ('status_hapus');

		Ext.Msg.confirm ('Konfirmasi'
		, 'Apakah anda yakin mau menghapus berkas?'
		, function (b)
		{
			if (b == 'no') {
				return;
			}

			stat_hapus_f.setValue (0);

			form.submit ({
				scope	: this
			,	url		: 'data/berkas_submit.jsp'
			,	success	: function (form, action)
				{
					if (action.result.success == true) {
						this.getBerkastree ().do_refresh ();
						this.getBerkaslist ().do_refresh ();
						form.reset ();
						Ext.msg.info (action.result.info);
					} else {
						Ext.msg.error (action.result.info);
					}
				}
			,	failure	: function (form, action)
				{
					Ext.msg.error ('Gagal menghapus berkas!');
				}
			});
		}
		, this);
	}

,	do_search : function (b)
	{
		var cariform	= this.getCariberkaswin ().down ('form').getForm ();
		var list		= this.getBerkaslist ();
		var list_store	= list.getStore ();
		var list_proxy	= list_store.getProxy ();
		var org_url		= list_proxy.url;

		list_proxy.url = 'data/cariberkas.jsp'

		list_store.load ({
			params	: cariform.getValues ()
		});

		list_proxy.url = org_url;
	}

,	do_search_indeks_relatif : function (comp)
	{
		Ext.create ('Earsip.view.WinIndeksRelatif').show ();
	}

,	winupload_close : function (win)
	{
		this.getBerkaslist ().do_refresh ();
	}

,	on_select_berkas_klas : function (cb, records)
	{
		var berkasform = this.getBerkasform ();

		berkasform.down ('#jra_aktif').setValue (records[0].get ('jra_aktif'));
		berkasform.down ('#jra_inaktif').setValue (records[0].get ('jra_inaktif'));
	}
	
,	grid_indeks_on_select : function (model, records)
	{
		var form = this.getWin_indeks_relatif ().down ('#form_ir');
		form.loadRecord (records[0]);
		
	}
,	get_indeks_relatif : function (btn)
	{
		var win = this.getWin_indeks_relatif ();
		var grid = win.down ('#grid_ir');
		var data = grid.getSelectionModel ().getSelection ();
		if (data.length <= 0)
			return;
		
		
		var form = win.down ('#form_ir').getForm ();
		var berkasform = this.getBerkasform (); 
		var combo_klas = berkasform.down ('#berkas_klas_id');
		var id = form.getRecord ().get ('berkas_klas_id');
		var r = combo_klas.getStore ().getById (id);
		combo_klas.setValue (id);
		this.on_select_berkas_klas (combo_klas,new Array(r));
		win.close ();
	}
});
