//
//  main.swift
//  Classe
//
//  Created by Lucas Gomesx on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
}

class Casa {
    
    var cor: String = "Amarelo"
    var portas: Int = 4
    var janelas: Int = 5
    var banheiros: Int = 2
    var piso: String = "Madeira"
    
    func abrirPorta() {
        print("Abrindo a porta")
    }
    
    func fecharPorta() {
        print("Fechando a porta")
    }
    
}
class Gato {
    
    var cor: String = "Preto"
    var fome: Bool = false
    var nome: String = "Nina"
    var sexo: String = "Fêmea"
    var corOlhos: String = "Azul"
    
    func comer() {
        print("O gato esta comendo")
    }
    
    func andar() {
        print("O gato esta andando")
    }
    
}

class Pessoa {
    
    var nome: String = "Lucas"
    var cfp: String = "111.111.111.11"
    var idade: Int = 23
    var genero: String = "Masculino"
    var aniverssario: String = "20/05/1998"
    
    func correr() {
        print("Pessoa esta correndo")
    }
    
    func estudar() {
        print("Pessoa esta estudando")
    }
}
