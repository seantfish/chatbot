# AIML Interpreter

using EzXML, DataFrames

function parseAIML(fileName)
    doc = readxml(fileName)
    aiml = root(doc)
    for item in eachelement(aiml)
        for phrase in eachelement(item)
            ph = strip(nodecontent(phrase))
            println(ph)
        end
    end
end  

parseAIML("basic.aiml")