padece(pedro,gripe).
padece(pedro,hepatitis).
padece(juan,hepatitis).
padece(maria,gripe).
padece(carlos,intoxicacion).
es_sintoma(fiebre,gripe).
es_sintoma(cansancio,hepatitis).
es_sintoma(diarrea,intoxicacion).
suprime(aspirina,fiebre).
suprime(lomotil,diarrea).
alivia(Enfermedad,Farmaco):-es_sintoma(Sintoma,Enfermedad),suprime(Farmaco,Sintoma).
debe_tomar(Persona,Farmaco):-padece(Persona,Enfermedad),alivia(Enfermedad,Farmaco).
tiene(Persona,Sintoma):-padece(Persona,Enfermedad),es_sintoma(Sintoma,Enfermedad).



