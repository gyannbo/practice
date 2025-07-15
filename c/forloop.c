#include <stdio.h>

int	main()
{
	char *StringArray[] = { "Prof", "Grincheux", "Simplet", "Atchoum",
	"Timide", "Dormeur", "Joyeux"};
	for(int x = 0; x < 7; x++)			//ne pas oublier int
	{
		printf("%s\n", StringArray[x]);
	}
	return (0);
}
