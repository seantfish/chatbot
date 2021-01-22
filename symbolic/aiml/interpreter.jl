# AIML Interpreter
# AIML is like XML

using EzXML

function parseAIML(fileName)
    doc = readxml(fileName)
    aiml = root(doc)
    for item in eachelement(aiml)
        print(item)
    end
end  

parseAIML("basic.aiml")