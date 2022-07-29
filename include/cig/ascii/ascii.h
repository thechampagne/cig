#ifndef __CIG_ASCII_H__
#define __CIG_ASCII_H__

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

extern char ascii_spaces[6];

extern int ASCII_ACK;
extern int ASCII_BEL;
extern int ASCII_BS;
extern int ASCII_CAN;
extern int ASCII_CR;
extern int ASCII_DC1;
extern int ASCII_DC2;
extern int ASCII_DC3;
extern int ASCII_DC4;
extern int ASCII_DEL;
extern int ASCII_DLE;
extern int ASCII_EM;
extern int ASCII_ENQ;
extern int ASCII_EOT;
extern int ASCII_ESC;
extern int ASCII_ETB;
extern int ASCII_ETX;
extern int ASCII_FF;
extern int ASCII_FS;
extern int ASCII_GS;
extern int ASCII_LF;
extern int ASCII_NAK;
extern int ASCII_NUL;
extern int ASCII_RS;
extern int ASCII_SI;
extern int ASCII_SO;
extern int ASCII_SOH;
extern int ASCII_STX;
extern int ASCII_SUB;
extern int ASCII_SYN;
extern int ASCII_TAB;
extern int ASCII_US;
extern int ASCII_VT;
extern int ASCII_XOFF;
extern int ASCII_XON;

typedef enum {
    ASCII_ORDER_LESS_THAN,
    ASCII_ORDER_EQUAL,
    ASCII_ORDER_GREATER_THAN
} ascii_order;

extern char* ascii_alloc_lower_string(const char* ascii_string);

extern char* ascii_alloc_upper_string(const char* ascii_string);

extern int ascii_ends_with_ignore_case(const char* haystack, const char* needle);

extern int ascii_eql_ignore_case(const char* a, const char* b);

extern size_t ascii_index_of_ignore_case(const char* container, const char* substr);

extern size_t ascii_index_of_ignore_case_pos(const char* container, size_t start_index, const char* substr);

extern int ascii_is_ascii(char c);

extern int ascii_is_alnum(char c);

extern int ascii_is_alpha(char c);

extern int ascii_is_blank(char c);

extern int ascii_is_cntrl(char c);

extern int ascii_is_digit(char c);

extern int ascii_is_graph(char c);

extern int ascii_is_lower(char c);

extern int ascii_is_print(char c);

extern int ascii_is_punct(char c);

extern int ascii_is_space(char c);

extern int ascii_is_upper(char c);

extern int ascii_is_xdigit(char c);

extern int ascii_less_than_ignore_case(const char* lhs, const char* rhs);

extern char* ascii_lower_string(char* output, const char* ascii_string);

extern ascii_order ascii_order_ignore_case(const char* lhs, const char* rhs);

extern int ascii_starts_with_ignore_case(const char* haystack, const char* needle);

extern char ascii_to_lower(char c);

extern char ascii_to_upper(char c);

extern char* ascii_upper_string(char* output, const char* ascii_string);

#ifdef __cplusplus
}
#endif

#endif // __CIG_ASCII_H__