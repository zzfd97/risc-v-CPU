//  ������  ��ַ ������Ƿ� ע��
@00
  101_11000  //00 BEGIN :LDA DATA_2
  0000_0001  
  011_11000   //02    AND DATA_3
  0000_0010
  100_11000   //04    XOR DATA_2
  0000_0001
  001_00000   //06    SKZ
  0000_0000
  000_00000   //08    HLT  //AND doesnot work
  0000_0000
  010_11000   //0a  ADD DATA_1
  0000_0000
  001_00000   //0c  SKZ
  0000_0000
  111_00000   //0e  JMP ADD_OK
  0001_0010
  000_00000   //10  HLT // ADD doesn't work
  0000_0000
  100_11000    //12  ADD_OK;XOR DATA_3
  0000_0010 
  010_11000    //14  ADD DATA_1 //FF plus 1 makes -1
  0000_0000   
  110_11000    //16  STO TEMP 
  0000_0011
  101_11000    //18  LDA DATA_1
  0000_0000
  010_11000    //1a   ADD TEMP
  0000_0011
  001_00000    //1c  SKZ
  0000_0000
  000_00000   //1e  HLT  //ADD doesn't work
  0000_0000
  000_00000   //20  END:HLT  //congratulations test2 passed!
  0000_0000
  111_00000    //22 JMP BEGIN  // run test agin 
  0000_0000

  
