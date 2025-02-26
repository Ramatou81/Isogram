def est_isogramme?(mot)
  mot = mot.downcase.gsub(" ", "")

  mot.chars.uniq.length == mot.length
end

def verification
  loop do
    print "Entrez un mot ou une phrase pour vérifier (ou tapez '-1' pour quitter) : "
    mot = gets.chomp

    break if mot == "-1"

    # Vérifier si le mot est un isogramme et afficher le résultat
    if est_isogramme?(mot)
      puts "'#{mot}' est un isogramme."
    else
      puts "'#{mot}' n'est pas un isogramme."
    end
  end
  puts "Fin de la vérification. À bientôt !"
end
verification