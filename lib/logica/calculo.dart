calcular( costoMoto, montoPagoUnico,  cantCuotas){
  //El usuario paga un monto en un pago, lo que se financia en cuotas es el resto que queda por pagar
  //segun la cantidad de cuotas se aplica cierto interes, en este caso esta hardcodeado
  //El metodo devuelve el valor de cada cuota.
  double costoCuota;

  costoCuota = (costoMoto - montoPagoUnico)/cantCuotas;
  costoCuota = costoCuota*25;

  return costoCuota;
}