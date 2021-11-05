class Paciente {
  final String name;
  final String date;
  final String stature;
  final String adress;
  final String location;

  const Paciente({
    this.name: "",
    this.date: "",
    this.stature: "",
    this.adress: "",
    this.location: "",
  });
}

final pacientes = [
  new Paciente(name:'Andrea Fabiola Huayna Morán',date:'11/10/1995',stature:'1.58',adress: "Av. Arequipa 123", location: "(lat, long)"),
  new Paciente(name:'Fanny Lorena Lorenzo Quilla',date:'11/10/1995',stature:'1.58',adress: "Av. Arequipa 123", location: "(lat, long)"),
  new Paciente(name:'José Mamani Gonzales',date:'11/10/1995',stature:'1.58',adress: "Av. Arequipa 123", location: "(lat, long)"),
  new Paciente(name:'Andrea Fabiola Huayna Morán',date:'11/10/1995',stature:'1.58',adress: "Av. Arequipa 123", location: "(lat, long)"),
  new Paciente(name:'Andrea Fabiola Huayna Morán',date:'11/10/1995',stature:'1.58',adress: "Av. Arequipa 123", location: "(lat, long)"),
];