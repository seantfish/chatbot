# AIML Interpreter

using EzXML, DataFrames

# Build graph DataFrame for quick access
# Need to learn more about tree in memory
function parseaiml(fileName)
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
function parseprompt(prompt)
    matchPrompt(uppercase(prompt))
    # Define default sentence structures to fit? KZ
end

# Find pattern matching processed user input and choose proper handler
function matchprompt(prompt)
end



parseaiml("basic.aiml")