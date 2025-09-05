module starter::practica_sui {
    use std::debug::print;
    use std::string::{String, utf8};

    public struct Usuario has drop{
        nombre: String,
        edad: u8,
        socio: bool,
    }




    fun practica(usuario : Usuario) {

        if (usuario.edad>18 && usuario.socio == true){
            print(&utf8(b"Acceso Permitido"))
        }else if(usuario.edad==18){
            print(&utf8(b"Felicitaciones, acceso permitido!!"))
        }else{
            print(&utf8(b"Acceso Denegado"))
        }

        
        //print(&numero);
        //print(&1);
    }

    #[test]
    fun prueba() {
        let usuario = Usuario{
            nombre: utf8(b"Peggy"),
            edad:29u8,
            socio:true,
        };

        practica(usuario);
        //practica(18u8);
        //practica(20u8);
    }
}