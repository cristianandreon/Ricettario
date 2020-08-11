<a class="list-group-item list-group-item-action">
    <div id="@{titolo}" style="float: left;">Titolo ricetta</div>
    <input type="button" class="btn btn-primary submitBtn modifica" onclick="Liquid.selectRow(this, Liquid.getField(this, 'id'), false); Liquid.setCurrentForeignTable(this, 1)" style="margin-left: 5%;" value="Apri" />
    <input type="button" class="btn btn-info submitBtn modifica" onclick="Liquid.selectRow(this, Liquid.getField(this, 'id'), false); Liquid.updateRow(this)" style="margin-left: 5%;" value="Modifica" />
    <input type="button" class="btn btn-danger submitBtn" onclick="Liquid.deleteRow(this)" style="max-width: 200px" value="Elimina" />
</a>
