while [ opcion != "" ]
do
	clear
	echo "****************************"
	echo "**********MENU**************"
	echo "*****************************"
	echo

    	echo "1)" "Crear Usuarios:"
    	echo "2)" "Opcion 2"
    	echo "3)" "SALIR"

	read -p "Introduce una opcion: " opcion
	    #Comprueba si el valor recogido en opcion es 1,2 o 3, si es otra cosa, se ejecuta *)
    	case $opcion in
    	1) 
       		#Llamar a la funcion crear usuarios o llamar a un script que cree usuarios
          #ejemplo: si queremos llamar a la funcion crear usuarios pondríamos
		      fntCrearUsuarios
		read -p "Press [Enter] key to continue..."
       		;;
    	2) 
        	echo "Opcion 2"
		read -p "Press [Enter] key to continue..."
        	;;
    	3) 
        	echo "Saliendo..."
		      #el comando exit hace que el script finalize con código de error 1
        	exit 1
        	;;

    	*) 
		echo "Error: Please try again (select 1..4)!"
        	read -p "Press [Enter] key to continue..."
		;;
   	esac
done
