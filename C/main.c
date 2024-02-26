#include <stdio.h>
#include <crypt.h>
#include <string.h>
int main(){
    char password[100];
    char *hashed_password;

    printf("Inserisci la password");
    fgets(password, sizeof(password), stdin);

    password[strcpsn(password, "\n")] = '\0';

    char *salt = crypt_gensalt("$7$", 0, NULL , 0);
    hashed_password = crypt(password,salt)
   printf("Password: %s\n", password);
   printf("Hashed Password: %s\n",hashed_password);

   return 0;
}
