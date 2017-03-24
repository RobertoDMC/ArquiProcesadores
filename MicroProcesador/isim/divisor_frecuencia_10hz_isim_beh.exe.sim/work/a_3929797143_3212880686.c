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
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ElectronicaDigital/Xilinx/divisor_frecuencia_10hz/divisor_frecuencia_10hz.vhd";



static void work_a_3929797143_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    int t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3072);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t4 = (t0 + 1768U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t12 = (t9 < t11);
    if (t12 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 3152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t2 = (t0 + 1648U);
    t5 = *((char **)t2);
    t11 = *((int *)t5);
    t1 = (t9 < t11);
    if (t1 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB12:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1352U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 + 1);
    t4 = (t0 + 3152);
    t16 = (t4 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((int *)t19) = t15;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3216);
    t8 = (t2 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB12;

}


extern void work_a_3929797143_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3929797143_3212880686_p_0};
	xsi_register_didat("work_a_3929797143_3212880686", "isim/divisor_frecuencia_10hz_isim_beh.exe.sim/work/a_3929797143_3212880686.didat");
	xsi_register_executes(pe);
}
