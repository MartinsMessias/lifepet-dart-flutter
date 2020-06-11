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
    imageUrl: "assets/dog1.jpg",
    descricao: "Um dog",
    idade: 2,
    sexo: "Macho",
    cor: "Marrom",
    bio: "Manso",
    id: "1"
  ),
  Pet(
      nome: "Catioro",
      imageUrl: "assets/dog2.jpg",
      descricao: "Outro dog",
      idade: 1,
      sexo: "Macho",
      cor: "Marrom",
      bio: "Brabo",
      id: "2"
  ),
  Pet(
      nome: "Dogenilson",
      imageUrl: "assets/dog1.jpg",
      descricao: "Um dog",
      idade: 2,
      sexo: "Macho",
      cor: "Marrom",
      bio: "Manso",
      id: "3"
  ),
  Pet(
      nome: "Catioro",
      imageUrl: "assets/dog2.jpg",
      descricao: "Outro dog",
      idade: 1,
      sexo: "Macho",
      bio: "Brabo",
      cor: "Marrom",
      id: "4"
  )
];