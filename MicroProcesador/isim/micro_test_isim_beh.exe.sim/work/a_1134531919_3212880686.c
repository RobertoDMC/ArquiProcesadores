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
static const char *ng0 = "C:/Users/Roberto/Desktop/UPB/ArquitecturaDeProcesadores/Xilinx/ProyectoFinal/ram_16bits/ram_16bits.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1134531919_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 11096);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (0 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 11112);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (1 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 11128);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (2 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 11144);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (255 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 11160);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (3 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 11176);
    t3 = (t0 + 2408U);
    t4 = *((char **)t3);
    t5 = (4 - 255);
    t6 = (t5 * -1);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB7;

LAB9:
LAB8:
LAB3:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(4096U);
    memset(t1, 0, 4096U);
    t3 = t1;
    t6 = (16U * 1U);
    t4 = t3;
    memset(t4, (unsigned char)2, t6);
    t11 = (t6 != 0);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 2408U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t1, 4096U);
    goto LAB3;

LAB5:    t7 = (4096U / t6);
    xsi_mem_set_data(t3, t3, t6, t7);
    goto LAB6;

LAB7:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 6880U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 2288U);
    t12 = *((char **)t4);
    t4 = (t12 + 0);
    *((int *)t4) = t5;
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB13;

LAB15:
LAB14:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2408U);
    t3 = *((char **)t1);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t14 = (t5 - 255);
    t6 = (t14 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t5);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t12 = (t0 + 3792);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 16U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB11;

LAB13:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 > 127);
    if (t11 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 2408U);
    t12 = *((char **)t1);
    t1 = (t0 + 2288U);
    t13 = *((char **)t1);
    t14 = *((int *)t13);
    t18 = (t14 - 255);
    t6 = (t18 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t14);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t1 = (t12 + t8);
    memcpy(t1, t4, 16U);
    goto LAB17;

}


extern void work_a_1134531919_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1134531919_3212880686_p_0};
	xsi_register_didat("work_a_1134531919_3212880686", "isim/micro_test_isim_beh.exe.sim/work/a_1134531919_3212880686.didat");
	xsi_register_executes(pe);
}
