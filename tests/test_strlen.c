#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *s);

int main(void)
{
    printf("=== ft_strlen tests ===\n");
    
    char *s1 = "Hello, World!";
    printf("[1] strlen: %zu | ft_strlen: %zu\n", strlen(s1), ft_strlen(s1));
    
    char *s2 = "";
    printf("[2] strlen: %zu | ft_strlen: %zu\n", strlen(s2), ft_strlen(s2));
    
    char *s3 = "a";
    printf("[3] strlen: %zu | ft_strlen: %zu\n", strlen(s3), ft_strlen(s3));
    
    char *s4 = "Hello\0World";
    printf("[4] strlen: %zu | ft_strlen: %zu\n", strlen(s4), ft_strlen(s4));
    
    char *s5 = "                ";
    printf("[5] strlen: %zu | ft_strlen: %zu\n", strlen(s5), ft_strlen(s5));
}