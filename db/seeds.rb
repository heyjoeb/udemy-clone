User.delete_all
user01 = User.create!( email:"prueba01@prueba01.com", password:"qwerty01", password_confirmation:"qwerty01"  )
user02 = User.create!( email:"prueba02@prueba02.com", password:"qwerty02", password_confirmation:"qwerty02"  )
user03 = User.create!( email:"prueba03@prueba03.com", password:"qwerty03", password_confirmation:"qwerty03"  )



Course.delete_all
course01 = Course.create( owner_id:user01.id, name: "curso 01", description: "Este es el primer curso en el que aprenderás lo primero." )
course02 = Course.create( owner_id:user01.id, name: "curso 02", description: "Este es el segundo curso en el que aprenderás lo segundo." )
course03 = Course.create( owner_id:user01.id, name: "curso 03", description: "Este es el tercer curso en el que aprenderás lo tercero." )
course04 = Course.create( owner_id:user02.id, name: "curso 04", description: "Este es el cuarto curso en el que aprenderás lo cuarto." )