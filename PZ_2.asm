#Напишите программу на ассемблере RISC-V,
#которая принимает на вход целое число x
#и выводит все значения в диапазоне min(x, y)...max(x, y)
#с шагом h. Где y – номер группы, h – номер студента в группе.
.text
.globl main

main:
    li   a7, 5
    ecall
    mv   t0, a0

    li   t1, 118
    li   t2, 20
    slt  t5, t0, t1

    sub  t6, t0, t1
    mul  t6, t6, t5
    add  t3, t1, t6

    sub  t6, t1, t0
    mul  t6, t6, t5
    add  t4, t0, t6

loop:
    bgt  t3, t4, end
    mv   a0, t3
    li   a7, 1
    ecall
    li   a0, 10
    li   a7, 11
    ecall
    add  t3, t3, t2
    j    loop

end:
    li   a7, 10
    ecall