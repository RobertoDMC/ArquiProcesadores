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
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ArquitecturaDeProcesadores/Xilinx/sumador/sumador.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1003314168_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5912U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t3);
    t6 = (t0 + 1968U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t5;
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 5928U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 2088U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    *((int *)t4) = t5;
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 2088U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t5 + t8);
    t1 = (t0 + 2208U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t9;
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2208U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 > 255);
    if (t2 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2208U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, t5, 8);
    t4 = (t0 + 3592);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 3656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 6000);
    t6 = (t0 + 3592);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_1003314168_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1003314168_3212880686_p_0};
	xsi_register_didat("work_a_1003314168_3212880686", "isim/sumador_test_isim_beh.exe.sim/work/a_1003314168_3212880686.didat");
	xsi_register_executes(pe);
}
