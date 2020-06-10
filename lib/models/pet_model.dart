class Pet {
  String nome;
  String imageUrl;
  String descricao;
  int idade;
  String sexo;
  String cor;
  String bio;
  String id;

  Pet({
    this.nome, this.imageUrl, this.descricao, this.idade, this.sexo, this.cor, this.bio, this.id
});
}

var pets = [
  Pet(
    nome: "Dogenilson",
    imageUrl: "assets/images/dog1.jpg",
    descricao: "Um dog",
    idade: 2,
    sexo: "Macho",
    bio: "Manso",
    id: "1"
  ),
  Pet(
      nome: "Catioro",
      imageUrl: "assets/images/dog2.jpeg",
      descricao: "Outro dog",
      idade: 1,
      sexo: "Macho",
      bio: "Brabo",
      id: "2"
  )
];