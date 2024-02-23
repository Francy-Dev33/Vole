install_lib_df() {
  pip install numpy scipy matplotlib pandas requests beautifulsoup4 tk 
}

fix_pygame_install_termux() {
   pip install --upgrade pip
   pip install --upgrade setuptools
   pkg install libsdl libsdl_mixer
   pip install pygame
   
}
