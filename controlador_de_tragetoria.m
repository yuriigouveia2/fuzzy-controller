function [v, w] = controletragetoria(Eteta, Ex, Ey)
  
  #A entrada sao os erros
  W ='';
  V = '';
  #Condiçoes de estato para erro em teta
  if Eteta < -2
    estado_teta = 'GN';
  elseif Eteta >= -2 && Eteta < -1
    estado_teta = 'MN';
  elseif Eteta >= -1 && Eteta < -0
    estado_teta = 'PN';
  elseif Eteta == 0
    estado_teta = 'Z';
  elseif Eteta > 0 && Eteta <= 1
    estado_teta = 'PP';
  elseif Eteta > 1 && Eteta <= 2
    estado_teta = 'MP';
  elseif Eteta > 2
    estado_teta = 'GP';
  
  end
  
  #Condiçoes de estato para erro em x
  if Ex < -1
    estado_x = 'LN';
  elseif Ex >= -1 && Ex < 0
    estado_x = 'PN';
  elseif Ex == 0
    estado_x = 'Z';
  elseif Ex > 0 && Ex <= 1
    estado_x = 'PP';
  elseif Ex > 1
    estado_x = 'LP'; 
  end;  

#Condiçoes de estato para erro em y
  if Ey < -1
    estado_y = 'LN';
  elseif Ey >= -1 && Ey < 0
    estado_y = 'PN';
  elseif Ey == 0
    estado_y = 'Z';
  elseif Ey > 0 && Ey <= 1
    estado_y = 'PP';
  elseif Ey > 1
    estado_y = 'LP';
  end;  

#A velocidade linear eh classificada como R,L e Z
#A velocidade angular eh classificada como RN, LN, Z, LP e RP

#TABELA VERDADE VELOCIDADE ANGULAR E LINEAR PARTE 1

  if estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'LN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'PN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'Z' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'PP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LP' & estado_x == 'LP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
    
#TABELA VERDADE VELOCIDADE ANGULAR E LINEAR PARTE 2
    
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'MN'
    V = 'L';  W ='LN';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'MN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'MN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'PN'
    V = 'L';  W ='LP';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'PN'
    V = 'Z';  W ='LN';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'PN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'Z'
    V = 'L';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'Z'
    V = 'L';  W ='Z';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'Z'
    V = 'L';  W ='RN';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'PP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'PP'
    V = 'Z';  W ='LP';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'PP'
    V = 'L';  W ='LN';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'MP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'MP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'MP'
    V = 'L';  W ='LP';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'LN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'PN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'Z' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'PP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PP' & estado_x == 'LP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
    
#TABELA VERDADE VELOCIDADE ANGULAR E LINEAR PARTE 3
    
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'GN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'GN'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'GN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'MN'
    V = 'L';  W ='LN';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'MN'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'PN'
    V = 'L';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'PN'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'PN'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'Z'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'Z'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'Z'
    V = 'L';  W ='RN';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'PP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'PP'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'PP'
    V = 'L';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'MP'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'MP'
    V = 'L';  W ='LP';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'LN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'PN' & estado_teta == 'GP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'Z' & estado_teta == 'GP'
    V = 'Z';  W ='Z';
  elseif estado_y == 'Z' & estado_x == 'PP' & estado_teta == 'GP'
    V = 'L';  W ='RP';
  elseif estado_y == 'Z' & estado_x == 'LP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
    
    
#TABELA VERDADE VELOCIDADE ANGULAR E LINEAR PARTE 4
    
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'GN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'GN'
    V = 'L';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'MN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'MN'
    V = 'R';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'PN'
    V = 'L';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'PN'
    V = 'L';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'PN'
    V = 'L';  W ='RN';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'Z'
    V = 'L';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'Z'
    V = 'Z';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'Z'
    V = 'L';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'PP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'PP'
    V = 'L';  W ='LN';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'PP'
    V = 'L';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'MP'
    V = 'R';  W ='Z';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'MP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'LN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'PN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'PN' & estado_x == 'Z' & estado_teta == 'GP'
    V = 'L';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'PP' & estado_teta == 'GP'
    V = 'R';  W ='LP';
  elseif estado_y == 'PN' & estado_x == 'LP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
    
    
#TABELA VERDADE VELOCIDADE ANGULAR E LINEAR PARTE 5
    
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'GN'
    V = 'Z';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'MN'
    V = 'L';  W ='LN';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'MN'
    V = 'L';  W ='RN';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'PN'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'PN'
    V = 'R';  W ='LN';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'Z'
    V = 'R';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'Z'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'PP'
    V = 'R';  W ='Z';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'PP'
    V = 'R';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'MP'
    V = 'L';  W ='LP';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'MP'
    V = 'L';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'LN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'PN' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'Z' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'PP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';
  elseif estado_y == 'LN' & estado_x == 'LP' & estado_teta == 'GP'
    V = 'Z';  W ='RP';   
 end;

 
  #Determinando a saída do programa
  
  if V = 'R'
    v = ;
  elseif V = 'L'
    v = ;
  elseif V = 'Z'
    v = ;
  end;
  
  if W = 'RN'
    w = ;
  elseif W = 'LN'
    w = ;
  elseif W = 'Z'
    w = ;
  elseif W = 'LP'
    w = ;
  elseif W = 'RP'
    w = ;
  end;