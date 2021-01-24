# AIML Interpreter

using EzXML, DataFrames

# Build graph DataFrame for quick access
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

# Preprocess user input
function parsePrompt(prompt)
end

# Find pattern matching processed user input and choose proper handler
function matchPrompt(prompt)
end



parseAIML("basic.aiml")