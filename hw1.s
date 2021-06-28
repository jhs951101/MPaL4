        NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION .intvec : CODE (2)
        THUMB
        
__iar_program_start
        B       main

        
        SECTION .text : CODE (2)
        THUMB

main
        ;N, Z ,C flag
        MOV r1, #3
        MOV r2, #5
        SUBS r0, r1, r2
        SUBS r0, r2, r2
        
        ;N, V flag
        MOV r4, #0x40000000
        MOV r5, #0x40000000
        ADDS r3, r4, r5
        
        NOP
        END