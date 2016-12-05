var TableData = function () {
    //function to initiate DataTable
    //DataTable is a highly flexible tool, based upon the foundations of progressive enhancement, 
    //which will add advanced interaction controls to any HTML table
    //For more information, please visit https://datatables.net/
    var runDataTable = function () {
        var oTable = $('#ldcList').dataTable({
            "aoColumnDefs": [{
                "aTargets": [0]
            }],
            "oLanguage": {
                "sLengthMenu": "Show _MENU_ Rows",
                "sSearch": "",
                "oPaginate": {
                    "sPrevious": "",
                    "sNext": ""
                }
            },/*
            "aaSorting": [
                [1, 'asc']
            ],*/
            "aLengthMenu": [
                [5, 10, 15, 20, -1],
                [5, 10, 15, 20, "All"] // change per page values here
            ],
            // set the initial value
            "iDisplayLength": 10,
			"bProcessing": true,
			"sAjaxSource": "data/objects.txt",
			"aoColumns": [
				{ "mData": "name" },
				{ "mData": "parent" },
				{ "mData": "id" }
			],
			"aoColumnDefs": [
				{
					// `data` refers to the data for the cell (de
					// fined by `mData`, which
					// defaults to the column being worked with, in this case is the first
					// Using `row[0]` is equivalent.
					"mRender": function ( data, type, row ) {
						return '<a href="adm/ldc/edit.html?ldc=' + data + '" data-original-title="Edit" data-placement="top" class="tooltips"><i class="fa fa-edit"></i></a> | ' +
								'<a href="adm/ldc/contacts.html?ldc=' + data + '" data-original-title="Contacts" data-placement="top" class="tooltips"><i class="fa fa-group"></i></a> | ' +
								'<a href="adm/ldc/rules.html?ldc=' + data + '" data-original-title="Bussines Rules" data-placement="top" class="tooltips"><i class="fa clip-copy-3"></i></a> | ' +
								'<a href="adm/ldc/urls.html?ldc=' + data + '" data-original-title="URLs" data-placement="top" class="tooltips"><i class="fa clip-IE"></i></a>';
					},
					"aTargets": [ 2 ]
				}
			]
        });
        $('#ldcList_wrapper .dataTables_filter input').addClass("form-control input-sm").attr("placeholder", "Search");
        // modify table search input
        $('#ldcList_wrapper .dataTables_length select').addClass("m-wrap small");
        // modify table per page dropdown
        $('#ldcList_wrapper .dataTables_length select').select2();
        // initialzie select2 dropdown
        $('#ldcList_column_toggler input[type="checkbox"]').change(function () {
            /* Get the DataTables object again - this is not a recreation, just a get of the object */
            var iCol = parseInt($(this).attr("data-column"));
            var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
            oTable.fnSetColumnVis(iCol, (bVis ? false : true));
        });
    };
    
    return {
        //main function to initiate template pages
        init: function () {
            runDataTable();
        }
    };
}();