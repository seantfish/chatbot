import os

def ProcessScript(script):
    start = False
    dialogue = False

    sequence = []

    with open(script, "r", encoding="utf8", errors='ignore') as r:
        for line in r:
            if start:
                if line[:5] == '\t' * 5 and not line[:6] == '\t' * 6:
                    dialogue = True
                    phrase = ""
                    name = (line[5:-1])
                    #print(name)
                elif dialogue and not line[:4] == '\t' * 4:
                    if line == '\n':
                        dialogue = False
                        #print(phrase)
                        sequence.append(phrase)
                    else:
                        phrase = phrase + (line[3:-1] + " ")
            elif line[0] == "1":
                start = True

    return sequence

if __name__=="__main__":
    directory = os.fsencode("scripts_tng")
    
    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".txt"):
            print(filename)
            seq = ProcessScript(os.path.join("scripts_tng", filename))
            with open("out.txt",'a', encoding='utf8') as out:
                for phrase in seq:
                    out.write(phrase+'\n')

  