<form name="creaRicettaForm" id="creaRicettaForm" method="POST" enctype="multipart/form-data">
          <hr size="1" id="nuovaRicettaPos">
          <br>
          <h2 align="center" style="color: #4E73DF">AGGIORNA RICETTA</h2>
          <br>
          <!-- Nome ricetta -->
          <h4 align="center">Nome ricetta</h4>
          <input type="text" id="@{titolo}" placeholder="Nome ricetta" class="form-control name-list" value="Nuova ricetta">
          <br>
          <br>
          <br>

          <!-- Immagine ricetta -->
          <h4 align="center">Immagine ricetta</h4>
          <input type="file" class="form-control-file" id="@{immagine}" name="immagineRicetta">
          <br>
          <br>
          <br>

          <!-- PDF ricetta -->
          <h4 align="center">PDF ricetta</h4>
          <input type="file" class="form-control-file" id="@{pdf}" name="pdfRicetta">
          <br>
          <br>
          <br>

          <!-- Difficoltà ricetta -->
          <h4 align="center">Difficolt&agrave; ricetta</h4>
          Facile <input type="radio" checked="checked" name="difficoltaRicetta" id="facile" value="facile">
          Media <input type="radio" name="difficoltaRicetta" id="media" value="media">
          Difficile <input type="radio" name="difficoltaRicetta" id="inlineRadio1" value="difficile">
          <br>
          <input type="hidden" id="@{difficolta}" value="facile">
          <br>
          <br>

          <!-- Tempo preparazione ricetta -->
          <h4 align="center">Tempo preparazione</h4>
          <input type="text" id="@{tempoPreparazione}" class="form-control" placeholder="inserisci tempo di preparazione" value="10">
          <br>
          <br>
          <br>


          
          <!-- dosi  ricetta -->
          <h4 align="center">Dosi</h4>
          <input type="text" id="@{dose}" class="form-control">
          <br>
          <br>
          <br>

          <!-- Svolgimento ricetta -->
          <h4 align="center">Svolgimento ricetta</h4>
          <textarea class="form-control" id="@{svolgimento}" rows="3">...</textarea>
          <br>
          <br>
          <br>

          <!-- Data di visualizzazione ricetta -->
          <h4 align="center">Data inizio visualizzazione ricetta</h4>
          <input type="date" id="@{dataAttivazione}" value=""10/08/2020>
          <br>
          <br>
          <br>


          <input type="BUTTON" class="btn btn-primary submitBtn" value="AGGIORNA LA RICETTA" onclick="Liquid.updateRow(this)">
          <input type="BUTTON" class="btn btn-danger" onclick="Liquid.rollback(this);" style="margin-left: 5%;" value="ANNULLA">
