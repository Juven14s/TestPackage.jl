function jeu_devine_nombre()
    # Générer un nombre aléatoire entre 1 et 10
    nombre_mystere = rand(1:10)
    essais = 0
    devine = 0
    
    println("Bienvenue au jeu 'Devine le Nombre' !")
    println("J'ai choisi un nombre entre 1 et 10. À vous de le deviner !")

    while devine != nombre_mystere
        print("Entrez votre devinette : ")
        devine = parse(Int, readline())
        essais += 1

        if devine < nombre_mystere
            println("Trop petit ! Essayez un nombre plus grand.")
        elseif devine > nombre_mystere
            println("Trop grand ! Essayez un nombre plus petit.")
        else
            println("Bravo ! Vous avez trouvé le nombre $nombre_mystere en $essais essais.")
        end
    end
end

jeu_devine_nombre()
