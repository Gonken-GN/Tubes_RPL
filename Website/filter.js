function getResultInputRadioButton(){
  var radioJenisMenu = document.getElementsByName("radioMenu");
  var radio_result_Jenis;
  for(var i = 0;i<radioJenisMenu.length;i++){
      if(radioJenisMenu[i].checked){
          radio_result_Jenis = radioJenisMenu[i].value;
      }
  }
  var radio123 = document.getElementsByName("radioJenis");
  var radio_result_123;
  for(var i = 0;i<radio123.length;i++){
      if(radio123[i].checked){
        radio_result_123 = radio123[i].value;
      }
  }
  var radioDaerah = document.getElementsByName("radioDaerah");
  var radio_result_daerah;
  for(var i = 0;i<radioDaerah.length;i++){
      if(radioDaerah[i].checked){
        radio_result_daerah = radioDaerah[i].value;
      }
  }
  window.location.href = "index.php?w1=" + radio_result_Jenis + "&w2=" + radio_result_123 + "&w3=" + radio_result_daerah;
}