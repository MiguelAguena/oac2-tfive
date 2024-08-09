from bitstring import Bits, BitArray
def montador ():
    abi_register_dict = {
    "zero": "x0",
    "ra": "x1",
    "sp": "x2",
    "gp": "x3",
    "tp": "x4",
    "t0": "x5",
    "t1": "x6",
    "t2": "x7",
    "s0": "x8",
    "s1": "x9",
    "a0": "x10",
    "a1": "x11",
    "a2": "x12",
    "a3": "x13",
    "a4": "x14",
    "a5": "x15",
    "a6": "x16",
    "a7": "x17",
    "s2": "x18",
    "s3": "x19",
    "s4": "x20",
    "s5": "x21",
    "s6": "x22",
    "s7": "x23",
    "s8": "x24",
    "s9": "x25",
    "s10": "x26",
    "s11": "x27",
    "t3": "x28",
    "t4": "x29",
    "t5": "x30",
    "t6": "x31",
    "ft0": "f0",
    "ft1": "f1",
    "ft2": "f2",
    "ft3": "f3",
    "ft4": "f4",
    "ft5": "f5",
    "ft6": "f6",
    "ft7": "f7",
    "fs0": "f8",
    "fs1": "f9",
    "fa0": "f10",
    "fa1": "f11",
    "fa2": "f12",
    "fa3": "f13",
    "fa4": "f14",
    "fa5": "f15",
    "fa6": "f16",
    "fa7": "f17",
    "fs2": "f18",
    "fs3": "f19",
    "fs4": "f20",
    "fs5": "f21",
    "fs6": "f22",
    "fs7": "f23",
    "fs8": "f24",
    "fs9": "f25",
    "fs10": "f26",
    "fs11": "f27",
    "ft8": "f28",
    "ft9": "f29",
    "ft10": "f30",
    "ft11": "f31",
    }
    #
    # Coloque o nome do arquivo de entrada aqui!
    arquivo = open('sort_grupo12.s','r')
    # --------------------------------------
    #
    linhas = arquivo.readlines()
    arquivo.close()
    labels = {}
    métodos =["add","slt","addi","slti","slli","srli","srai","lw","sw","beq","bne","blt","jal","jalr","halt"]
    instruções = []
    for linha in linhas:
        linhaStripped = linha.strip("\n")
        linhaStripped = linhaStripped.replace("\t"," ")
        
        linhaStripped = linhaStripped.strip(";")
        linhaStripped = linhaStripped.split("#")[0]
        linhaStripped = linhaStripped.strip(":")
        linhaStripped = linhaStripped.split(",")
        if len(linhaStripped) != 1:
            linhaStripped.insert(0,linhaStripped[0].split()[0])
            linhaStripped[1] = linhaStripped[1].split()[1]
        
        linhaStripped = [i.strip().lower() for i in linhaStripped]
        linhaStripped = [i.strip(":") for i in linhaStripped]
        
        if linhaStripped[0] not in métodos:
            linhaStripped = linhaStripped[0]
            if linhaStripped in labels:
                raise DuplicatedLabelError
            else:
                linhaStripped = linhaStripped.strip(" ")
                if len(linhaStripped) != 0:
                    labels[linhaStripped] = len(instruções)
        else:
            instruções.append(linhaStripped)
    linhasWrite =[]
    for linha in instruções:
        saída="00000000000000000000000000000000"
        if linha[0] =="add" and linha[0] !="addi" :
            saída6a0 ="0110011"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            rs2 = abi_register_dict[linha[3]].strip("x")
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída14a12 = "000"
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída24a20 = BitArray(uint=int(rs2),length=5).bin
            saída31a25 = "0000000" 
            saída= saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="slt" and linha[0] !="slti" :
            saída6a0 ="0110011"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            rs2 = abi_register_dict[linha[3]].strip("x")
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída14a12 = "010"
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída24a20 = BitArray(uint=int(rs2),length=5).bin
            saída31a25 = "0000000" 
            saída= saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="addi" :
            saída6a0 ="0010011"
            saída14a12 = "000"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            imediato = linha[3]
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída31a20 = BitArray(int=int(imediato),length=12).bin
            saída = saída31a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="slti" :
            saída6a0 ="0010011"
            saída14a12 = "010"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            imediato = linha[3]
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída31a20 = BitArray(int=int(imediato),length=12).bin
            saída = saída31a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="slli" :
            saída6a0 ="0010011"
            saída14a12 = "001"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            shamt = linha[3]
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída24a20 = BitArray(uint=int(shamt),length=5).bin
            saída31a25 = "0000000"
            saída = saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="srli" :
            saída6a0 ="0010011"
            saída14a12 = "101"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            shamt = linha[3]
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída24a20 = BitArray(uint=int(shamt),length=5).bin
            saída31a25 = "0000000"
            saída = saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="srai" :
            saída6a0 ="0010011"
            saída14a12 = "101"
            saída31a25 = "0100000"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2]].strip("x")
            shamt = linha[3]
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída24a20 = BitArray(uint=int(shamt),length=5).bin
            saída = saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="lw":
            saída6a0 ="0000011"
            saída14a12 = "010"
            rd = abi_register_dict[linha[1]].strip("x")
            offset = linha[2].split("(")[0]
            rs1 = abi_register_dict[linha[2].split("(")[1].strip(")")].strip("x")
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída31a20 = BitArray(int=int(offset),length=12).bin
            saída = saída31a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="sw":
            saída6a0 ="0100011"
            saída14a12 = "010"
            rd = abi_register_dict[linha[1]].strip("x")
            offset = linha[2].split("(")[0]
            rs1 = abi_register_dict[linha[2].split("(")[1].strip(")")].strip("x")
            saída24a20 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída31a25 = BitArray(int=int(offset),length=12).bin[0:7]
            saída11a7 = BitArray(int=int(offset),length=12).bin[7:]
            saída = saída31a25+saída24a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] =="beq":
            saída6a0 ="1100011"
            saída14a12 = "000"
            rs1 = abi_register_dict[linha[1]].strip("x")
            rs2 = abi_register_dict[linha[2]].strip("x")
            if linha[3] in labels:
                target = int(labels[linha[3]])
                ProgramCounter = instruções.index(linha)
                imediato = (target - ProgramCounter)*2
            else:
                imediato = int(linha[3])*2
            saída24a20 = BitArray(uint=int(rs2),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            imediato_bin = BitArray(int=int(imediato),length=12).bin[::-1]
            #imediato_bin = [12,11,10,9,8,7,6,5,4,3,2,1][::-1]
            saída7 = imediato_bin[10]
            saída11a8 = imediato_bin[0:4][::-1]
            saída30a25 = imediato_bin[4:10][::-1]
            saída31 = imediato_bin[11]
            
            
            saída = saída31+saída30a25+saída24a20+saída19a15+saída14a12+saída11a8+saída7+saída6a0
        if linha[0] =="bne":
            saída6a0 ="1100011"
            saída14a12 = "001"
            rs1 = abi_register_dict[linha[1]].strip("x")
            rs2 = abi_register_dict[linha[2]].strip("x")
            if linha[3] in labels:
                target = int(labels[linha[3]])
                ProgramCounter = instruções.index(linha)
                imediato = (target - ProgramCounter)*2
            else:
                imediato = int(linha[3])*2
            saída24a20 = BitArray(uint=int(rs2),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            imediato_bin = BitArray(int=int(imediato),length=12).bin[::-1]
            #imediato_bin = [12,11,10,9,8,7,6,5,4,3,2,1][::-1]
            saída7 = imediato_bin[10]
            saída11a8 = imediato_bin[0:4][::-1]
            saída30a25 = imediato_bin[4:10][::-1]
            saída31 = imediato_bin[11]
            
            
            saída = saída31+saída30a25+saída24a20+saída19a15+saída14a12+saída11a8+saída7+saída6a0
        if linha[0] =="blt":
            saída6a0 ="1100011"
            saída14a12 = "100"
            rs1 = abi_register_dict[linha[1]].strip("x")
            rs2 = abi_register_dict[linha[2]].strip("x")
            if linha[3] in labels:
                target = int(labels[linha[3]])
                ProgramCounter = instruções.index(linha)
                imediato = (target - ProgramCounter)*2
            else:
                imediato = int(linha[3])*2
            saída24a20 = BitArray(uint=int(rs2),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            imediato_bin = BitArray(int=int(imediato),length=12).bin[::-1]
            #imediato_bin = [12,11,10,9,8,7,6,5,4,3,2,1][::-1]
            saída7 = imediato_bin[10]
            saída11a8 = imediato_bin[0:4][::-1]
            saída30a25 = imediato_bin[4:10][::-1]
            saída31 = imediato_bin[11]
            
            
            saída = saída31+saída30a25+saída24a20+saída19a15+saída14a12+saída11a8+saída7+saída6a0
        if (linha[0] =="jal") and linha[0] !="jalr":
            saída6a0 ="1101111"
            rd = abi_register_dict[linha[1]].strip("x")
            target = int(labels[linha[2]])
            ProgramCounter = instruções.index(linha)
            imediato = (target - ProgramCounter)*2
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            #saída31a12 = BitArray(int=int(imediato),length=20).bin
            imediato_bin = BitArray(int=int(imediato),length=20).bin[::-1]
            #"0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19"
            #"20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1"
            #saída31a12 = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
            #saída31a12 = [saída31a12[20-20],saída31a12[20-10:20],saída31a12[20-11],saída31a12[20-19:20-12+1]]
            #saída31a12 = saída31a12[20-20]+saída31a12[20-10:20]+saída31a12[20-11]+saída31a12[20-19:20-12+1]
            #imediato_bin = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1][::-1]
            saída19a12 = imediato_bin[11:19][::-1]
            saída20 = imediato_bin[10]
            saída30a21 = imediato_bin[0:10][::-1]
            saída31 = imediato_bin[19]
            
            
            
            
            saída = saída31+saída30a21+saída20+saída19a12+saída11a7+saída6a0
        if linha[0] =="jalr":
            saída6a0 ="1100111"
            saída14a12 = "000"
            rd = abi_register_dict[linha[1]].strip("x")
            rs1 = abi_register_dict[linha[2].split("(")[1].strip(")")].strip("x")
            imediato = int(linha[2].split("(")[0])
            saída11a7 = BitArray(uint=int(rd),length=5).bin
            saída19a15 = BitArray(uint=int(rs1),length=5).bin
            saída31a20 = BitArray(int=int(imediato),length=12).bin
            saída = saída31a20+saída19a15+saída14a12+saída11a7+saída6a0
        if linha[0] == "halt":
            saída = "00000000000000000000000001101111"
        #else:
            #print("Erro de montagem!")
            #return
        linhasWrite.append(saída)
    
    #
    # Coloque o nome do arquivo de saída aqui!    
    arquivo = open('imem.txt','w')
    # --------------------------------------
    #
    
    for linha in linhasWrite:
        arquivo.write(linha+"\n")
    arquivo.close()
    return
montador()
