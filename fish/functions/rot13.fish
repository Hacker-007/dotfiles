function rot13 --wraps=cat --wraps=cat\ \|\ tr\ \'A-Za-z\'\ \'N-ZA-Mn-za-m\' --description alias\ rot13\ cat\ \|\ tr\ \'A-Za-z\'\ \'N-ZA-Mn-za-m\'
  cat | tr 'A-Za-z' 'N-ZA-Mn-za-m' $argv
        
end
