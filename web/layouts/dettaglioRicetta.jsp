<table class="table" id="editable_table">
    <tr>
        <td style="display:inline-flex">
            <div style="margin: auto;">
                <input type="text" id="@{ingrediente.nomeIngrediente}" placeholder="ingrediente" style="margin-left: 5%; border: none; background-color: transparent;" >
            </div>
            -
            <div style="margin: auto;">
                <input type="text" id="@{quantita}" placeholder="quantita" style="margin-left: 5%; border: none; background-color: transparent;" >
            </div>
        </td>
        <td>
            <input type="BUTTON" class="btn btn-info submitBtn" onclick="Liquid.updateRow(this)" style="margin-left: 5%;" value="Modifica">
            <input type="BUTTON" class="btn btn-danger" onclick="Liquid.deleteRow(this);" style="margin-left: 5%;" value="Elimina">
        </td>
    </tr>
</table>
