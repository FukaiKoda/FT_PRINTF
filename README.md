# ft\_printf - Custom Implementation of printf

## 📌 Overview

ft\_printf is a custom implementation of the standard `printf` function in C. This project was designed to deepen my understanding of variadic functions, formatted output, and efficient buffer management. The goal was to recreate `printf` while adhering to its core functionality, handling various format specifiers and ensuring robust memory management.

## 📂 Features

ft\_printf supports a variety of format specifiers, flags, and field widths, similar to the standard `printf`.

### 📝 Supported Format Specifiers

- `%c` - Prints a single character.
- `%s` - Prints a string.
- `%p` - Prints a memory address (pointer).
- `%d` - Prints a decimal (integer).
- `%i` - Prints an integer.
- `%u` - Prints an unsigned integer.
- `%x` - Prints a number in lowercase hexadecimal.
- `%X` - Prints a number in uppercase hexadecimal.
- `%%` - Prints a percentage symbol.

## 🚀 Variadic Functions and Register Interaction

One of the key aspects of `ft_printf` is handling an unknown number of arguments, which is achieved using variadic functions. In C, the `stdarg.h` library provides macros such as `va_list`, `va_start`, `va_arg`, and `va_end` to iterate over arguments dynamically.

### How ft\_printf Uses Variadic Arguments

1. `va_list` is initialized with `va_start`, pointing to the first unnamed argument.
2. `va_arg` retrieves the next argument in the appropriate type, updating offsets automatically.
3. When all arguments are processed, `va_end` is called to clean up the variadic list.

This mechanism ensures efficient handling of arguments while keeping track of their locations in CPU registers and memory.

## 📜 Usage

To use ft\_printf in your projects, compile it into an object file and link it:

```sh
make
```

Then, include it in your project:

```c
#include "ft_printf.h"
```

And link it during compilation:

```sh
gcc -Wall -Wextra -Werror your_code.c -L. -libftprintf.a -o your_program
```

## 🎯 Key Takeaways

- Strengthened my knowledge of variadic functions.
- Improved efficiency in formatted output handling.
- Developed an understanding of how function arguments are managed in CPU registers and stack memory.

## 📜 License

This project is open-source and available under the MIT License.


