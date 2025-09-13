#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# define BUFFER_SIZE 42

# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>

char	*ft_strchr(const char *str, int c);
char	*ft_strjoin(char const *s1, char const *s2);
char	*ft_strdup(const char *src);
int		ft_strlen(const char *str);
char	*ft_substr(char const *s, unsigned int start, size_t len);

/* 从 static 保存的残余和 buffer 拼接 */
char	*ft_strjoin_and_free(char *s1, char *s2);

/* 从保存的内容里切出一行（包括换行） */
char	*ft_extract_line(char *save);

/* 从保存的内容里切出剩余部分（不包括换行） */
char	*ft_get_remainder(char *save);

char	*get_next_line(int fd);

#endif
