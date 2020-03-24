$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)

  result = {}
  i = 0
  while i < nds.length do
    director = nds[i][:name]
      j = 0
      result[director] = 0
      while j < nds[i][:movies].length do 
        result[director] += nds[i][:movies][j][:worldwide_gross]
        i += 1
      end
      i += 1
  end
  result
end
