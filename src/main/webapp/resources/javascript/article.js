$(document).ready(function() {
	$("#tauxTVA").keyup(function() {
		tvaKeyUpFunction();
	});
});
tvaKeyUpFunction = function(){
	
	var prixUnitHT = parseFloat($("#prixUnitHT").val()); 
	var tauxTVA = parseFloat($("#tauxTVA").val());
	var prixUnitTTC = (prixUnitHT * tauxTVA/100) + prixUnitHT;
	$("#prixUnitTTC").val(prixUnitTTC);
	
}