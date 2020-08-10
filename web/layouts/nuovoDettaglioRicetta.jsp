<input type="hidden" id="@{idIngrediente}" >
<table class="table" id="editable_table">
        <tr>
            <td>
                <!-- Aggiunta ingredienti per ricetta -->
                <h4 align="center">Aggiungi ingredienti</h4>
                <table class="table" id="dynamic_field_ingredient">
                <tbody><tr>
                <td><input type="text" id="@{ingrediente.nomeIngrediente}" placeholder="ingrediente" class="form-control name-list"></td>
                <td><input type="text" id="@{quantita}" placeholder="quantita " class="form-control name-list"></td>
                <td><button type="button" class="btn btn-success" onclick="Liquid.command(this,'insert')">Aggiungi</button></td>
                </tr>
                </tbody></table>
                <br>
                <br>
                <br>
            </td>
        </tr>
</table>
