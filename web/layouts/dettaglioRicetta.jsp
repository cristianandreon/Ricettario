<table class="table" id="editable_table">
    <tr>
        <td style="display:inline-flex">
            <div style="margin: auto;">
                <input type="text" id="@{ingrediente.nomeIngrediente}" value="nomeIngrediente" style="margin-left: 5%; border: none; background-color: transparent;" readonly="">
            </div>
            -
            <div style="margin: auto;">
                <input type="text" id="@{quantita}" value="quantita" style="margin-left: 5%; border: none; background-color: transparent;" readonly="">
            </div>
        </td>
        <td>
            <input type="button" class="btn btn-info submitBtn" onclick="Liquid.updateRow(this)" style="margin-left: 5%;" value="Modifica">
            <input type="button" class="btn btn-danger" onclick="Liquid.deleteRow(this);" style="margin-left: 5%;" value="Elimina">
        </td>
    </tr>
</table>
