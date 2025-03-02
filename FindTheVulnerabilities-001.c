#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int checkPass(char* user, char* password){
	printf(user);
	if (strcmp(user, password) == 0)
		return 1;
	else
		return 0;
}

int main(int argc, char* argv[]){
	char* password = "easypass";
	char* upass = (char*)malloc(20);
	char* uuser = (char*)malloc(20);
	
	printf("Please enter your username\n");
	scanf("%s", uuser);
	printf("Hello %s\n", uuser);
	
	printf("Please enter your password\n");
	scanf("%s", upass);
	
	if (checkPass(upass, password))
		printf("Welcome home!\n");
	else
		printf("Wrong password!\n");
	free(upass);
	free(uuser);
}