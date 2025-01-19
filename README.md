# Assembly Code Bug: Out-of-Bounds Memory Access

This repository demonstrates a common error in assembly programming: accessing memory outside the allocated address space. The `bug.asm` file contains code that calculates a memory address using the `ebx` and `ecx` registers. If `ecx` holds a large value, the resulting address might be invalid, leading to a segmentation fault.

The `bugSolution.asm` file provides a corrected version that checks the calculated address before accessing memory. This prevents out-of-bounds memory access and avoids the segmentation fault.

**Key Concepts**
* **Memory Addressing:** Understanding how assembly instructions calculate memory addresses is critical to prevent errors like this one.  Improper address calculations are a common cause of segmentation faults and crashes.
* **Bounds Checking:**  Always validate addresses before using them to access memory. This is essential for robust and secure code.