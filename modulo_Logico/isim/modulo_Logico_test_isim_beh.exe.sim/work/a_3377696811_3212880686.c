/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ArquitecturaDeProcesadores/Xilinx/modulo_Logico/modulo_Logico.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3377696811_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 5743);
    t6 = xsi_mem_cmp(t3, t4, 2U);
    if (t6 == 1)
        goto LAB6;

LAB11:    t7 = (t0 + 5745);
    t9 = xsi_mem_cmp(t7, t4, 2U);
    if (t9 == 1)
        goto LAB7;

LAB12:    t10 = (t0 + 5747);
    t12 = xsi_mem_cmp(t10, t4, 2U);
    if (t12 == 1)
        goto LAB8;

LAB13:    t13 = (t0 + 5749);
    t15 = xsi_mem_cmp(t13, t4, 2U);
    if (t15 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5751);
    t4 = (t0 + 3392);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(29, ng0);
    t17 = (t0 + 1032U);
    t18 = *((char **)t17);
    t17 = (t0 + 5652U);
    t19 = (t0 + 1192U);
    t20 = *((char **)t19);
    t19 = (t0 + 5668U);
    t21 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t16, t18, t17, t20, t19);
    t22 = (t16 + 12U);
    t23 = *((unsigned int *)t22);
    t24 = (1U * t23);
    t25 = (8U != t24);
    if (t25 == 1)
        goto LAB16;

LAB17:    t26 = (t0 + 3392);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 8U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 5652U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t16, t3, t1);
    t5 = (t16 + 12U);
    t23 = *((unsigned int *)t5);
    t24 = (1U * t23);
    t2 = (8U != t24);
    if (t2 == 1)
        goto LAB18;

LAB19:    t7 = (t0 + 3392);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB5;

LAB8:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 5668U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t16, t3, t1);
    t5 = (t16 + 12U);
    t23 = *((unsigned int *)t5);
    t24 = (1U * t23);
    t2 = (8U != t24);
    if (t2 == 1)
        goto LAB20;

LAB21:    t7 = (t0 + 3392);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB5;

LAB9:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t2 = 1;
    if (8U == 8U)
        goto LAB25;

LAB26:    t2 = 0;

LAB27:    if (t2 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB23:    goto LAB5;

LAB15:;
LAB16:    xsi_size_not_matching(8U, t24, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(8U, t24, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(8U, t24, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(34, ng0);
    t7 = (t0 + 3456);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB23;

LAB25:    t23 = 0;

LAB28:    if (t23 < 8U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t1 = (t3 + t23);
    t5 = (t4 + t23);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB26;

LAB30:    t23 = (t23 + 1);
    goto LAB28;

}


extern void work_a_3377696811_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3377696811_3212880686_p_0};
	xsi_register_didat("work_a_3377696811_3212880686", "isim/modulo_Logico_test_isim_beh.exe.sim/work/a_3377696811_3212880686.didat");
	xsi_register_executes(pe);
}
