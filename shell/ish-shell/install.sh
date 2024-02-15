check_dependendicies(){
   dependencies=("apk" "ssh" "nodejs" "yarn" "make" "python3")
   for dep in "${dependencies[@]}"; do
     if ! command -v "$dep" &> /dev/null; then
	  echo "Dipendenza mancante: $dep"
	  return 1
	  fi
	  done
	  return 0
}
installs_dependencies(){
apk add make
apk add openssh 
apk add nodejs npm 
aok add yarn 
apk add cmake
apk add make
apk add python3

}
requirements() 
{
install_dependencies
}
if check_dependencies; then 
   installs_dependencies
   else
       requirements
   fi
