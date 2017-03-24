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
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ArquitecturaDeProcesadores/Xilinx/ProyectoFinal/sumador/sumador.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1003314168_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 6064U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t0 + 1968U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t6;
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6080U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 2088U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    *((int *)t5) = t6;
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t10 = (t6 + t9);
    t1 = (t0 + 2208U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 > 255);
    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t6, 16);
    t5 = (t0 + 3592);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 6168);
    t7 = (t0 + 3592);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_1003314168_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1003314168_3212880686_p_0};
	xsi_register_didat("work_a_1003314168_3212880686", "isim/implementacion_test_isim_beh.exe.sim/work/a_1003314168_3212880686.didat");
	xsi_register_executes(pe);
}
