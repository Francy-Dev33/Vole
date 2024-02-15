
echo ———–———–————–————–————–———–————–————–————–———
echo FIXES BUG COMMANDS TERMUX
echo ———–———–————–————–————–———–————–————–————–———
wait
pkg remove game-repo 
pkg remove science-repo 
pkg update
wait
pkg reinstall x11-repo 
pkg reinstall python3 
pkg autoclean 
wait
echo complete fix
