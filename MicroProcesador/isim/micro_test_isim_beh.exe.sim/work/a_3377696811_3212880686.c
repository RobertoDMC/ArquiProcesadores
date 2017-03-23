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
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ArquitecturaDeProcesadores/Xilinx/ProyectoFinal/modulo_Logico/modulo_Logico.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3377696811_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 6412);
    t7 = xsi_mem_cmp(t1, t5, 2U);
    if (t7 == 1)
        goto LAB6;

LAB11:    t8 = (t0 + 6414);
    t10 = xsi_mem_cmp(t8, t5, 2U);
    if (t10 == 1)
        goto LAB7;

LAB12:    t11 = (t0 + 6416);
    t13 = xsi_mem_cmp(t11, t5, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 6418);
    t16 = xsi_mem_cmp(t14, t5, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 6426);
    t5 = (t0 + 3632);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(30, ng0);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t18 = (t0 + 6280U);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 6296U);
    t22 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t17, t19, t18, t21, t20);
    t23 = (t17 + 12U);
    t24 = *((unsigned int *)t23);
    t25 = (1U * t24);
    t26 = (16U != t25);
    if (t26 == 1)
        goto LAB16;

LAB17:    t27 = (t0 + 3632);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t22, 16U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB5;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6280U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t17, t2, t1);
    t6 = (t17 + 12U);
    t24 = *((unsigned int *)t6);
    t25 = (1U * t24);
    t3 = (16U != t25);
    if (t3 == 1)
        goto LAB18;

LAB19:    t8 = (t0 + 3632);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB5;

LAB8:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6296U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t17, t2, t1);
    t6 = (t17 + 12U);
    t24 = *((unsigned int *)t6);
    t25 = (1U * t24);
    t3 = (16U != t25);
    if (t3 == 1)
        goto LAB20;

LAB21:    t8 = (t0 + 3632);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB5;

LAB9:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6280U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 2128U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t7;
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6296U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t7;
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t3 = (t7 == t10);
    if (t3 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t3 = (t7 > t10);
    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 6424);
    t5 = (t0 + 3696);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB26:
LAB23:    goto LAB5;

LAB15:;
LAB16:    xsi_size_not_matching(16U, t25, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(16U, t25, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(16U, t25, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 6420);
    t8 = (t0 + 3696);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB23;

LAB25:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 6422);
    t8 = (t0 + 3696);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB26;

}


extern void work_a_3377696811_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3377696811_3212880686_p_0};
	xsi_register_didat("work_a_3377696811_3212880686", "isim/micro_test_isim_beh.exe.sim/work/a_3377696811_3212880686.didat");
	xsi_register_executes(pe);
}
