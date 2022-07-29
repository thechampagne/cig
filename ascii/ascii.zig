const std = @import("std");

export const ascii_spaces = std.ascii.spaces;

export const ASCII_ACK: c_int = std.ascii.control_code.ACK;
export const ASCII_BEL: c_int = std.ascii.control_code.BEL;
export const ASCII_BS: c_int = std.ascii.control_code.BS;
export const ASCII_CAN: c_int = std.ascii.control_code.CAN;
export const ASCII_CR: c_int = std.ascii.control_code.CR;
export const ASCII_DC1: c_int = std.ascii.control_code.DC1;
export const ASCII_DC2: c_int = std.ascii.control_code.DC2;
export const ASCII_DC3: c_int = std.ascii.control_code.DC3;
export const ASCII_DC4: c_int = std.ascii.control_code.DC4;
export const ASCII_DEL: c_int = std.ascii.control_code.DEL;
export const ASCII_DLE: c_int = std.ascii.control_code.DLE;
export const ASCII_EM: c_int = std.ascii.control_code.EM;
export const ASCII_ENQ: c_int = std.ascii.control_code.ENQ;
export const ASCII_EOT: c_int = std.ascii.control_code.EOT;
export const ASCII_ESC: c_int = std.ascii.control_code.ESC;
export const ASCII_ETB: c_int = std.ascii.control_code.ETB;
export const ASCII_ETX: c_int = std.ascii.control_code.ETX;
export const ASCII_FF: c_int = std.ascii.control_code.FF;
export const ASCII_FS: c_int = std.ascii.control_code.FS;
export const ASCII_GS: c_int = std.ascii.control_code.GS;
export const ASCII_LF: c_int = std.ascii.control_code.LF;
export const ASCII_NAK: c_int = std.ascii.control_code.NAK;
export const ASCII_NUL: c_int = std.ascii.control_code.NUL;
export const ASCII_RS: c_int = std.ascii.control_code.RS;
export const ASCII_SI: c_int = std.ascii.control_code.SI;
export const ASCII_SO: c_int = std.ascii.control_code.SO;
export const ASCII_SOH: c_int = std.ascii.control_code.SOH;
export const ASCII_STX: c_int = std.ascii.control_code.STX;
export const ASCII_SUB: c_int = std.ascii.control_code.SUB;
export const ASCII_SYN: c_int = std.ascii.control_code.SYN;
export const ASCII_TAB: c_int = std.ascii.control_code.TAB;
export const ASCII_US: c_int = std.ascii.control_code.US;
export const ASCII_VT: c_int = std.ascii.control_code.VT;
export const ASCII_XOFF: c_int = std.ascii.control_code.XOFF;
export const ASCII_XON: c_int = std.ascii.control_code.XON;

const ascii_order = enum(c_int) {
    ASCII_ORDER_LESS_THAN,
    ASCII_ORDER_EQUAL,
    ASCII_ORDER_GREATER_THAN
};

export fn ascii_alloc_lower_string(ascii_string: [*c]const u8) [*c]u8 {
    const res = std.ascii.allocLowerString(std.heap.c_allocator, std.mem.span(ascii_string)) catch return null;
    return res.ptr;
}

export fn ascii_alloc_upper_string(ascii_string: [*c]const u8) [*c]u8 {
    const res = std.ascii.allocUpperString(std.heap.c_allocator, std.mem.span(ascii_string)) catch return null;
    return res.ptr;
}

export fn ascii_ends_with_ignore_case(haystack: [*c]const u8, needle: [*c]const u8) c_int {
    const res = std.ascii.endsWithIgnoreCase(std.mem.span(haystack), std.mem.span(needle));
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_eql_ignore_case(a: [*c]const u8, b: [*c]const u8) c_int {
    const res = std.ascii.eqlIgnoreCase(std.mem.span(a), std.mem.span(b));
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_index_of_ignore_case(container: [*c]const u8, substr: [*c]const u8) usize {
    const res = std.ascii.indexOfIgnoreCase(std.mem.span(container), std.mem.span(substr)) orelse return 0;
    return res;
}

export fn ascii_index_of_ignore_case_pos(container: [*c]const u8, start_index: usize, substr: [*c]const u8) usize {
    const res = std.ascii.indexOfIgnoreCasePos(std.mem.span(container), start_index, std.mem.span(substr)) orelse return 0;
    return res;
}

export fn ascii_is_ascii(c: u8) c_int {
    const res = std.ascii.isASCII(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_alnum(c: u8) c_int {
    const res = std.ascii.isAlNum(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_alpha(c: u8) c_int {
    const res = std.ascii.isAlpha(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_blank(c: u8) c_int {
    const res = std.ascii.isBlank(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_cntrl(c: u8) c_int {
    const res = std.ascii.isCntrl(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_digit(c: u8) c_int {
    const res = std.ascii.isDigit(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_graph(c: u8) c_int {
    const res = std.ascii.isGraph(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_lower(c: u8) c_int {
    const res = std.ascii.isLower(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_print(c: u8) c_int {
    const res = std.ascii.isPrint(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_punct(c: u8) c_int {
    const res = std.ascii.isPunct(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_space(c: u8) c_int {
    const res = std.ascii.isSpace(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_upper(c: u8) c_int {
    const res = std.ascii.isUpper(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_is_xdigit(c: u8) c_int {
    const res = std.ascii.isXDigit(c);
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_less_than_ignore_case(lhs: [*c]const u8, rhs: [*c]const u8) c_int {
    const res = std.ascii.lessThanIgnoreCase(std.mem.span(lhs), std.mem.span(rhs));
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_lower_string(output: [*c]u8, ascii_string: [*c]const u8) [*c]u8 {
    const res = std.ascii.lowerString(std.mem.span(output), std.mem.span(ascii_string));
    return res.ptr;
}

export fn ascii_order_ignore_case(lhs: [*c]const u8, rhs: [*c]const u8) ascii_order {
    const res = std.ascii.orderIgnoreCase(std.mem.span(lhs), std.mem.span(rhs));
    switch(res) {
        .lt => return ascii_order.ASCII_ORDER_LESS_THAN,
        .eq => return ascii_order.ASCII_ORDER_EQUAL,
        .gt => return ascii_order.ASCII_ORDER_GREATER_THAN
    }
}

export fn ascii_starts_with_ignore_case(haystack: [*c]const u8, needle: [*c]const u8) c_int {
    const res = std.ascii.startsWithIgnoreCase(std.mem.span(haystack), std.mem.span(needle));
    if (res) {
        return 1;
    } else {
        return 0;
    }
}

export fn ascii_to_lower(c: u8) u8 {
    const res = std.ascii.toLower(c);
    return res;
}

export fn ascii_to_upper(c: u8) u8 {
    const res = std.ascii.toUpper(c);
    return res;
}

export fn ascii_upper_string(output: [*c]u8, ascii_string: [*c]const u8) [*c]u8 {
    const res = std.ascii.upperString(std.mem.span(output), std.mem.span(ascii_string));
    return res.ptr;
}