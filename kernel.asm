
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	82013103          	ld	sp,-2016(sp) # 8000b820 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	10d060ef          	jal	ra,80006928 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	46d010ef          	jal	ra,80002cf0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN5Riscv11vectorTableEv>:
.align 4
.global _ZN5Riscv11vectorTableEv
.type _ZN5Riscv11vectorTableEv, @function

_ZN5Riscv11vectorTableEv:
    j softwareInterruptHandler
    80001110:	02c0006f          	j	8000113c <softwareInterruptHandler>
    j timerInterruptHandler
    80001114:	1380006f          	j	8000124c <timerInterruptHandler>
	...
    .skip 28
    j consoleHandler
    80001134:	2280006f          	j	8000135c <consoleHandler>
    sret
    80001138:	10200073          	sret

000000008000113c <softwareInterruptHandler>:

softwareInterruptHandler:
    addi sp, sp, -256
    8000113c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001140:	00013023          	sd	zero,0(sp)
    80001144:	00113423          	sd	ra,8(sp)
    80001148:	00213823          	sd	sp,16(sp)
    8000114c:	00313c23          	sd	gp,24(sp)
    80001150:	02413023          	sd	tp,32(sp)
    80001154:	02513423          	sd	t0,40(sp)
    80001158:	02613823          	sd	t1,48(sp)
    8000115c:	02713c23          	sd	t2,56(sp)
    80001160:	04813023          	sd	s0,64(sp)
    80001164:	04913423          	sd	s1,72(sp)
    80001168:	04a13823          	sd	a0,80(sp)
    8000116c:	04b13c23          	sd	a1,88(sp)
    80001170:	06c13023          	sd	a2,96(sp)
    80001174:	06d13423          	sd	a3,104(sp)
    80001178:	06e13823          	sd	a4,112(sp)
    8000117c:	06f13c23          	sd	a5,120(sp)
    80001180:	09013023          	sd	a6,128(sp)
    80001184:	09113423          	sd	a7,136(sp)
    80001188:	09213823          	sd	s2,144(sp)
    8000118c:	09313c23          	sd	s3,152(sp)
    80001190:	0b413023          	sd	s4,160(sp)
    80001194:	0b513423          	sd	s5,168(sp)
    80001198:	0b613823          	sd	s6,176(sp)
    8000119c:	0b713c23          	sd	s7,184(sp)
    800011a0:	0d813023          	sd	s8,192(sp)
    800011a4:	0d913423          	sd	s9,200(sp)
    800011a8:	0da13823          	sd	s10,208(sp)
    800011ac:	0db13c23          	sd	s11,216(sp)
    800011b0:	0fc13023          	sd	t3,224(sp)
    800011b4:	0fd13423          	sd	t4,232(sp)
    800011b8:	0fe13823          	sd	t5,240(sp)
    800011bc:	0ff13c23          	sd	t6,248(sp)

    //csrr t0, sepc
    //addi t0, t0, 4
    //csrw sepc, t0

    call _ZN5Riscv20handleSupervisorTrapEv
    800011c0:	331010ef          	jal	ra,80002cf0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011c4:	00013003          	ld	zero,0(sp)
    800011c8:	00813083          	ld	ra,8(sp)
    800011cc:	01013103          	ld	sp,16(sp)
    800011d0:	01813183          	ld	gp,24(sp)
    800011d4:	02013203          	ld	tp,32(sp)
    800011d8:	02813283          	ld	t0,40(sp)
    800011dc:	03013303          	ld	t1,48(sp)
    800011e0:	03813383          	ld	t2,56(sp)
    800011e4:	04013403          	ld	s0,64(sp)
    800011e8:	04813483          	ld	s1,72(sp)
    800011ec:	05013503          	ld	a0,80(sp)
    800011f0:	05813583          	ld	a1,88(sp)
    800011f4:	06013603          	ld	a2,96(sp)
    800011f8:	06813683          	ld	a3,104(sp)
    800011fc:	07013703          	ld	a4,112(sp)
    80001200:	07813783          	ld	a5,120(sp)
    80001204:	08013803          	ld	a6,128(sp)
    80001208:	08813883          	ld	a7,136(sp)
    8000120c:	09013903          	ld	s2,144(sp)
    80001210:	09813983          	ld	s3,152(sp)
    80001214:	0a013a03          	ld	s4,160(sp)
    80001218:	0a813a83          	ld	s5,168(sp)
    8000121c:	0b013b03          	ld	s6,176(sp)
    80001220:	0b813b83          	ld	s7,184(sp)
    80001224:	0c013c03          	ld	s8,192(sp)
    80001228:	0c813c83          	ld	s9,200(sp)
    8000122c:	0d013d03          	ld	s10,208(sp)
    80001230:	0d813d83          	ld	s11,216(sp)
    80001234:	0e013e03          	ld	t3,224(sp)
    80001238:	0e813e83          	ld	t4,232(sp)
    8000123c:	0f013f03          	ld	t5,240(sp)
    80001240:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001244:	10010113          	addi	sp,sp,256

    sret
    80001248:	10200073          	sret

000000008000124c <timerInterruptHandler>:


timerInterruptHandler:
    addi sp, sp, -256
    8000124c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001250:	00013023          	sd	zero,0(sp)
    80001254:	00113423          	sd	ra,8(sp)
    80001258:	00213823          	sd	sp,16(sp)
    8000125c:	00313c23          	sd	gp,24(sp)
    80001260:	02413023          	sd	tp,32(sp)
    80001264:	02513423          	sd	t0,40(sp)
    80001268:	02613823          	sd	t1,48(sp)
    8000126c:	02713c23          	sd	t2,56(sp)
    80001270:	04813023          	sd	s0,64(sp)
    80001274:	04913423          	sd	s1,72(sp)
    80001278:	04a13823          	sd	a0,80(sp)
    8000127c:	04b13c23          	sd	a1,88(sp)
    80001280:	06c13023          	sd	a2,96(sp)
    80001284:	06d13423          	sd	a3,104(sp)
    80001288:	06e13823          	sd	a4,112(sp)
    8000128c:	06f13c23          	sd	a5,120(sp)
    80001290:	09013023          	sd	a6,128(sp)
    80001294:	09113423          	sd	a7,136(sp)
    80001298:	09213823          	sd	s2,144(sp)
    8000129c:	09313c23          	sd	s3,152(sp)
    800012a0:	0b413023          	sd	s4,160(sp)
    800012a4:	0b513423          	sd	s5,168(sp)
    800012a8:	0b613823          	sd	s6,176(sp)
    800012ac:	0b713c23          	sd	s7,184(sp)
    800012b0:	0d813023          	sd	s8,192(sp)
    800012b4:	0d913423          	sd	s9,200(sp)
    800012b8:	0da13823          	sd	s10,208(sp)
    800012bc:	0db13c23          	sd	s11,216(sp)
    800012c0:	0fc13023          	sd	t3,224(sp)
    800012c4:	0fd13423          	sd	t4,232(sp)
    800012c8:	0fe13823          	sd	t5,240(sp)
    800012cc:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleTimerInterruptEv
    800012d0:	5a5010ef          	jal	ra,80003074 <_ZN5Riscv20handleTimerInterruptEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012d4:	00013003          	ld	zero,0(sp)
    800012d8:	00813083          	ld	ra,8(sp)
    800012dc:	01013103          	ld	sp,16(sp)
    800012e0:	01813183          	ld	gp,24(sp)
    800012e4:	02013203          	ld	tp,32(sp)
    800012e8:	02813283          	ld	t0,40(sp)
    800012ec:	03013303          	ld	t1,48(sp)
    800012f0:	03813383          	ld	t2,56(sp)
    800012f4:	04013403          	ld	s0,64(sp)
    800012f8:	04813483          	ld	s1,72(sp)
    800012fc:	05013503          	ld	a0,80(sp)
    80001300:	05813583          	ld	a1,88(sp)
    80001304:	06013603          	ld	a2,96(sp)
    80001308:	06813683          	ld	a3,104(sp)
    8000130c:	07013703          	ld	a4,112(sp)
    80001310:	07813783          	ld	a5,120(sp)
    80001314:	08013803          	ld	a6,128(sp)
    80001318:	08813883          	ld	a7,136(sp)
    8000131c:	09013903          	ld	s2,144(sp)
    80001320:	09813983          	ld	s3,152(sp)
    80001324:	0a013a03          	ld	s4,160(sp)
    80001328:	0a813a83          	ld	s5,168(sp)
    8000132c:	0b013b03          	ld	s6,176(sp)
    80001330:	0b813b83          	ld	s7,184(sp)
    80001334:	0c013c03          	ld	s8,192(sp)
    80001338:	0c813c83          	ld	s9,200(sp)
    8000133c:	0d013d03          	ld	s10,208(sp)
    80001340:	0d813d83          	ld	s11,216(sp)
    80001344:	0e013e03          	ld	t3,224(sp)
    80001348:	0e813e83          	ld	t4,232(sp)
    8000134c:	0f013f03          	ld	t5,240(sp)
    80001350:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001354:	10010113          	addi	sp,sp,256

    sret
    80001358:	10200073          	sret

000000008000135c <consoleHandler>:


consoleHandler:
    addi sp, sp, -256
    8000135c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001360:	00013023          	sd	zero,0(sp)
    80001364:	00113423          	sd	ra,8(sp)
    80001368:	00213823          	sd	sp,16(sp)
    8000136c:	00313c23          	sd	gp,24(sp)
    80001370:	02413023          	sd	tp,32(sp)
    80001374:	02513423          	sd	t0,40(sp)
    80001378:	02613823          	sd	t1,48(sp)
    8000137c:	02713c23          	sd	t2,56(sp)
    80001380:	04813023          	sd	s0,64(sp)
    80001384:	04913423          	sd	s1,72(sp)
    80001388:	04a13823          	sd	a0,80(sp)
    8000138c:	04b13c23          	sd	a1,88(sp)
    80001390:	06c13023          	sd	a2,96(sp)
    80001394:	06d13423          	sd	a3,104(sp)
    80001398:	06e13823          	sd	a4,112(sp)
    8000139c:	06f13c23          	sd	a5,120(sp)
    800013a0:	09013023          	sd	a6,128(sp)
    800013a4:	09113423          	sd	a7,136(sp)
    800013a8:	09213823          	sd	s2,144(sp)
    800013ac:	09313c23          	sd	s3,152(sp)
    800013b0:	0b413023          	sd	s4,160(sp)
    800013b4:	0b513423          	sd	s5,168(sp)
    800013b8:	0b613823          	sd	s6,176(sp)
    800013bc:	0b713c23          	sd	s7,184(sp)
    800013c0:	0d813023          	sd	s8,192(sp)
    800013c4:	0d913423          	sd	s9,200(sp)
    800013c8:	0da13823          	sd	s10,208(sp)
    800013cc:	0db13c23          	sd	s11,216(sp)
    800013d0:	0fc13023          	sd	t3,224(sp)
    800013d4:	0fd13423          	sd	t4,232(sp)
    800013d8:	0fe13823          	sd	t5,240(sp)
    800013dc:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv22handleConsoleInterruptEv
    800013e0:	46d010ef          	jal	ra,8000304c <_ZN5Riscv22handleConsoleInterruptEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800013e4:	00013003          	ld	zero,0(sp)
    800013e8:	00813083          	ld	ra,8(sp)
    800013ec:	01013103          	ld	sp,16(sp)
    800013f0:	01813183          	ld	gp,24(sp)
    800013f4:	02013203          	ld	tp,32(sp)
    800013f8:	02813283          	ld	t0,40(sp)
    800013fc:	03013303          	ld	t1,48(sp)
    80001400:	03813383          	ld	t2,56(sp)
    80001404:	04013403          	ld	s0,64(sp)
    80001408:	04813483          	ld	s1,72(sp)
    8000140c:	05013503          	ld	a0,80(sp)
    80001410:	05813583          	ld	a1,88(sp)
    80001414:	06013603          	ld	a2,96(sp)
    80001418:	06813683          	ld	a3,104(sp)
    8000141c:	07013703          	ld	a4,112(sp)
    80001420:	07813783          	ld	a5,120(sp)
    80001424:	08013803          	ld	a6,128(sp)
    80001428:	08813883          	ld	a7,136(sp)
    8000142c:	09013903          	ld	s2,144(sp)
    80001430:	09813983          	ld	s3,152(sp)
    80001434:	0a013a03          	ld	s4,160(sp)
    80001438:	0a813a83          	ld	s5,168(sp)
    8000143c:	0b013b03          	ld	s6,176(sp)
    80001440:	0b813b83          	ld	s7,184(sp)
    80001444:	0c013c03          	ld	s8,192(sp)
    80001448:	0c813c83          	ld	s9,200(sp)
    8000144c:	0d013d03          	ld	s10,208(sp)
    80001450:	0d813d83          	ld	s11,216(sp)
    80001454:	0e013e03          	ld	t3,224(sp)
    80001458:	0e813e83          	ld	t4,232(sp)
    8000145c:	0f013f03          	ld	t5,240(sp)
    80001460:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001464:	10010113          	addi	sp,sp,256

    80001468:	10200073          	sret
	...

0000000080001478 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001478:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000147c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001480:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001484:	0085b103          	ld	sp,8(a1)

    80001488:	00008067          	ret

000000008000148c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000148c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001490:	00b29a63          	bne	t0,a1,800014a4 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001494:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001498:	fe029ae3          	bnez	t0,8000148c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000149c:	00000513          	li	a0,0
    jr ra                  # Return.
    800014a0:	00008067          	ret

00000000800014a4 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800014a4:	00100513          	li	a0,1
    800014a8:	00008067          	ret

00000000800014ac <_Z9mem_allocm>:
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/riscv.hpp"


void* mem_alloc(size_t size) {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16

    size_t m = (size % MEM_BLOCK_SIZE == 0 ? size : ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE);
    800014b8:	03f57793          	andi	a5,a0,63
    800014bc:	00078663          	beqz	a5,800014c8 <_Z9mem_allocm+0x1c>
    800014c0:	03f50513          	addi	a0,a0,63
    800014c4:	fc057513          	andi	a0,a0,-64
    __asm__ volatile ("mv a1, %[tmp]" : : [tmp] "r" (m)); // m = broj bajtova poravnat na blokove
    800014c8:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x01");
    800014cc:	00100513          	li	a0,1

    __asm__ volatile ("ecall");
    800014d0:	00000073          	ecall

    uint64 ret;
    __asm__ volatile ("mv %[tmp], a0" : [tmp] "=r" (ret));
    800014d4:	00050513          	mv	a0,a0
    return (void*) ret;
}
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret

00000000800014e4 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00813423          	sd	s0,8(sp)
    800014ec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[tmp]" : : [tmp] "r" (ptr));
    800014f0:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x02");
    800014f4:	00200513          	li	a0,2

    __asm__ volatile ("ecall");
    800014f8:	00000073          	ecall

    uint64 ret;
    __asm__ volatile ("mv %[tmp], a0" : [tmp] "=r" (ret));
    800014fc:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001500:	0005051b          	sext.w	a0,a0
    80001504:	00813403          	ld	s0,8(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_Z11getThreadIdv>:

int getThreadId() {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x08");
    8000151c:	00800513          	li	a0,8

    __asm__ volatile ("ecall");
    80001520:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001524:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z12thread_startP3TCB>:

void thread_start(TCB* tcb) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %[tmp]" : : [tmp] "r"(tcb));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x09");
    80001548:	00900513          	li	a0,9
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z27thread_create_without_startPP3TCBPFvPvES2_>:

int thread_create_without_start(thread_t* handle, void (*start_routine)(void*), void* arg) {
    8000155c:	fd010113          	addi	sp,sp,-48
    80001560:	02113423          	sd	ra,40(sp)
    80001564:	02813023          	sd	s0,32(sp)
    80001568:	00913c23          	sd	s1,24(sp)
    8000156c:	01213823          	sd	s2,16(sp)
    80001570:	01313423          	sd	s3,8(sp)
    80001574:	03010413          	addi	s0,sp,48
    80001578:	00050913          	mv	s2,a0
    8000157c:	00058493          	mv	s1,a1
    80001580:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    if(start_routine != nullptr) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001584:	04058663          	beqz	a1,800015d0 <_Z27thread_create_without_startPP3TCBPFvPvES2_+0x74>
    80001588:	00001537          	lui	a0,0x1
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	f20080e7          	jalr	-224(ra) # 800014ac <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0" : : "r"(stack_space));
    80001594:	00050713          	mv	a4,a0

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    80001598:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    8000159c:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800015a0:	00090593          	mv	a1,s2
    __asm__ volatile("li a0, 0x10");
    800015a4:	01000513          	li	a0,16
    __asm__ volatile("ecall");
    800015a8:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800015ac:	00050513          	mv	a0,a0
    return (int)ret;
}
    800015b0:	0005051b          	sext.w	a0,a0
    800015b4:	02813083          	ld	ra,40(sp)
    800015b8:	02013403          	ld	s0,32(sp)
    800015bc:	01813483          	ld	s1,24(sp)
    800015c0:	01013903          	ld	s2,16(sp)
    800015c4:	00813983          	ld	s3,8(sp)
    800015c8:	03010113          	addi	sp,sp,48
    800015cc:	00008067          	ret
    void* stack_space = nullptr;
    800015d0:	00000513          	li	a0,0
    800015d4:	fc1ff06f          	j	80001594 <_Z27thread_create_without_startPP3TCBPFvPvES2_+0x38>

00000000800015d8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800015d8:	fd010113          	addi	sp,sp,-48
    800015dc:	02113423          	sd	ra,40(sp)
    800015e0:	02813023          	sd	s0,32(sp)
    800015e4:	00913c23          	sd	s1,24(sp)
    800015e8:	01213823          	sd	s2,16(sp)
    800015ec:	01313423          	sd	s3,8(sp)
    800015f0:	03010413          	addi	s0,sp,48
    800015f4:	00050913          	mv	s2,a0
    800015f8:	00058493          	mv	s1,a1
    800015fc:	00060993          	mv	s3,a2

    void* stack_space = nullptr;
    if(start_routine != nullptr) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001600:	04058663          	beqz	a1,8000164c <_Z13thread_createPP3TCBPFvPvES2_+0x74>
    80001604:	00001537          	lui	a0,0x1
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	ea4080e7          	jalr	-348(ra) # 800014ac <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0" : : "r"(stack_space));
    80001610:	00050713          	mv	a4,a0

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    80001614:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001618:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    8000161c:	00090593          	mv	a1,s2
    __asm__ volatile("li a0, 0x11");
    80001620:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001624:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001628:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000162c:	0005051b          	sext.w	a0,a0
    80001630:	02813083          	ld	ra,40(sp)
    80001634:	02013403          	ld	s0,32(sp)
    80001638:	01813483          	ld	s1,24(sp)
    8000163c:	01013903          	ld	s2,16(sp)
    80001640:	00813983          	ld	s3,8(sp)
    80001644:	03010113          	addi	sp,sp,48
    80001648:	00008067          	ret
    void* stack_space = nullptr;
    8000164c:	00000513          	li	a0,0
    80001650:	fc1ff06f          	j	80001610 <_Z13thread_createPP3TCBPFvPvES2_+0x38>

0000000080001654 <_Z11thread_exitv>:

int thread_exit() {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x12");
    80001660:	01200513          	li	a0,18

    __asm__ volatile ("ecall");
    80001664:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001668:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000166c:	0005051b          	sext.w	a0,a0
    80001670:	00813403          	ld	s0,8(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret

000000008000167c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000167c:	ff010113          	addi	sp,sp,-16
    80001680:	00813423          	sd	s0,8(sp)
    80001684:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001688:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    8000168c:	00000073          	ecall

}
    80001690:	00813403          	ld	s0,8(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800016a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    800016ac:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    800016b0:	00000073          	ecall
}
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    800016cc:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800016d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800016d4:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    800016d8:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800016dc:	00050513          	mv	a0,a0
    return (int)ret;
}
    800016e0:	0005051b          	sext.w	a0,a0
    800016e4:	00813403          	ld	s0,8(sp)
    800016e8:	01010113          	addi	sp,sp,16
    800016ec:	00008067          	ret

00000000800016f0 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    800016f0:	ff010113          	addi	sp,sp,-16
    800016f4:	00813423          	sd	s0,8(sp)
    800016f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800016fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001700:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001704:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001708:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000170c:	0005051b          	sext.w	a0,a0
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00813423          	sd	s0,8(sp)
    80001724:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001728:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000172c:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    80001730:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001734:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001738:	0005051b          	sext.w	a0,a0
    8000173c:	00813403          	ld	s0,8(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001754:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001758:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    8000175c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001760:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001764:	0005051b          	sext.w	a0,a0
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_Z4getcv>:

char getc() {
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00813423          	sd	s0,8(sp)
    8000177c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001780:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    80001784:	00000073          	ecall

    char ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001788:	00050513          	mv	a0,a0
    return ret;
}
    8000178c:	0ff57513          	andi	a0,a0,255
    80001790:	00813403          	ld	s0,8(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_Z4putcc>:

void putc(char c) {
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00813423          	sd	s0,8(sp)
    800017a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    800017a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800017ac:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    800017b0:	00000073          	ecall
}
    800017b4:	00813403          	ld	s0,8(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret

00000000800017c0 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800017c0:	ff010113          	addi	sp,sp,-16
    800017c4:	00813423          	sd	s0,8(sp)
    800017c8:	01010413          	addi	s0,sp,16
    return 0;
    800017cc:	00000513          	li	a0,0
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <_ZL9fibonaccim>:
#include "../h/syscall_c.hpp"



static uint64 fibonacci(uint64 n)
{
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	00913423          	sd	s1,8(sp)
    800017ec:	01213023          	sd	s2,0(sp)
    800017f0:	02010413          	addi	s0,sp,32
    800017f4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800017f8:	00100793          	li	a5,1
    800017fc:	02a7f663          	bgeu	a5,a0,80001828 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    80001800:	00357793          	andi	a5,a0,3
    80001804:	02078e63          	beqz	a5,80001840 <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001808:	fff48513          	addi	a0,s1,-1
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	fd0080e7          	jalr	-48(ra) # 800017dc <_ZL9fibonaccim>
    80001814:	00050913          	mv	s2,a0
    80001818:	ffe48513          	addi	a0,s1,-2
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	fc0080e7          	jalr	-64(ra) # 800017dc <_ZL9fibonaccim>
    80001824:	00a90533          	add	a0,s2,a0
}
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	00813483          	ld	s1,8(sp)
    80001834:	00013903          	ld	s2,0(sp)
    80001838:	02010113          	addi	sp,sp,32
    8000183c:	00008067          	ret
        thread_dispatch();
    80001840:	00000097          	auipc	ra,0x0
    80001844:	e3c080e7          	jalr	-452(ra) # 8000167c <_Z15thread_dispatchv>
    80001848:	fc1ff06f          	j	80001808 <_ZL9fibonaccim+0x2c>

000000008000184c <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    8000184c:	fe010113          	addi	sp,sp,-32
    80001850:	00113c23          	sd	ra,24(sp)
    80001854:	00813823          	sd	s0,16(sp)
    80001858:	00913423          	sd	s1,8(sp)
    8000185c:	01213023          	sd	s2,0(sp)
    80001860:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001864:	00000493          	li	s1,0
    80001868:	0400006f          	j	800018a8 <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    8000186c:	00007517          	auipc	a0,0x7
    80001870:	7b450513          	addi	a0,a0,1972 # 80009020 <CONSOLE_STATUS+0x10>
    80001874:	00004097          	auipc	ra,0x4
    80001878:	e70080e7          	jalr	-400(ra) # 800056e4 <_Z11printStringPKc>
        printInt(i);
    8000187c:	00000613          	li	a2,0
    80001880:	00a00593          	li	a1,10
    80001884:	00048513          	mv	a0,s1
    80001888:	00004097          	auipc	ra,0x4
    8000188c:	00c080e7          	jalr	12(ra) # 80005894 <_Z8printIntiii>
        printString("\n");
    80001890:	00008517          	auipc	a0,0x8
    80001894:	91850513          	addi	a0,a0,-1768 # 800091a8 <CONSOLE_STATUS+0x198>
    80001898:	00004097          	auipc	ra,0x4
    8000189c:	e4c080e7          	jalr	-436(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018a0:	0014849b          	addiw	s1,s1,1
    800018a4:	0ff4f493          	andi	s1,s1,255
    800018a8:	00200793          	li	a5,2
    800018ac:	fc97f0e3          	bgeu	a5,s1,8000186c <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800018b0:	00007517          	auipc	a0,0x7
    800018b4:	77850513          	addi	a0,a0,1912 # 80009028 <CONSOLE_STATUS+0x18>
    800018b8:	00004097          	auipc	ra,0x4
    800018bc:	e2c080e7          	jalr	-468(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800018c0:	00700313          	li	t1,7
    thread_dispatch();
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	db8080e7          	jalr	-584(ra) # 8000167c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800018cc:	00030913          	mv	s2,t1

    printString("A: t1=");
    800018d0:	00007517          	auipc	a0,0x7
    800018d4:	76850513          	addi	a0,a0,1896 # 80009038 <CONSOLE_STATUS+0x28>
    800018d8:	00004097          	auipc	ra,0x4
    800018dc:	e0c080e7          	jalr	-500(ra) # 800056e4 <_Z11printStringPKc>
    printInt(t1);
    800018e0:	00000613          	li	a2,0
    800018e4:	00a00593          	li	a1,10
    800018e8:	0009051b          	sext.w	a0,s2
    800018ec:	00004097          	auipc	ra,0x4
    800018f0:	fa8080e7          	jalr	-88(ra) # 80005894 <_Z8printIntiii>
    printString("\n");
    800018f4:	00008517          	auipc	a0,0x8
    800018f8:	8b450513          	addi	a0,a0,-1868 # 800091a8 <CONSOLE_STATUS+0x198>
    800018fc:	00004097          	auipc	ra,0x4
    80001900:	de8080e7          	jalr	-536(ra) # 800056e4 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001904:	01400513          	li	a0,20
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	ed4080e7          	jalr	-300(ra) # 800017dc <_ZL9fibonaccim>
    80001910:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001914:	00007517          	auipc	a0,0x7
    80001918:	72c50513          	addi	a0,a0,1836 # 80009040 <CONSOLE_STATUS+0x30>
    8000191c:	00004097          	auipc	ra,0x4
    80001920:	dc8080e7          	jalr	-568(ra) # 800056e4 <_Z11printStringPKc>
    printInt(result);
    80001924:	00000613          	li	a2,0
    80001928:	00a00593          	li	a1,10
    8000192c:	0009051b          	sext.w	a0,s2
    80001930:	00004097          	auipc	ra,0x4
    80001934:	f64080e7          	jalr	-156(ra) # 80005894 <_Z8printIntiii>
    printString("\n");
    80001938:	00008517          	auipc	a0,0x8
    8000193c:	87050513          	addi	a0,a0,-1936 # 800091a8 <CONSOLE_STATUS+0x198>
    80001940:	00004097          	auipc	ra,0x4
    80001944:	da4080e7          	jalr	-604(ra) # 800056e4 <_Z11printStringPKc>
    80001948:	0400006f          	j	80001988 <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000194c:	00007517          	auipc	a0,0x7
    80001950:	6d450513          	addi	a0,a0,1748 # 80009020 <CONSOLE_STATUS+0x10>
    80001954:	00004097          	auipc	ra,0x4
    80001958:	d90080e7          	jalr	-624(ra) # 800056e4 <_Z11printStringPKc>
        printInt(i);
    8000195c:	00000613          	li	a2,0
    80001960:	00a00593          	li	a1,10
    80001964:	00048513          	mv	a0,s1
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	f2c080e7          	jalr	-212(ra) # 80005894 <_Z8printIntiii>
        printString("\n");
    80001970:	00008517          	auipc	a0,0x8
    80001974:	83850513          	addi	a0,a0,-1992 # 800091a8 <CONSOLE_STATUS+0x198>
    80001978:	00004097          	auipc	ra,0x4
    8000197c:	d6c080e7          	jalr	-660(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001980:	0014849b          	addiw	s1,s1,1
    80001984:	0ff4f493          	andi	s1,s1,255
    80001988:	00500793          	li	a5,5
    8000198c:	fc97f0e3          	bgeu	a5,s1,8000194c <_Z11workerBodyAPv+0x100>
    }

    thread_dispatch();
    80001990:	00000097          	auipc	ra,0x0
    80001994:	cec080e7          	jalr	-788(ra) # 8000167c <_Z15thread_dispatchv>
}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret

00000000800019b0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	01213023          	sd	s2,0(sp)
    800019c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	cd4080e7          	jalr	-812(ra) # 8000169c <_Z11thread_joinP3TCB>
    uint8 i = 10;
    800019d0:	00a00493          	li	s1,10
    800019d4:	0400006f          	j	80001a14 <_Z11workerBodyBPv+0x64>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800019d8:	00007517          	auipc	a0,0x7
    800019dc:	67850513          	addi	a0,a0,1656 # 80009050 <CONSOLE_STATUS+0x40>
    800019e0:	00004097          	auipc	ra,0x4
    800019e4:	d04080e7          	jalr	-764(ra) # 800056e4 <_Z11printStringPKc>
        printInt(i);
    800019e8:	00000613          	li	a2,0
    800019ec:	00a00593          	li	a1,10
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00004097          	auipc	ra,0x4
    800019f8:	ea0080e7          	jalr	-352(ra) # 80005894 <_Z8printIntiii>
        printString("\n");
    800019fc:	00007517          	auipc	a0,0x7
    80001a00:	7ac50513          	addi	a0,a0,1964 # 800091a8 <CONSOLE_STATUS+0x198>
    80001a04:	00004097          	auipc	ra,0x4
    80001a08:	ce0080e7          	jalr	-800(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a0c:	0014849b          	addiw	s1,s1,1
    80001a10:	0ff4f493          	andi	s1,s1,255
    80001a14:	00c00793          	li	a5,12
    80001a18:	fc97f0e3          	bgeu	a5,s1,800019d8 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001a1c:	00007517          	auipc	a0,0x7
    80001a20:	63c50513          	addi	a0,a0,1596 # 80009058 <CONSOLE_STATUS+0x48>
    80001a24:	00004097          	auipc	ra,0x4
    80001a28:	cc0080e7          	jalr	-832(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a2c:	00500313          	li	t1,5
    thread_dispatch();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	c4c080e7          	jalr	-948(ra) # 8000167c <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    80001a38:	01700513          	li	a0,23
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	da0080e7          	jalr	-608(ra) # 800017dc <_ZL9fibonaccim>
    80001a44:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001a48:	00007517          	auipc	a0,0x7
    80001a4c:	62050513          	addi	a0,a0,1568 # 80009068 <CONSOLE_STATUS+0x58>
    80001a50:	00004097          	auipc	ra,0x4
    80001a54:	c94080e7          	jalr	-876(ra) # 800056e4 <_Z11printStringPKc>
    printInt(result);
    80001a58:	00000613          	li	a2,0
    80001a5c:	00a00593          	li	a1,10
    80001a60:	0009051b          	sext.w	a0,s2
    80001a64:	00004097          	auipc	ra,0x4
    80001a68:	e30080e7          	jalr	-464(ra) # 80005894 <_Z8printIntiii>
    printString("\n");
    80001a6c:	00007517          	auipc	a0,0x7
    80001a70:	73c50513          	addi	a0,a0,1852 # 800091a8 <CONSOLE_STATUS+0x198>
    80001a74:	00004097          	auipc	ra,0x4
    80001a78:	c70080e7          	jalr	-912(ra) # 800056e4 <_Z11printStringPKc>
    80001a7c:	0400006f          	j	80001abc <_Z11workerBodyBPv+0x10c>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001a80:	00007517          	auipc	a0,0x7
    80001a84:	5d050513          	addi	a0,a0,1488 # 80009050 <CONSOLE_STATUS+0x40>
    80001a88:	00004097          	auipc	ra,0x4
    80001a8c:	c5c080e7          	jalr	-932(ra) # 800056e4 <_Z11printStringPKc>
        printInt(i);
    80001a90:	00000613          	li	a2,0
    80001a94:	00a00593          	li	a1,10
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00004097          	auipc	ra,0x4
    80001aa0:	df8080e7          	jalr	-520(ra) # 80005894 <_Z8printIntiii>
        printString("\n");
    80001aa4:	00007517          	auipc	a0,0x7
    80001aa8:	70450513          	addi	a0,a0,1796 # 800091a8 <CONSOLE_STATUS+0x198>
    80001aac:	00004097          	auipc	ra,0x4
    80001ab0:	c38080e7          	jalr	-968(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ab4:	0014849b          	addiw	s1,s1,1
    80001ab8:	0ff4f493          	andi	s1,s1,255
    80001abc:	00f00793          	li	a5,15
    80001ac0:	fc97f0e3          	bgeu	a5,s1,80001a80 <_Z11workerBodyBPv+0xd0>
    }

    thread_dispatch();
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	bb8080e7          	jalr	-1096(ra) # 8000167c <_Z15thread_dispatchv>
}
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	00013903          	ld	s2,0(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret

0000000080001ae4 <_Z11workerBodyCPv>:

//test semafora
void workerBodyC(void* arg) {
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	00913423          	sd	s1,8(sp)
    80001af4:	02010413          	addi	s0,sp,32
    80001af8:	00050493          	mv	s1,a0
    printString("C: poziva se dispatch1.\n");
    80001afc:	00007517          	auipc	a0,0x7
    80001b00:	57c50513          	addi	a0,a0,1404 # 80009078 <CONSOLE_STATUS+0x68>
    80001b04:	00004097          	auipc	ra,0x4
    80001b08:	be0080e7          	jalr	-1056(ra) # 800056e4 <_Z11printStringPKc>
    thread_dispatch();
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	b70080e7          	jalr	-1168(ra) # 8000167c <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b14:	00007517          	auipc	a0,0x7
    80001b18:	58450513          	addi	a0,a0,1412 # 80009098 <CONSOLE_STATUS+0x88>
    80001b1c:	00004097          	auipc	ra,0x4
    80001b20:	bc8080e7          	jalr	-1080(ra) # 800056e4 <_Z11printStringPKc>
    thread_dispatch();
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	b58080e7          	jalr	-1192(ra) # 8000167c <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b2c:	00007517          	auipc	a0,0x7
    80001b30:	58c50513          	addi	a0,a0,1420 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001b34:	00004097          	auipc	ra,0x4
    80001b38:	bb0080e7          	jalr	-1104(ra) # 800056e4 <_Z11printStringPKc>
    thread_dispatch();
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	b40080e7          	jalr	-1216(ra) # 8000167c <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b44:	00007517          	auipc	a0,0x7
    80001b48:	59450513          	addi	a0,a0,1428 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001b4c:	00004097          	auipc	ra,0x4
    80001b50:	b98080e7          	jalr	-1128(ra) # 800056e4 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b54:	00007517          	auipc	a0,0x7
    80001b58:	5a450513          	addi	a0,a0,1444 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	b88080e7          	jalr	-1144(ra) # 800056e4 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	b88080e7          	jalr	-1144(ra) # 800016f0 <_Z9sem_closeP3Sem>
    thread_dispatch();
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	b0c080e7          	jalr	-1268(ra) # 8000167c <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001b78:	00007517          	auipc	a0,0x7
    80001b7c:	59850513          	addi	a0,a0,1432 # 80009110 <CONSOLE_STATUS+0x100>
    80001b80:	00004097          	auipc	ra,0x4
    80001b84:	b64080e7          	jalr	-1180(ra) # 800056e4 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001b88:	00007517          	auipc	a0,0x7
    80001b8c:	5a050513          	addi	a0,a0,1440 # 80009128 <CONSOLE_STATUS+0x118>
    80001b90:	00004097          	auipc	ra,0x4
    80001b94:	b54080e7          	jalr	-1196(ra) # 800056e4 <_Z11printStringPKc>
}
    80001b98:	01813083          	ld	ra,24(sp)
    80001b9c:	01013403          	ld	s0,16(sp)
    80001ba0:	00813483          	ld	s1,8(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret

0000000080001bac <_Z11workerBodyDPv>:


void workerBodyD(void *arg) {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    80001bc0:	00050493          	mv	s1,a0
    printString("D: Usli smo u D 1. put\n");
    80001bc4:	00007517          	auipc	a0,0x7
    80001bc8:	57c50513          	addi	a0,a0,1404 # 80009140 <CONSOLE_STATUS+0x130>
    80001bcc:	00004097          	auipc	ra,0x4
    80001bd0:	b18080e7          	jalr	-1256(ra) # 800056e4 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bd4:	00007517          	auipc	a0,0x7
    80001bd8:	58450513          	addi	a0,a0,1412 # 80009158 <CONSOLE_STATUS+0x148>
    80001bdc:	00004097          	auipc	ra,0x4
    80001be0:	b08080e7          	jalr	-1272(ra) # 800056e4 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001be4:	00048513          	mv	a0,s1
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	b34080e7          	jalr	-1228(ra) # 8000171c <_Z8sem_waitP3Sem>
    80001bf0:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001bf4:	00007517          	auipc	a0,0x7
    80001bf8:	58450513          	addi	a0,a0,1412 # 80009178 <CONSOLE_STATUS+0x168>
    80001bfc:	00004097          	auipc	ra,0x4
    80001c00:	ae8080e7          	jalr	-1304(ra) # 800056e4 <_Z11printStringPKc>
    printInt(returnValue);
    80001c04:	00000613          	li	a2,0
    80001c08:	00a00593          	li	a1,10
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	c84080e7          	jalr	-892(ra) # 80005894 <_Z8printIntiii>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c18:	00007517          	auipc	a0,0x7
    80001c1c:	57050513          	addi	a0,a0,1392 # 80009188 <CONSOLE_STATUS+0x178>
    80001c20:	00004097          	auipc	ra,0x4
    80001c24:	ac4080e7          	jalr	-1340(ra) # 800056e4 <_Z11printStringPKc>
}
    80001c28:	01813083          	ld	ra,24(sp)
    80001c2c:	01013403          	ld	s0,16(sp)
    80001c30:	00813483          	ld	s1,8(sp)
    80001c34:	02010113          	addi	sp,sp,32
    80001c38:	00008067          	ret

0000000080001c3c <_ZN3Sem4openEj>:
        unblock();
    }
    return 0;
}

Sem *Sem::open(unsigned int init) {
    80001c3c:	fe010113          	addi	sp,sp,-32
    80001c40:	00113c23          	sd	ra,24(sp)
    80001c44:	00813823          	sd	s0,16(sp)
    80001c48:	00913423          	sd	s1,8(sp)
    80001c4c:	02010413          	addi	s0,sp,32
    80001c50:	00050493          	mv	s1,a0
    static Sem* open(unsigned init = 1);
    int close();


    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    80001c54:	01800513          	li	a0,24
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	a44080e7          	jalr	-1468(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
    explicit Sem(unsigned init = 1) : value((unsigned ) init), closed(false){}
    80001c60:	00952023          	sw	s1,0(a0)
    80001c64:	00050223          	sb	zero,4(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001c68:	00053423          	sd	zero,8(a0)
    80001c6c:	00053823          	sd	zero,16(a0)
    return new Sem(init);
}
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	02010113          	addi	sp,sp,32
    80001c80:	00008067          	ret

0000000080001c84 <_ZN3Sem5closeEv>:

int Sem::close() {
    if (closed) {
    80001c84:	00454783          	lbu	a5,4(a0)
    80001c88:	06079663          	bnez	a5,80001cf4 <_ZN3Sem5closeEv+0x70>
int Sem::close() {
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	01213023          	sd	s2,0(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    80001ca4:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    80001ca8:	00100793          	li	a5,1
    80001cac:	00f50223          	sb	a5,4(a0)
    80001cb0:	0240006f          	j	80001cd4 <_ZN3Sem5closeEv+0x50>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001cb4:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80001cb8:	00053903          	ld	s2,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	b58080e7          	jalr	-1192(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }
    80001cc4:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    80001cc8:	00090513          	mv	a0,s2
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	470080e7          	jalr	1136(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001cd4:	0084b503          	ld	a0,8(s1)
    80001cd8:	02050263          	beqz	a0,80001cfc <_ZN3Sem5closeEv+0x78>
        return head->data;
    80001cdc:	00053783          	ld	a5,0(a0)
    while (this->blocked.peekFirst()) {
    80001ce0:	02078c63          	beqz	a5,80001d18 <_ZN3Sem5closeEv+0x94>
        head = head->next;
    80001ce4:	00853783          	ld	a5,8(a0)
    80001ce8:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001cec:	fc0796e3          	bnez	a5,80001cb8 <_ZN3Sem5closeEv+0x34>
    80001cf0:	fc5ff06f          	j	80001cb4 <_ZN3Sem5closeEv+0x30>
        return -1;
    80001cf4:	fff00513          	li	a0,-1
    }
    return 0;
}
    80001cf8:	00008067          	ret
    return 0;
    80001cfc:	00000513          	li	a0,0
}
    80001d00:	01813083          	ld	ra,24(sp)
    80001d04:	01013403          	ld	s0,16(sp)
    80001d08:	00813483          	ld	s1,8(sp)
    80001d0c:	00013903          	ld	s2,0(sp)
    80001d10:	02010113          	addi	sp,sp,32
    80001d14:	00008067          	ret
    return 0;
    80001d18:	00000513          	li	a0,0
    80001d1c:	fe5ff06f          	j	80001d00 <_ZN3Sem5closeEv+0x7c>

0000000080001d20 <_ZN3Sem5blockEv>:


void Sem::block(){
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	01213023          	sd	s2,0(sp)
    80001d34:	02010413          	addi	s0,sp,32
    80001d38:	00050493          	mv	s1,a0
    TCB* t = TCB::running;
    80001d3c:	0000a797          	auipc	a5,0xa
    80001d40:	aec7b783          	ld	a5,-1300(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d44:	0007b903          	ld	s2,0(a5)
    80001d48:	00100793          	li	a5,1
    80001d4c:	02f900a3          	sb	a5,33(s2)
            return MemoryAllocator::mem_alloc(size);
    80001d50:	01000513          	li	a0,16
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	948080e7          	jalr	-1720(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001d5c:	01253023          	sd	s2,0(a0)
    80001d60:	00053423          	sd	zero,8(a0)
        if (tail)
    80001d64:	0104b783          	ld	a5,16(s1)
    80001d68:	02078663          	beqz	a5,80001d94 <_ZN3Sem5blockEv+0x74>
            tail->next = elem;
    80001d6c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001d70:	00a4b823          	sd	a0,16(s1)
    t->setBlocked(true);
    blocked.addLast(t);

    //TCB::yield();
    thread_dispatch();
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	908080e7          	jalr	-1784(ra) # 8000167c <_Z15thread_dispatchv>
}
    80001d7c:	01813083          	ld	ra,24(sp)
    80001d80:	01013403          	ld	s0,16(sp)
    80001d84:	00813483          	ld	s1,8(sp)
    80001d88:	00013903          	ld	s2,0(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret
            head = tail = elem;
    80001d94:	00a4b823          	sd	a0,16(s1)
    80001d98:	00a4b423          	sd	a0,8(s1)
    80001d9c:	fd9ff06f          	j	80001d74 <_ZN3Sem5blockEv+0x54>

0000000080001da0 <_ZN3Sem4waitEv>:
    if(this->closed) {
    80001da0:	00454783          	lbu	a5,4(a0)
    80001da4:	06079063          	bnez	a5,80001e04 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001da8:	fe010113          	addi	sp,sp,-32
    80001dac:	00113c23          	sd	ra,24(sp)
    80001db0:	00813823          	sd	s0,16(sp)
    80001db4:	00913423          	sd	s1,8(sp)
    80001db8:	02010413          	addi	s0,sp,32
    80001dbc:	00050493          	mv	s1,a0
    if((int)--this->value < 0) {
    80001dc0:	00052783          	lw	a5,0(a0)
    80001dc4:	fff7879b          	addiw	a5,a5,-1
    80001dc8:	00f52023          	sw	a5,0(a0)
    80001dcc:	02079713          	slli	a4,a5,0x20
    80001dd0:	00074e63          	bltz	a4,80001dec <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001dd4:	00000513          	li	a0,0
}
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	02010113          	addi	sp,sp,32
    80001de8:	00008067          	ret
        block();
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	f34080e7          	jalr	-204(ra) # 80001d20 <_ZN3Sem5blockEv>
        if(this->closed) {
    80001df4:	0044c783          	lbu	a5,4(s1)
    80001df8:	00079a63          	bnez	a5,80001e0c <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001dfc:	00000513          	li	a0,0
    80001e00:	fd9ff06f          	j	80001dd8 <_ZN3Sem4waitEv+0x38>
        return -1;
    80001e04:	fff00513          	li	a0,-1
}
    80001e08:	00008067          	ret
            return -1;
    80001e0c:	fff00513          	li	a0,-1
    80001e10:	fc9ff06f          	j	80001dd8 <_ZN3Sem4waitEv+0x38>

0000000080001e14 <_ZN3Sem7unblockEv>:

void Sem::unblock(){
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    80001e28:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001e2c:	00853503          	ld	a0,8(a0)
    80001e30:	04050463          	beqz	a0,80001e78 <_ZN3Sem7unblockEv+0x64>
        head = head->next;
    80001e34:	00853703          	ld	a4,8(a0)
    80001e38:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001e3c:	02070a63          	beqz	a4,80001e70 <_ZN3Sem7unblockEv+0x5c>
        T *ret = elem->data;
    80001e40:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	9d0080e7          	jalr	-1584(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>
    80001e4c:	020480a3          	sb	zero,33(s1)
    TCB* t = blocked.removeFirst();
    t->setBlocked(false);
    Scheduler::put(t);
    80001e50:	00048513          	mv	a0,s1
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	2e8080e7          	jalr	744(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret
        if (!head) { tail = 0; }
    80001e70:	0007b823          	sd	zero,16(a5)
    80001e74:	fcdff06f          	j	80001e40 <_ZN3Sem7unblockEv+0x2c>
        if (!head) { return 0; }
    80001e78:	00050493          	mv	s1,a0
    80001e7c:	fd1ff06f          	j	80001e4c <_ZN3Sem7unblockEv+0x38>

0000000080001e80 <_ZN3Sem6signalEv>:
    if(this->closed) {
    80001e80:	00454783          	lbu	a5,4(a0)
    80001e84:	04079663          	bnez	a5,80001ed0 <_ZN3Sem6signalEv+0x50>
    if((int)++this->value <= 0) {
    80001e88:	00052783          	lw	a5,0(a0)
    80001e8c:	0017879b          	addiw	a5,a5,1
    80001e90:	00f52023          	sw	a5,0(a0)
    80001e94:	0007879b          	sext.w	a5,a5
    80001e98:	00f05663          	blez	a5,80001ea4 <_ZN3Sem6signalEv+0x24>
    return 0;
    80001e9c:	00000513          	li	a0,0
}
    80001ea0:	00008067          	ret
int Sem::signal() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
        unblock();
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	f60080e7          	jalr	-160(ra) # 80001e14 <_ZN3Sem7unblockEv>
    return 0;
    80001ebc:	00000513          	li	a0,0
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret
        return -1;
    80001ed0:	fff00513          	li	a0,-1
    80001ed4:	00008067          	ret

0000000080001ed8 <_Z9test_testv>:
//        finished[id] = true;
        printString("testtest\n");
    }
};

void test_test () {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    printString("da");
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	2c850513          	addi	a0,a0,712 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80001ef0:	00003097          	auipc	ra,0x3
    80001ef4:	7f4080e7          	jalr	2036(ra) # 800056e4 <_Z11printStringPKc>
}
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_Z8test_foov>:
void test_foo(){
    80001f08:	fc010113          	addi	sp,sp,-64
    80001f0c:	02113c23          	sd	ra,56(sp)
    80001f10:	02813823          	sd	s0,48(sp)
    80001f14:	02913423          	sd	s1,40(sp)
    80001f18:	03213023          	sd	s2,32(sp)
    80001f1c:	04010413          	addi	s0,sp,64

    Thread *threads[4];

    threads[0] = new Worker(0);
    80001f20:	02800513          	li	a0,40
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	9b4080e7          	jalr	-1612(ra) # 800028d8 <_Znwm>
    80001f2c:	00050493          	mv	s1,a0
    Worker(int i):Thread() {
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	c2c080e7          	jalr	-980(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80001f38:	00009797          	auipc	a5,0x9
    80001f3c:	6b878793          	addi	a5,a5,1720 # 8000b5f0 <_ZTV6Worker+0x10>
    80001f40:	00f4b023          	sd	a5,0(s1)
        id = i;
    80001f44:	0204a023          	sw	zero,32(s1)
    threads[0] = new Worker(0);
    80001f48:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001f4c:	00007517          	auipc	a0,0x7
    80001f50:	26c50513          	addi	a0,a0,620 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001f54:	00003097          	auipc	ra,0x3
    80001f58:	790080e7          	jalr	1936(ra) # 800056e4 <_Z11printStringPKc>

    threads[1] = new Worker(1);
    80001f5c:	02800513          	li	a0,40
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	978080e7          	jalr	-1672(ra) # 800028d8 <_Znwm>
    80001f68:	00050493          	mv	s1,a0
    Worker(int i):Thread() {
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	bf0080e7          	jalr	-1040(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80001f74:	00009797          	auipc	a5,0x9
    80001f78:	67c78793          	addi	a5,a5,1660 # 8000b5f0 <_ZTV6Worker+0x10>
    80001f7c:	00f4b023          	sd	a5,0(s1)
        id = i;
    80001f80:	00100793          	li	a5,1
    80001f84:	02f4a023          	sw	a5,32(s1)
    threads[1] = new Worker(1);
    80001f88:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	24450513          	addi	a0,a0,580 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80001f94:	00003097          	auipc	ra,0x3
    80001f98:	750080e7          	jalr	1872(ra) # 800056e4 <_Z11printStringPKc>

    threads[2] = new Worker(2);
    80001f9c:	02800513          	li	a0,40
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	938080e7          	jalr	-1736(ra) # 800028d8 <_Znwm>
    80001fa8:	00050493          	mv	s1,a0
    Worker(int i):Thread() {
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	bb0080e7          	jalr	-1104(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80001fb4:	00009797          	auipc	a5,0x9
    80001fb8:	63c78793          	addi	a5,a5,1596 # 8000b5f0 <_ZTV6Worker+0x10>
    80001fbc:	00f4b023          	sd	a5,0(s1)
        id = i;
    80001fc0:	00200793          	li	a5,2
    80001fc4:	02f4a023          	sw	a5,32(s1)
    threads[2] = new Worker(2);
    80001fc8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	21c50513          	addi	a0,a0,540 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80001fd4:	00003097          	auipc	ra,0x3
    80001fd8:	710080e7          	jalr	1808(ra) # 800056e4 <_Z11printStringPKc>

    threads[3] = new Worker(3);
    80001fdc:	02800513          	li	a0,40
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	8f8080e7          	jalr	-1800(ra) # 800028d8 <_Znwm>
    80001fe8:	00050493          	mv	s1,a0
    Worker(int i):Thread() {
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	b70080e7          	jalr	-1168(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80001ff4:	00009797          	auipc	a5,0x9
    80001ff8:	5fc78793          	addi	a5,a5,1532 # 8000b5f0 <_ZTV6Worker+0x10>
    80001ffc:	00f4b023          	sd	a5,0(s1)
        id = i;
    80002000:	00300793          	li	a5,3
    80002004:	02f4a023          	sw	a5,32(s1)
    threads[3] = new Worker(3);
    80002008:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000200c:	00007517          	auipc	a0,0x7
    80002010:	1f450513          	addi	a0,a0,500 # 80009200 <CONSOLE_STATUS+0x1f0>
    80002014:	00003097          	auipc	ra,0x3
    80002018:	6d0080e7          	jalr	1744(ra) # 800056e4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000201c:	00000493          	li	s1,0
    80002020:	00300793          	li	a5,3
    80002024:	0297c663          	blt	a5,s1,80002050 <_Z8test_foov+0x148>
        threads[i]->start();
    80002028:	00349793          	slli	a5,s1,0x3
    8000202c:	fe040713          	addi	a4,s0,-32
    80002030:	00f707b3          	add	a5,a4,a5
    80002034:	fe07b503          	ld	a0,-32(a5)
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	af4080e7          	jalr	-1292(ra) # 80002b2c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002040:	0014849b          	addiw	s1,s1,1
    80002044:	fddff06f          	j	80002020 <_Z8test_foov+0x118>
    }

    while (!(finished[0] && finished[1] && finished[2]&& finished[3])) {
        Thread::dispatch();
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	a58080e7          	jalr	-1448(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    while (!(finished[0] && finished[1] && finished[2]&& finished[3])) {
    80002050:	0000a797          	auipc	a5,0xa
    80002054:	8307c783          	lbu	a5,-2000(a5) # 8000b880 <_ZL8finished>
    80002058:	fe0788e3          	beqz	a5,80002048 <_Z8test_foov+0x140>
    8000205c:	0000a797          	auipc	a5,0xa
    80002060:	8257c783          	lbu	a5,-2011(a5) # 8000b881 <_ZL8finished+0x1>
    80002064:	fe0782e3          	beqz	a5,80002048 <_Z8test_foov+0x140>
    80002068:	0000a797          	auipc	a5,0xa
    8000206c:	81a7c783          	lbu	a5,-2022(a5) # 8000b882 <_ZL8finished+0x2>
    80002070:	fc078ce3          	beqz	a5,80002048 <_Z8test_foov+0x140>
    80002074:	0000a797          	auipc	a5,0xa
    80002078:	80f7c783          	lbu	a5,-2033(a5) # 8000b883 <_ZL8finished+0x3>
    8000207c:	fc0786e3          	beqz	a5,80002048 <_Z8test_foov+0x140>
    80002080:	fc040493          	addi	s1,s0,-64
    80002084:	0080006f          	j	8000208c <_Z8test_foov+0x184>
    }

    for (auto thread: threads) { delete thread; }
    80002088:	00848493          	addi	s1,s1,8
    8000208c:	fe040793          	addi	a5,s0,-32
    80002090:	08f48663          	beq	s1,a5,8000211c <_Z8test_foov+0x214>
    80002094:	0004b503          	ld	a0,0(s1)
    80002098:	fe0508e3          	beqz	a0,80002088 <_Z8test_foov+0x180>
    8000209c:	00053783          	ld	a5,0(a0)
    800020a0:	0087b783          	ld	a5,8(a5)
    800020a4:	000780e7          	jalr	a5
    800020a8:	fe1ff06f          	j	80002088 <_Z8test_foov+0x180>
    800020ac:	00050913          	mv	s2,a0
    threads[0] = new Worker(0);
    800020b0:	00048513          	mv	a0,s1
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	874080e7          	jalr	-1932(ra) # 80002928 <_ZdlPv>
    800020bc:	00090513          	mv	a0,s2
    800020c0:	0000b097          	auipc	ra,0xb
    800020c4:	918080e7          	jalr	-1768(ra) # 8000c9d8 <_Unwind_Resume>
    800020c8:	00050913          	mv	s2,a0
    threads[1] = new Worker(1);
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	858080e7          	jalr	-1960(ra) # 80002928 <_ZdlPv>
    800020d8:	00090513          	mv	a0,s2
    800020dc:	0000b097          	auipc	ra,0xb
    800020e0:	8fc080e7          	jalr	-1796(ra) # 8000c9d8 <_Unwind_Resume>
    800020e4:	00050913          	mv	s2,a0
    threads[2] = new Worker(2);
    800020e8:	00048513          	mv	a0,s1
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	83c080e7          	jalr	-1988(ra) # 80002928 <_ZdlPv>
    800020f4:	00090513          	mv	a0,s2
    800020f8:	0000b097          	auipc	ra,0xb
    800020fc:	8e0080e7          	jalr	-1824(ra) # 8000c9d8 <_Unwind_Resume>
    80002100:	00050913          	mv	s2,a0
    threads[3] = new Worker(3);
    80002104:	00048513          	mv	a0,s1
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	820080e7          	jalr	-2016(ra) # 80002928 <_ZdlPv>
    80002110:	00090513          	mv	a0,s2
    80002114:	0000b097          	auipc	ra,0xb
    80002118:	8c4080e7          	jalr	-1852(ra) # 8000c9d8 <_Unwind_Resume>


}
    8000211c:	03813083          	ld	ra,56(sp)
    80002120:	03013403          	ld	s0,48(sp)
    80002124:	02813483          	ld	s1,40(sp)
    80002128:	02013903          	ld	s2,32(sp)
    8000212c:	04010113          	addi	sp,sp,64
    80002130:	00008067          	ret

0000000080002134 <main>:
int main()
{
    80002134:	fb010113          	addi	sp,sp,-80
    80002138:	04113423          	sd	ra,72(sp)
    8000213c:	04813023          	sd	s0,64(sp)
    80002140:	02913c23          	sd	s1,56(sp)
    80002144:	03213823          	sd	s2,48(sp)
    80002148:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::vectorTable | 0b01);
    8000214c:	00009797          	auipc	a5,0x9
    80002150:	6cc7b783          	ld	a5,1740(a5) # 8000b818 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002154:	0017e793          	ori	a5,a5,1
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002158:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000215c:	00200793          	li	a5,2
    80002160:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    //thread_create(&threads[0], nullptr, nullptr);
    threads[0] = TCB::createThread(nullptr,nullptr, nullptr);
    80002164:	00000613          	li	a2,0
    80002168:	00000593          	li	a1,0
    8000216c:	00000513          	li	a0,0
    80002170:	00000097          	auipc	ra,0x0
    80002174:	16c080e7          	jalr	364(ra) # 800022dc <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002178:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000217c:	00009797          	auipc	a5,0x9
    80002180:	6ac7b783          	ld	a5,1708(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002184:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(test_test), nullptr);
    80002188:	00000613          	li	a2,0
    8000218c:	00000597          	auipc	a1,0x0
    80002190:	d4c58593          	addi	a1,a1,-692 # 80001ed8 <_Z9test_testv>
    80002194:	fc040513          	addi	a0,s0,-64
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	440080e7          	jalr	1088(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>

    //test_foo();


    Thread* t = new Worker(0);
    800021a0:	02800513          	li	a0,40
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	734080e7          	jalr	1844(ra) # 800028d8 <_Znwm>
    800021ac:	00050493          	mv	s1,a0
    Worker(int i):Thread() {
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	9ac080e7          	jalr	-1620(ra) # 80002b5c <_ZN6ThreadC1Ev>
    800021b8:	0200006f          	j	800021d8 <main+0xa4>
    800021bc:	00050913          	mv	s2,a0
    Thread* t = new Worker(0);
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	764080e7          	jalr	1892(ra) # 80002928 <_ZdlPv>
    800021cc:	00090513          	mv	a0,s2
    800021d0:	0000b097          	auipc	ra,0xb
    800021d4:	808080e7          	jalr	-2040(ra) # 8000c9d8 <_Unwind_Resume>
    Worker(int i):Thread() {
    800021d8:	00009797          	auipc	a5,0x9
    800021dc:	41878793          	addi	a5,a5,1048 # 8000b5f0 <_ZTV6Worker+0x10>
    800021e0:	00f4b023          	sd	a5,0(s1)
        id = i;
    800021e4:	0204a023          	sw	zero,32(s1)
    t->start();
    800021e8:	00048513          	mv	a0,s1
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	940080e7          	jalr	-1728(ra) # 80002b2c <_ZN6Thread5startEv>
//    while (!finished[0]){
//        thread_dispatch();
//    }


    t->join();
    800021f4:	00048513          	mv	a0,s1
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	908080e7          	jalr	-1784(ra) # 80002b00 <_ZN6Thread4joinEv>

    //printInt(TCB::id);

    printString("Vratio sam se u main\n");
    80002200:	00007517          	auipc	a0,0x7
    80002204:	01850513          	addi	a0,a0,24 # 80009218 <CONSOLE_STATUS+0x208>
    80002208:	00003097          	auipc	ra,0x3
    8000220c:	4dc080e7          	jalr	1244(ra) # 800056e4 <_Z11printStringPKc>


    return 0;
}
    80002210:	00000513          	li	a0,0
    80002214:	04813083          	ld	ra,72(sp)
    80002218:	04013403          	ld	s0,64(sp)
    8000221c:	03813483          	ld	s1,56(sp)
    80002220:	03013903          	ld	s2,48(sp)
    80002224:	05010113          	addi	sp,sp,80
    80002228:	00008067          	ret

000000008000222c <_ZN6Worker3runEv>:
    void run() override {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00113423          	sd	ra,8(sp)
    80002234:	00813023          	sd	s0,0(sp)
    80002238:	01010413          	addi	s0,sp,16
        printString("testtest\n");
    8000223c:	00007517          	auipc	a0,0x7
    80002240:	ff450513          	addi	a0,a0,-12 # 80009230 <CONSOLE_STATUS+0x220>
    80002244:	00003097          	auipc	ra,0x3
    80002248:	4a0080e7          	jalr	1184(ra) # 800056e4 <_Z11printStringPKc>
    }
    8000224c:	00813083          	ld	ra,8(sp)
    80002250:	00013403          	ld	s0,0(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_ZN6WorkerD1Ev>:
class Worker: public Thread {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	00009797          	auipc	a5,0x9
    80002270:	38478793          	addi	a5,a5,900 # 8000b5f0 <_ZTV6Worker+0x10>
    80002274:	00f53023          	sd	a5,0(a0)
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	718080e7          	jalr	1816(ra) # 80002990 <_ZN6ThreadD1Ev>
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZN6WorkerD0Ev>:
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    800022a4:	00050493          	mv	s1,a0
    800022a8:	00009797          	auipc	a5,0x9
    800022ac:	34878793          	addi	a5,a5,840 # 8000b5f0 <_ZTV6Worker+0x10>
    800022b0:	00f53023          	sd	a5,0(a0)
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	6dc080e7          	jalr	1756(ra) # 80002990 <_ZN6ThreadD1Ev>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	668080e7          	jalr	1640(ra) # 80002928 <_ZdlPv>
    800022c8:	01813083          	ld	ra,24(sp)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	00813483          	ld	s1,8(sp)
    800022d4:	02010113          	addi	sp,sp,32
    800022d8:	00008067          	ret

00000000800022dc <_ZN3TCB12createThreadEPFvPvES0_S0_>:

TCB *TCB::running = nullptr;


TCB *TCB::createThread(Body body, void* arg, void* stack)
{
    800022dc:	fd010113          	addi	sp,sp,-48
    800022e0:	02113423          	sd	ra,40(sp)
    800022e4:	02813023          	sd	s0,32(sp)
    800022e8:	00913c23          	sd	s1,24(sp)
    800022ec:	01213823          	sd	s2,16(sp)
    800022f0:	01313423          	sd	s3,8(sp)
    800022f4:	01413023          	sd	s4,0(sp)
    800022f8:	03010413          	addi	s0,sp,48
    if(thread_limit == id) return nullptr;
    800022fc:	00009717          	auipc	a4,0x9
    80002300:	31472703          	lw	a4,788(a4) # 8000b610 <_ZN3TCB12thread_limitE>
    80002304:	00009797          	auipc	a5,0x9
    80002308:	5847a783          	lw	a5,1412(a5) # 8000b888 <_ZN3TCB2idE>
    8000230c:	0af70863          	beq	a4,a5,800023bc <_ZN3TCB12createThreadEPFvPvES0_S0_+0xe0>
    80002310:	00050993          	mv	s3,a0
    80002314:	00058a13          	mv	s4,a1
    80002318:	00060913          	mv	s2,a2
    static void yield();

    static TCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    8000231c:	04800513          	li	a0,72
    80002320:	00000097          	auipc	ra,0x0
    80002324:	37c080e7          	jalr	892(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
    80002328:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg)
    8000232c:	01353023          	sd	s3,0(a0)
    80002330:	01253423          	sd	s2,8(a0)
    80002334:	00000797          	auipc	a5,0x0
    80002338:	30478793          	addi	a5,a5,772 # 80002638 <_ZN3TCB13threadWrapperEv>
    8000233c:	00f53823          	sd	a5,16(a0)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002340:	06090a63          	beqz	s2,800023b4 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xd8>
    80002344:	00002637          	lui	a2,0x2
    80002348:	00c90933          	add	s2,s2,a2
            arg(arg)
    8000234c:	0124bc23          	sd	s2,24(s1)
    80002350:	02048023          	sb	zero,32(s1)
    80002354:	020480a3          	sb	zero,33(s1)
            main(body == nullptr),
    80002358:	0019b993          	seqz	s3,s3
            arg(arg)
    8000235c:	03348123          	sb	s3,34(s1)
    80002360:	0344b423          	sd	s4,40(s1)
    List() : head(0), tail(0) {}
    80002364:	0204b823          	sd	zero,48(s1)
    80002368:	0204bc23          	sd	zero,56(s1)

    {
        myId = ++id;
    8000236c:	00009717          	auipc	a4,0x9
    80002370:	51c70713          	addi	a4,a4,1308 # 8000b888 <_ZN3TCB2idE>
    80002374:	00072783          	lw	a5,0(a4)
    80002378:	0017879b          	addiw	a5,a5,1
    8000237c:	00f72023          	sw	a5,0(a4)
    80002380:	04f4a023          	sw	a5,64(s1)
    TCB* newTCB = new TCB(body, arg, stack);
    Scheduler::put(newTCB);
    80002384:	00048513          	mv	a0,s1
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	db4080e7          	jalr	-588(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
    return newTCB;
}
    80002390:	00048513          	mv	a0,s1
    80002394:	02813083          	ld	ra,40(sp)
    80002398:	02013403          	ld	s0,32(sp)
    8000239c:	01813483          	ld	s1,24(sp)
    800023a0:	01013903          	ld	s2,16(sp)
    800023a4:	00813983          	ld	s3,8(sp)
    800023a8:	00013a03          	ld	s4,0(sp)
    800023ac:	03010113          	addi	sp,sp,48
    800023b0:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800023b4:	00000913          	li	s2,0
    800023b8:	f95ff06f          	j	8000234c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x70>
    if(thread_limit == id) return nullptr;
    800023bc:	00000493          	li	s1,0
    800023c0:	fd1ff06f          	j	80002390 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>

00000000800023c4 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_S0_>:

TCB *TCB::createThreadWithoutStarting(Body body, void* arg, void* stack)
{
    if(thread_limit == id) return nullptr;
    800023c4:	00009717          	auipc	a4,0x9
    800023c8:	24c72703          	lw	a4,588(a4) # 8000b610 <_ZN3TCB12thread_limitE>
    800023cc:	00009797          	auipc	a5,0x9
    800023d0:	4bc7a783          	lw	a5,1212(a5) # 8000b888 <_ZN3TCB2idE>
    800023d4:	0af70a63          	beq	a4,a5,80002488 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_S0_+0xc4>
{
    800023d8:	fd010113          	addi	sp,sp,-48
    800023dc:	02113423          	sd	ra,40(sp)
    800023e0:	02813023          	sd	s0,32(sp)
    800023e4:	00913c23          	sd	s1,24(sp)
    800023e8:	01213823          	sd	s2,16(sp)
    800023ec:	01313423          	sd	s3,8(sp)
    800023f0:	03010413          	addi	s0,sp,48
    800023f4:	00050913          	mv	s2,a0
    800023f8:	00058993          	mv	s3,a1
    800023fc:	00060493          	mv	s1,a2
        return MemoryAllocator::mem_alloc(size);
    80002400:	04800513          	li	a0,72
    80002404:	00000097          	auipc	ra,0x0
    80002408:	298080e7          	jalr	664(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
            arg(arg)
    8000240c:	01253023          	sd	s2,0(a0)
    80002410:	00953423          	sd	s1,8(a0)
    80002414:	00000797          	auipc	a5,0x0
    80002418:	22478793          	addi	a5,a5,548 # 80002638 <_ZN3TCB13threadWrapperEv>
    8000241c:	00f53823          	sd	a5,16(a0)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002420:	06048063          	beqz	s1,80002480 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_S0_+0xbc>
    80002424:	00002637          	lui	a2,0x2
    80002428:	00c484b3          	add	s1,s1,a2
            arg(arg)
    8000242c:	00953c23          	sd	s1,24(a0)
    80002430:	02050023          	sb	zero,32(a0)
    80002434:	020500a3          	sb	zero,33(a0)
            main(body == nullptr),
    80002438:	00193913          	seqz	s2,s2
            arg(arg)
    8000243c:	03250123          	sb	s2,34(a0)
    80002440:	03353423          	sd	s3,40(a0)
    80002444:	02053823          	sd	zero,48(a0)
    80002448:	02053c23          	sd	zero,56(a0)
        myId = ++id;
    8000244c:	00009717          	auipc	a4,0x9
    80002450:	43c70713          	addi	a4,a4,1084 # 8000b888 <_ZN3TCB2idE>
    80002454:	00072783          	lw	a5,0(a4)
    80002458:	0017879b          	addiw	a5,a5,1
    8000245c:	00f72023          	sw	a5,0(a4)
    80002460:	04f52023          	sw	a5,64(a0)
    TCB* newTCB = new TCB(body, arg, stack);
    //Scheduler::put(newTCB);
    return newTCB;
}
    80002464:	02813083          	ld	ra,40(sp)
    80002468:	02013403          	ld	s0,32(sp)
    8000246c:	01813483          	ld	s1,24(sp)
    80002470:	01013903          	ld	s2,16(sp)
    80002474:	00813983          	ld	s3,8(sp)
    80002478:	03010113          	addi	sp,sp,48
    8000247c:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002480:	00000493          	li	s1,0
    80002484:	fa9ff06f          	j	8000242c <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_S0_+0x68>
    if(thread_limit == id) return nullptr;
    80002488:	00000513          	li	a0,0
}
    8000248c:	00008067          	ret

0000000080002490 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00813423          	sd	s0,8(sp)
    80002498:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    8000249c:	01300793          	li	a5,19
    800024a0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    800024a4:	00000073          	ecall
}
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800024c8:	00009497          	auipc	s1,0x9
    800024cc:	3c84b483          	ld	s1,968(s1) # 8000b890 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800024d0:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800024d4:	00079663          	bnez	a5,800024e0 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    800024d8:	0214c783          	lbu	a5,33(s1)
    800024dc:	04078463          	beqz	a5,80002524 <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	bf4080e7          	jalr	-1036(ra) # 800030d4 <_ZN9Scheduler3getEv>
    800024e8:	00009797          	auipc	a5,0x9
    800024ec:	3aa7b423          	sd	a0,936(a5) # 8000b890 <_ZN3TCB7runningE>
    bool isMain() const { return this->main; }
    800024f0:	02254783          	lbu	a5,34(a0)

    if(running->isMain()) {
    800024f4:	04078063          	beqz	a5,80002534 <_ZN3TCB8dispatchEv+0x80>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800024f8:	10000793          	li	a5,256
    800024fc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }
    TCB::contextSwitch(&old->context, &running->context);
    80002500:	01050593          	addi	a1,a0,16
    80002504:	01048513          	addi	a0,s1,16
    80002508:	fffff097          	auipc	ra,0xfffff
    8000250c:	f70080e7          	jalr	-144(ra) # 80001478 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002524:	00048513          	mv	a0,s1
    80002528:	00001097          	auipc	ra,0x1
    8000252c:	c14080e7          	jalr	-1004(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
    80002530:	fb1ff06f          	j	800024e0 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002534:	10000793          	li	a5,256
    80002538:	1007b073          	csrc	sstatus,a5
}
    8000253c:	fc5ff06f          	j	80002500 <_ZN3TCB8dispatchEv+0x4c>

0000000080002540 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    80002540:	02054783          	lbu	a5,32(a0)
    running->releaseAll();
    thread_dispatch();
}

void TCB::join(TCB* handle) {
    if(!handle->isFinished()) {
    80002544:	00078463          	beqz	a5,8000254c <_ZN3TCB4joinEPS_+0xc>
    80002548:	00008067          	ret
void TCB::join(TCB* handle) {
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	01213023          	sd	s2,0(sp)
    80002560:	02010413          	addi	s0,sp,32
    80002564:	00050493          	mv	s1,a0
        running->setBlocked(true);
    80002568:	00009917          	auipc	s2,0x9
    8000256c:	32893903          	ld	s2,808(s2) # 8000b890 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    80002570:	00100793          	li	a5,1
    80002574:	02f900a3          	sb	a5,33(s2)
            return MemoryAllocator::mem_alloc(size);
    80002578:	01000513          	li	a0,16
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	120080e7          	jalr	288(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002584:	01253023          	sd	s2,0(a0)
    80002588:	00053423          	sd	zero,8(a0)
        if (tail)
    8000258c:	0384b783          	ld	a5,56(s1)
    80002590:	02078263          	beqz	a5,800025b4 <_ZN3TCB4joinEPS_+0x74>
            tail->next = elem;
    80002594:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002598:	02a4bc23          	sd	a0,56(s1)
        handle->joined.addLast(running);
    }
}
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	00013903          	ld	s2,0(sp)
    800025ac:	02010113          	addi	sp,sp,32
    800025b0:	00008067          	ret
            head = tail = elem;
    800025b4:	02a4bc23          	sd	a0,56(s1)
    800025b8:	02a4b823          	sd	a0,48(s1)
    800025bc:	fe1ff06f          	j	8000259c <_ZN3TCB4joinEPS_+0x5c>

00000000800025c0 <_ZN3TCB10releaseAllEv>:

void TCB::releaseAll() {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	01213023          	sd	s2,0(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00050913          	mv	s2,a0
    800025dc:	0240006f          	j	80002600 <_ZN3TCB10releaseAllEv+0x40>
        if (!head) { tail = 0; }
    800025e0:	02093c23          	sd	zero,56(s2)
        T *ret = elem->data;
    800025e4:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	22c080e7          	jalr	556(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>
    800025f0:	020480a3          	sb	zero,33(s1)
    while (this->joined.peekFirst()) {
        TCB* tcb = this->joined.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800025f4:	00048513          	mv	a0,s1
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	b44080e7          	jalr	-1212(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80002600:	03093503          	ld	a0,48(s2)
    80002604:	00050e63          	beqz	a0,80002620 <_ZN3TCB10releaseAllEv+0x60>
        return head->data;
    80002608:	00053783          	ld	a5,0(a0)
    while (this->joined.peekFirst()) {
    8000260c:	00078a63          	beqz	a5,80002620 <_ZN3TCB10releaseAllEv+0x60>
        head = head->next;
    80002610:	00853783          	ld	a5,8(a0)
    80002614:	02f93823          	sd	a5,48(s2)
        if (!head) { tail = 0; }
    80002618:	fc0796e3          	bnez	a5,800025e4 <_ZN3TCB10releaseAllEv+0x24>
    8000261c:	fc5ff06f          	j	800025e0 <_ZN3TCB10releaseAllEv+0x20>
    }
}
    80002620:	01813083          	ld	ra,24(sp)
    80002624:	01013403          	ld	s0,16(sp)
    80002628:	00813483          	ld	s1,8(sp)
    8000262c:	00013903          	ld	s2,0(sp)
    80002630:	02010113          	addi	sp,sp,32
    80002634:	00008067          	ret

0000000080002638 <_ZN3TCB13threadWrapperEv>:
{
    80002638:	fe010113          	addi	sp,sp,-32
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	684080e7          	jalr	1668(ra) # 80002cd0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002654:	00009497          	auipc	s1,0x9
    80002658:	23448493          	addi	s1,s1,564 # 8000b888 <_ZN3TCB2idE>
    8000265c:	0084b783          	ld	a5,8(s1)
    80002660:	0007b703          	ld	a4,0(a5)
    80002664:	0287b503          	ld	a0,40(a5)
    80002668:	000700e7          	jalr	a4
    running->setFinished(true);
    8000266c:	0084b503          	ld	a0,8(s1)
    void setFinished(bool value) { finished = value; }
    80002670:	00100793          	li	a5,1
    80002674:	02f50023          	sb	a5,32(a0)
    running->releaseAll();
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	f48080e7          	jalr	-184(ra) # 800025c0 <_ZN3TCB10releaseAllEv>
    thread_dispatch();
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	ffc080e7          	jalr	-4(ra) # 8000167c <_Z15thread_dispatchv>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <_ZN15MemoryAllocator9mem_allocEm>:

bool MemoryAllocator::created = false;
MemUnit* MemoryAllocator::mem_head = nullptr;

void* MemoryAllocator::mem_alloc(size_t size)
{
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	00050713          	mv	a4,a0
    if (!created)
    800026ac:	00009797          	auipc	a5,0x9
    800026b0:	1ec7c783          	lbu	a5,492(a5) # 8000b898 <_ZN15MemoryAllocator7createdE>
    800026b4:	04079663          	bnez	a5,80002700 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    {
        mem_head = (MemUnit *) ((uint64 *) HEAP_START_ADDR);
    800026b8:	00009597          	auipc	a1,0x9
    800026bc:	1585b583          	ld	a1,344(a1) # 8000b810 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026c0:	0005b783          	ld	a5,0(a1)
    800026c4:	00009697          	auipc	a3,0x9
    800026c8:	1d468693          	addi	a3,a3,468 # 8000b898 <_ZN15MemoryAllocator7createdE>
    800026cc:	00f6b423          	sd	a5,8(a3)
        mem_head->next = nullptr;
    800026d0:	0007b023          	sd	zero,0(a5)
        mem_head->prev = nullptr;
    800026d4:	0086b603          	ld	a2,8(a3)
    800026d8:	00063423          	sd	zero,8(a2) # 2008 <_entry-0x7fffdff8>
        //mem_head->size = ((uint64) ((uint64 ) HEAP_END_ADDR - (uint64 ) HEAP_START_ADDR) - sizeof(MemUnit)) / MEM_BLOCK_SIZE;
        mem_head->size = ((uint64) ((uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR) - sizeof(MemUnit));
    800026dc:	00009797          	auipc	a5,0x9
    800026e0:	1547b783          	ld	a5,340(a5) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026e4:	0007b783          	ld	a5,0(a5)
    800026e8:	0005b583          	ld	a1,0(a1)
    800026ec:	40b787b3          	sub	a5,a5,a1
    800026f0:	fe878793          	addi	a5,a5,-24
    800026f4:	00f63823          	sd	a5,16(a2)
        created = true;
    800026f8:	00100793          	li	a5,1
    800026fc:	00f68023          	sb	a5,0(a3)
    }

    //size *= MEM_BLOCK_SIZE;
    MemUnit *cur ;
    for (cur = mem_head; cur != nullptr && cur->size < size; cur = cur->next);
    80002700:	00009517          	auipc	a0,0x9
    80002704:	1a053503          	ld	a0,416(a0) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    80002708:	00050a63          	beqz	a0,8000271c <_ZN15MemoryAllocator9mem_allocEm+0x80>
    8000270c:	01053783          	ld	a5,16(a0)
    80002710:	00e7f663          	bgeu	a5,a4,8000271c <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002714:	00053503          	ld	a0,0(a0)
    80002718:	ff1ff06f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0x6c>

    if (!cur) return nullptr;
    8000271c:	04050663          	beqz	a0,80002768 <_ZN15MemoryAllocator9mem_allocEm+0xcc>

    else{
        if (cur->size - size >= sizeof(MemUnit) + MEM_BLOCK_SIZE){
    80002720:	01053783          	ld	a5,16(a0)
    80002724:	40e787b3          	sub	a5,a5,a4
    80002728:	05700693          	li	a3,87
    8000272c:	04f6fa63          	bgeu	a3,a5,80002780 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            MemUnit *newUnit = (MemUnit *) ((uint64 *) cur + size + sizeof(MemUnit));
    80002730:	01870693          	addi	a3,a4,24
    80002734:	00369693          	slli	a3,a3,0x3
    80002738:	00d506b3          	add	a3,a0,a3

            newUnit->size = cur->size - size - sizeof(MemUnit);
    8000273c:	fe878793          	addi	a5,a5,-24
    80002740:	00f6b823          	sd	a5,16(a3)
            newUnit->next = cur->next;
    80002744:	00053783          	ld	a5,0(a0)
    80002748:	00f6b023          	sd	a5,0(a3)
            newUnit->prev = cur->prev;
    8000274c:	00853783          	ld	a5,8(a0)
    80002750:	00f6b423          	sd	a5,8(a3)

            if (cur->prev) cur->prev->next = newUnit;
    80002754:	02078063          	beqz	a5,80002774 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
    80002758:	00d7b023          	sd	a3,0(a5)
            else mem_head = newUnit;
            cur->size = size;
    8000275c:	00e53823          	sd	a4,16(a0)
            cur->next = nullptr;
    80002760:	00053023          	sd	zero,0(a0)

            return (MemUnit *) ((char*)cur + sizeof(MemUnit));
    80002764:	01850513          	addi	a0,a0,24
//            printInteger(sizeof(MemUnit));
//            printString("\n");
            return (MemUnit *)((char*)cur + sizeof(MemUnit));
        }
    }
}
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret
            else mem_head = newUnit;
    80002774:	00009797          	auipc	a5,0x9
    80002778:	12d7b623          	sd	a3,300(a5) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    8000277c:	fe1ff06f          	j	8000275c <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            if (cur->prev) cur->prev->next = cur->next;
    80002780:	00853783          	ld	a5,8(a0)
    80002784:	02078263          	beqz	a5,800027a8 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80002788:	00053703          	ld	a4,0(a0)
    8000278c:	00e7b023          	sd	a4,0(a5)
            if (cur->next) cur->next->prev = cur->prev;
    80002790:	00053783          	ld	a5,0(a0)
    80002794:	00078663          	beqz	a5,800027a0 <_ZN15MemoryAllocator9mem_allocEm+0x104>
    80002798:	00853703          	ld	a4,8(a0)
    8000279c:	00e7b423          	sd	a4,8(a5)
            return (MemUnit *)((char*)cur + sizeof(MemUnit));
    800027a0:	01850513          	addi	a0,a0,24
    800027a4:	fc5ff06f          	j	80002768 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            else mem_head = cur->next;
    800027a8:	00053783          	ld	a5,0(a0)
    800027ac:	00009717          	auipc	a4,0x9
    800027b0:	0ef73a23          	sd	a5,244(a4) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    800027b4:	fddff06f          	j	80002790 <_ZN15MemoryAllocator9mem_allocEm+0xf4>

00000000800027b8 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit>:
    try_to_merge(ptr);
    try_to_merge(ptr->prev);
    return 0;
}

void MemoryAllocator::try_to_merge(MemUnit *cur) {
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00813423          	sd	s0,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    if(!cur) return;
    800027c4:	02050063          	beqz	a0,800027e4 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit+0x2c>

    if(cur->next && ((uint64*)cur + cur->size + sizeof(MemUnit) == (uint64*)(cur->next))) {
    800027c8:	00053703          	ld	a4,0(a0)
    800027cc:	00070c63          	beqz	a4,800027e4 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit+0x2c>
    800027d0:	01053683          	ld	a3,16(a0)
    800027d4:	01868793          	addi	a5,a3,24
    800027d8:	00379793          	slli	a5,a5,0x3
    800027dc:	00f507b3          	add	a5,a0,a5
    800027e0:	00f70863          	beq	a4,a5,800027f0 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit+0x38>
        cur->size = cur->size + cur->next->size + sizeof(MemUnit);
        cur->next = cur->next->next;
        if(cur->next) cur->next->prev = cur;
    }
}
    800027e4:	00813403          	ld	s0,8(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret
        cur->size = cur->size + cur->next->size + sizeof(MemUnit);
    800027f0:	01073783          	ld	a5,16(a4)
    800027f4:	00f686b3          	add	a3,a3,a5
    800027f8:	01868693          	addi	a3,a3,24
    800027fc:	00d53823          	sd	a3,16(a0)
        cur->next = cur->next->next;
    80002800:	00073783          	ld	a5,0(a4)
    80002804:	00f53023          	sd	a5,0(a0)
        if(cur->next) cur->next->prev = cur;
    80002808:	fc078ee3          	beqz	a5,800027e4 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit+0x2c>
    8000280c:	00a7b423          	sd	a0,8(a5)
    80002810:	fd5ff06f          	j	800027e4 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit+0x2c>

0000000080002814 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80002814:	0a050e63          	beqz	a0,800028d0 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
int MemoryAllocator::mem_free(void* addr) {
    80002818:	fe010113          	addi	sp,sp,-32
    8000281c:	00113c23          	sd	ra,24(sp)
    80002820:	00813823          	sd	s0,16(sp)
    80002824:	00913423          	sd	s1,8(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00050493          	mv	s1,a0
    if(!mem_head || (uint64*)addr < (uint64*)mem_head) cur = 0;
    80002830:	00009797          	auipc	a5,0x9
    80002834:	0707b783          	ld	a5,112(a5) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    80002838:	00078e63          	beqz	a5,80002854 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
    8000283c:	02f56063          	bltu	a0,a5,8000285c <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    else for(cur = mem_head; cur->next != nullptr && (uint64*)addr > (uint64*)(cur->next); cur = cur->next);
    80002840:	00078713          	mv	a4,a5
    80002844:	0007b783          	ld	a5,0(a5)
    80002848:	00078c63          	beqz	a5,80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    8000284c:	fe97eae3          	bltu	a5,s1,80002840 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    80002850:	0100006f          	j	80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    if(!mem_head || (uint64*)addr < (uint64*)mem_head) cur = 0;
    80002854:	00078713          	mv	a4,a5
    80002858:	0080006f          	j	80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    8000285c:	00000713          	li	a4,0
    MemUnit* ptr = (MemUnit*) ((char*)addr - sizeof(MemUnit));
    80002860:	fe848513          	addi	a0,s1,-24
    ptr->prev = cur;
    80002864:	fee4b823          	sd	a4,-16(s1)
    if(cur) ptr->next = cur->next;
    80002868:	04070663          	beqz	a4,800028b4 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000286c:	00073783          	ld	a5,0(a4)
    80002870:	fef4b423          	sd	a5,-24(s1)
    if (ptr->next) ptr->next->prev = ptr;
    80002874:	fe84b783          	ld	a5,-24(s1)
    80002878:	00078463          	beqz	a5,80002880 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    8000287c:	00a7b423          	sd	a0,8(a5)
    if (cur) cur->next = ptr;
    80002880:	04070263          	beqz	a4,800028c4 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002884:	00a73023          	sd	a0,0(a4)
    try_to_merge(ptr);
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	f30080e7          	jalr	-208(ra) # 800027b8 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit>
    try_to_merge(ptr->prev);
    80002890:	ff04b503          	ld	a0,-16(s1)
    80002894:	00000097          	auipc	ra,0x0
    80002898:	f24080e7          	jalr	-220(ra) # 800027b8 <_ZN15MemoryAllocator12try_to_mergeEP7MemUnit>
    return 0;
    8000289c:	00000513          	li	a0,0
}
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret
    else ptr->next = mem_head;
    800028b4:	00009797          	auipc	a5,0x9
    800028b8:	fec7b783          	ld	a5,-20(a5) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    800028bc:	fef4b423          	sd	a5,-24(s1)
    800028c0:	fb5ff06f          	j	80002874 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    else mem_head = ptr;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	fca7be23          	sd	a0,-36(a5) # 8000b8a0 <_ZN15MemoryAllocator8mem_headE>
    800028cc:	fbdff06f          	j	80002888 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    if(!addr) return -1;
    800028d0:	fff00513          	li	a0,-1
}
    800028d4:	00008067          	ret

00000000800028d8 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	bc4080e7          	jalr	-1084(ra) # 800014ac <_Z9mem_allocm>
}
    800028f0:	00813083          	ld	ra,8(sp)
    800028f4:	00013403          	ld	s0,0(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_Znam>:

void *operator new[](size_t n)
{
    80002900:	ff010113          	addi	sp,sp,-16
    80002904:	00113423          	sd	ra,8(sp)
    80002908:	00813023          	sd	s0,0(sp)
    8000290c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	b9c080e7          	jalr	-1124(ra) # 800014ac <_Z9mem_allocm>
}
    80002918:	00813083          	ld	ra,8(sp)
    8000291c:	00013403          	ld	s0,0(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	00813023          	sd	s0,0(sp)
    80002934:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	bac080e7          	jalr	-1108(ra) # 800014e4 <_Z8mem_freePv>
}
    80002940:	00813083          	ld	ra,8(sp)
    80002944:	00013403          	ld	s0,0(sp)
    80002948:	01010113          	addi	sp,sp,16
    8000294c:	00008067          	ret

0000000080002950 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	b84080e7          	jalr	-1148(ra) # 800014e4 <_Z8mem_freePv>
}
    80002968:	00813083          	ld	ra,8(sp)
    8000296c:	00013403          	ld	s0,0(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <_ZN6Thread3runEv>:

Thread::Thread() {
    thread_create_without_start(&this->myHandle, runWrapper, this);
}

void Thread::run() {    
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    //This is empty because it is supposed to be overriden
}
    80002984:	00813403          	ld	s0,8(sp)
    80002988:	01010113          	addi	sp,sp,16
    8000298c:	00008067          	ret

0000000080002990 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00113c23          	sd	ra,24(sp)
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	02010413          	addi	s0,sp,32
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	c8478793          	addi	a5,a5,-892 # 8000b628 <_ZTV6Thread+0x10>
    800029ac:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    800029b0:	00853483          	ld	s1,8(a0)
    800029b4:	02048063          	beqz	s1,800029d4 <_ZN6ThreadD1Ev+0x44>
    ~TCB() { delete[] stack; }
    800029b8:	0084b503          	ld	a0,8(s1)
    800029bc:	00050663          	beqz	a0,800029c8 <_ZN6ThreadD1Ev+0x38>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	f90080e7          	jalr	-112(ra) # 80002950 <_ZdaPv>
        MemoryAllocator::mem_free(ptr);
    800029c8:	00048513          	mv	a0,s1
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	e48080e7          	jalr	-440(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800029d4:	01813083          	ld	ra,24(sp)
    800029d8:	01013403          	ld	s0,16(sp)
    800029dc:	00813483          	ld	s1,8(sp)
    800029e0:	02010113          	addi	sp,sp,32
    800029e4:	00008067          	ret

00000000800029e8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
}
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	f90080e7          	jalr	-112(ra) # 80002990 <_ZN6ThreadD1Ev>
    80002a08:	00048513          	mv	a0,s1
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	f1c080e7          	jalr	-228(ra) # 80002928 <_ZdlPv>
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	02010113          	addi	sp,sp,32
    80002a24:	00008067          	ret

0000000080002a28 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00113423          	sd	ra,8(sp)
    80002a30:	00813023          	sd	s0,0(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00009797          	auipc	a5,0x9
    80002a3c:	c1878793          	addi	a5,a5,-1000 # 8000b650 <_ZTV9Semaphore+0x10>
    80002a40:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80002a44:	00853503          	ld	a0,8(a0)
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	ca8080e7          	jalr	-856(ra) # 800016f0 <_Z9sem_closeP3Sem>
}
    80002a50:	00813083          	ld	ra,8(sp)
    80002a54:	00013403          	ld	s0,0(sp)
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002a60:	fe010113          	addi	sp,sp,-32
    80002a64:	00113c23          	sd	ra,24(sp)
    80002a68:	00813823          	sd	s0,16(sp)
    80002a6c:	00913423          	sd	s1,8(sp)
    80002a70:	02010413          	addi	s0,sp,32
    80002a74:	00050493          	mv	s1,a0
}
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	fb0080e7          	jalr	-80(ra) # 80002a28 <_ZN9SemaphoreD1Ev>
    80002a80:	00048513          	mv	a0,s1
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	ea4080e7          	jalr	-348(ra) # 80002928 <_ZdlPv>
    80002a8c:	01813083          	ld	ra,24(sp)
    80002a90:	01013403          	ld	s0,16(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002aa0:	ff010113          	addi	sp,sp,-16
    80002aa4:	00113423          	sd	ra,8(sp)
    80002aa8:	00813023          	sd	s0,0(sp)
    80002aac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	bcc080e7          	jalr	-1076(ra) # 8000167c <_Z15thread_dispatchv>
}
    80002ab8:	00813083          	ld	ra,8(sp)
    80002abc:	00013403          	ld	s0,0(sp)
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret

0000000080002ac8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002ac8:	ff010113          	addi	sp,sp,-16
    80002acc:	00113423          	sd	ra,8(sp)
    80002ad0:	00813023          	sd	s0,0(sp)
    80002ad4:	01010413          	addi	s0,sp,16
    80002ad8:	00009797          	auipc	a5,0x9
    80002adc:	b5078793          	addi	a5,a5,-1200 # 8000b628 <_ZTV6Thread+0x10>
    80002ae0:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002ae4:	00850513          	addi	a0,a0,8
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	af0080e7          	jalr	-1296(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002af0:	00813083          	ld	ra,8(sp)
    80002af4:	00013403          	ld	s0,0(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_ZN6Thread4joinEv>:
void Thread::join() {
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00113423          	sd	ra,8(sp)
    80002b08:	00813023          	sd	s0,0(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80002b10:	00853503          	ld	a0,8(a0)
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	b88080e7          	jalr	-1144(ra) # 8000169c <_Z11thread_joinP3TCB>
}
    80002b1c:	00813083          	ld	ra,8(sp)
    80002b20:	00013403          	ld	s0,0(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN6Thread5startEv>:
int Thread::start() {
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    80002b3c:	00853503          	ld	a0,8(a0)
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	9f8080e7          	jalr	-1544(ra) # 80001538 <_Z12thread_startP3TCB>
}
    80002b48:	00000513          	li	a0,0
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret

0000000080002b5c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00113423          	sd	ra,8(sp)
    80002b64:	00813023          	sd	s0,0(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00009797          	auipc	a5,0x9
    80002b70:	abc78793          	addi	a5,a5,-1348 # 8000b628 <_ZTV6Thread+0x10>
    80002b74:	00f53023          	sd	a5,0(a0)
    thread_create_without_start(&this->myHandle, runWrapper, this);
    80002b78:	00050613          	mv	a2,a0
    80002b7c:	00000597          	auipc	a1,0x0
    80002b80:	12058593          	addi	a1,a1,288 # 80002c9c <_ZN6Thread10runWrapperEPv>
    80002b84:	00850513          	addi	a0,a0,8
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	9d4080e7          	jalr	-1580(ra) # 8000155c <_Z27thread_create_without_startPP3TCBPFvPvES2_>
}
    80002b90:	00813083          	ld	ra,8(sp)
    80002b94:	00013403          	ld	s0,0(sp)
    80002b98:	01010113          	addi	sp,sp,16
    80002b9c:	00008067          	ret

0000000080002ba0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00813423          	sd	s0,8(sp)
    80002ba8:	01010413          	addi	s0,sp,16
}
    80002bac:	00000513          	li	a0,0
    80002bb0:	00813403          	ld	s0,8(sp)
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	00813023          	sd	s0,0(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	a8478793          	addi	a5,a5,-1404 # 8000b650 <_ZTV9Semaphore+0x10>
    80002bd4:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80002bd8:	00850513          	addi	a0,a0,8
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	ae4080e7          	jalr	-1308(ra) # 800016c0 <_Z8sem_openPP3Semj>
}
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00113423          	sd	ra,8(sp)
    80002bfc:	00813023          	sd	s0,0(sp)
    80002c00:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002c04:	00853503          	ld	a0,8(a0)
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	b14080e7          	jalr	-1260(ra) # 8000171c <_Z8sem_waitP3Sem>
}
    80002c10:	00813083          	ld	ra,8(sp)
    80002c14:	00013403          	ld	s0,0(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret

0000000080002c20 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00113423          	sd	ra,8(sp)
    80002c28:	00813023          	sd	s0,0(sp)
    80002c2c:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002c30:	00853503          	ld	a0,8(a0)
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	b14080e7          	jalr	-1260(ra) # 80001748 <_Z10sem_signalP3Sem>
}
    80002c3c:	00813083          	ld	ra,8(sp)
    80002c40:	00013403          	ld	s0,0(sp)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00113423          	sd	ra,8(sp)
    80002c54:	00813023          	sd	s0,0(sp)
    80002c58:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	b40080e7          	jalr	-1216(ra) # 8000179c <_Z4putcc>
}
    80002c64:	00813083          	ld	ra,8(sp)
    80002c68:	00013403          	ld	s0,0(sp)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret

0000000080002c74 <_ZN7Console4getcEv>:

char Console::getc() {
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00113423          	sd	ra,8(sp)
    80002c7c:	00813023          	sd	s0,0(sp)
    80002c80:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	af0080e7          	jalr	-1296(ra) # 80001774 <_Z4getcv>
}
    80002c8c:	00813083          	ld	ra,8(sp)
    80002c90:	00013403          	ld	s0,0(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_ZN6Thread10runWrapperEPv>:
    void (*body)(void*);
    void* arg;

    //wrapper za poziv run() metode
    static void runWrapper(void* thread) {
        if(thread) {
    80002c9c:	02050863          	beqz	a0,80002ccc <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00113423          	sd	ra,8(sp)
    80002ca8:	00813023          	sd	s0,0(sp)
    80002cac:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002cb0:	00053783          	ld	a5,0(a0)
    80002cb4:	0107b783          	ld	a5,16(a5)
    80002cb8:	000780e7          	jalr	a5
        }
    }
    80002cbc:	00813083          	ld	ra,8(sp)
    80002cc0:	00013403          	ld	s0,0(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret
    80002ccc:	00008067          	ret

0000000080002cd0 <_ZN5Riscv10popSppSpieEv>:
#include "../test/printing.hpp"



void Riscv::popSppSpie()
{
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002cdc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ce0:	10200073          	sret
}
    80002ce4:	00813403          	ld	s0,8(sp)
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002cf0:	f9010113          	addi	sp,sp,-112
    80002cf4:	06113423          	sd	ra,104(sp)
    80002cf8:	06813023          	sd	s0,96(sp)
    80002cfc:	04913c23          	sd	s1,88(sp)
    80002d00:	07010413          	addi	s0,sp,112
    uint64 volatile a4;
    __asm__ volatile ("ld %0, 14*8(fp)" : "=r"(a4));
    80002d04:	07043783          	ld	a5,112(s0)
    80002d08:	fcf43c23          	sd	a5,-40(s0)
    uint64 volatile a3;
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80002d0c:	06843783          	ld	a5,104(s0)
    80002d10:	fcf43823          	sd	a5,-48(s0)
    uint64 volatile a2;
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80002d14:	06043783          	ld	a5,96(s0)
    80002d18:	fcf43423          	sd	a5,-56(s0)
    uint64 volatile a1;
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80002d1c:	05843783          	ld	a5,88(s0)
    80002d20:	fcf43023          	sd	a5,-64(s0)
    uint64 volatile a0;
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80002d24:	05043783          	ld	a5,80(s0)
    80002d28:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002d2c:	142027f3          	csrr	a5,scause
    80002d30:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002d34:	fa043483          	ld	s1,-96(s0)


    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002d38:	ff848713          	addi	a4,s1,-8
    80002d3c:	00100793          	li	a5,1
    80002d40:	2ce7ea63          	bltu	a5,a4,80003014 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d44:	141027f3          	csrr	a5,sepc
    80002d48:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002d4c:	fb043783          	ld	a5,-80(s0)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
    80002d50:	00478793          	addi	a5,a5,4
    80002d54:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d58:	100027f3          	csrr	a5,sstatus
    80002d5c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002d60:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sstatus = r_sstatus();
    80002d64:	f8f43c23          	sd	a5,-104(s0)

        if(a0 == 0x01){ // void* mem_alloc (size_t size);
    80002d68:	fb843703          	ld	a4,-72(s0)
    80002d6c:	00100793          	li	a5,1
    80002d70:	0cf70263          	beq	a4,a5,80002e34 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            void* tmp = MemoryAllocator::mem_alloc((size_t) a1);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x02){ // int mem_free (void*);
    80002d74:	fb843703          	ld	a4,-72(s0)
    80002d78:	00200793          	li	a5,2
    80002d7c:	0ef70663          	beq	a4,a5,80002e68 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            int tmp = MemoryAllocator::mem_free((void*) a1);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x08){ //int getThreadId();
    80002d80:	fb843703          	ld	a4,-72(s0)
    80002d84:	00800793          	li	a5,8
    80002d88:	0ef70a63          	beq	a4,a5,80002e7c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            int tmp = TCB::running->getMyId();
            TCB::dispatch();
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x09){ //void thread_start(TCB* tcb);
    80002d8c:	fb843703          	ld	a4,-72(s0)
    80002d90:	00900793          	li	a5,9
    80002d94:	10f70463          	beq	a4,a5,80002e9c <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
            TCB::startThread((TCB*)a1);
        }

        else if (a0 == 0x10){ // int thread_create_without_starting (thread_t* handle, void(*start_routine)(void*), void* arg) , void* stack_space
    80002d98:	fb843703          	ld	a4,-72(s0)
    80002d9c:	01000793          	li	a5,16
    80002da0:	10f70663          	beq	a4,a5,80002eac <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            TCB** tmp = (TCB**)a1;
            *tmp = TCB::createThreadWithoutStarting((TCB::Body)a2, (void*)a3, (void*) a4);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
        }

        else if (a0 == 0x11){ // int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) , void* stack_space
    80002da4:	fb843703          	ld	a4,-72(s0)
    80002da8:	01100793          	li	a5,17
    80002dac:	12f70a63          	beq	a4,a5,80002ee0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            TCB** tmp = (TCB**)a1;
            *tmp = TCB::createThread((TCB::Body)a2, (void*)a3, (void*) a4);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
        }
        else if (a0 == 0x12){ // int thread_exit ();
    80002db0:	fb843703          	ld	a4,-72(s0)
    80002db4:	01200793          	li	a5,18
    80002db8:	14f70e63          	beq	a4,a5,80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
            TCB::running->setFinished(true);
            TCB::dispatch();
            __asm__ volatile ("li t0, 0");
            __asm__ volatile ("sw t0, 80(x8)");
        }
        else if (a0 == 0x13){ // void thread_dispatch ();
    80002dbc:	fb843703          	ld	a4,-72(s0)
    80002dc0:	01300793          	li	a5,19
    80002dc4:	16f70c63          	beq	a4,a5,80002f3c <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
            TCB::dispatch();
        }
        else if (a0 == 0x14){ // void thread_join ( thread_t handle );
    80002dc8:	fb843703          	ld	a4,-72(s0)
    80002dcc:	01400793          	li	a5,20
    80002dd0:	16f70c63          	beq	a4,a5,80002f48 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
            thread_t handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            TCB::join(handle);
            TCB::dispatch();
        }
        else if (a0 == 0x21){ // int sem_open(sem_t* handle, unsigned init);
    80002dd4:	fb843703          	ld	a4,-72(s0)
    80002dd8:	02100793          	li	a5,33
    80002ddc:	18f70263          	beq	a4,a5,80002f60 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
            Sem** semHandle = (Sem**) a1;
            //*semHandle = Sem::createSemaphore((unsigned int) a2);
            *semHandle = Sem::open((unsigned int) a2);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*semHandle != nullptr ? 0 : -1)));
        }
        else if (a0 == 0x22){ //int sem_close(sem_t handle);
    80002de0:	fb843703          	ld	a4,-72(s0)
    80002de4:	02200793          	li	a5,34
    80002de8:	1af70463          	beq	a4,a5,80002f90 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x23){ //int sem_wait(sem_t id);
    80002dec:	fb843703          	ld	a4,-72(s0)
    80002df0:	02300793          	li	a5,35
    80002df4:	1af70e63          	beq	a4,a5,80002fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x2c0>
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x24){ //int sem_signal(sem_t id);
    80002df8:	fb843703          	ld	a4,-72(s0)
    80002dfc:	02400793          	li	a5,36
    80002e00:	1cf70863          	beq	a4,a5,80002fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x41){
    80002e04:	fb843703          	ld	a4,-72(s0)
    80002e08:	04100793          	li	a5,65
    80002e0c:	1ef70263          	beq	a4,a5,80002ff0 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
            char tmp = __getc();
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }
        else if (a0 == 0x42){
    80002e10:	fb843703          	ld	a4,-72(s0)
    80002e14:	04200793          	li	a5,66
    80002e18:	1ef70463          	beq	a4,a5,80003000 <_ZN5Riscv20handleSupervisorTrapEv+0x310>
            char tmp = (char) a1;
            __putc(tmp);
        }
        else if (a0 == 0x043){
    80002e1c:	fb843703          	ld	a4,-72(s0)
    80002e20:	04300793          	li	a5,67
    80002e24:	02f71063          	bne	a4,a5,80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::dispatch();
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	68c080e7          	jalr	1676(ra) # 800024b4 <_ZN3TCB8dispatchEv>
    80002e30:	0140006f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            void* tmp = MemoryAllocator::mem_alloc((size_t) a1);
    80002e34:	fc043503          	ld	a0,-64(s0)
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	864080e7          	jalr	-1948(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
    80002e40:	04a43823          	sd	a0,80(s0)
        }

//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
    80002e44:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002e48:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002e4c:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e50:	14179073          	csrw	sepc,a5
        printString("Error - Scause:");
        printInt(scause);
        printString("\n");
    }

}
    80002e54:	06813083          	ld	ra,104(sp)
    80002e58:	06013403          	ld	s0,96(sp)
    80002e5c:	05813483          	ld	s1,88(sp)
    80002e60:	07010113          	addi	sp,sp,112
    80002e64:	00008067          	ret
            int tmp = MemoryAllocator::mem_free((void*) a1);
    80002e68:	fc043503          	ld	a0,-64(s0)
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	9a8080e7          	jalr	-1624(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
    80002e74:	04a43823          	sd	a0,80(s0)
    80002e78:	fcdff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            int tmp = TCB::running->getMyId();
    80002e7c:	00009797          	auipc	a5,0x9
    80002e80:	9ac7b783          	ld	a5,-1620(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e84:	0007b783          	ld	a5,0(a5)
    int getMyId() const { return myId; }
    80002e88:	0407a483          	lw	s1,64(a5)
            TCB::dispatch();
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	628080e7          	jalr	1576(ra) # 800024b4 <_ZN3TCB8dispatchEv>
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
    80002e94:	04943823          	sd	s1,80(s0)
    80002e98:	fadff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::startThread((TCB*)a1);
    80002e9c:	fc043503          	ld	a0,-64(s0)
        Scheduler::put(tcbToStart);
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	29c080e7          	jalr	668(ra) # 8000313c <_ZN9Scheduler3putEP3TCB>
    }
    80002ea8:	f9dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB** tmp = (TCB**)a1;
    80002eac:	fc043483          	ld	s1,-64(s0)
            *tmp = TCB::createThreadWithoutStarting((TCB::Body)a2, (void*)a3, (void*) a4);
    80002eb0:	fc843503          	ld	a0,-56(s0)
    80002eb4:	fd043583          	ld	a1,-48(s0)
    80002eb8:	fd843603          	ld	a2,-40(s0)
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	508080e7          	jalr	1288(ra) # 800023c4 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_S0_>
    80002ec4:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
    80002ec8:	00050863          	beqz	a0,80002ed8 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    80002ecc:	00000793          	li	a5,0
    80002ed0:	04f43823          	sd	a5,80(s0)
    80002ed4:	f71ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002ed8:	fff00793          	li	a5,-1
    80002edc:	ff5ff06f          	j	80002ed0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
            TCB** tmp = (TCB**)a1;
    80002ee0:	fc043483          	ld	s1,-64(s0)
            *tmp = TCB::createThread((TCB::Body)a2, (void*)a3, (void*) a4);
    80002ee4:	fc843503          	ld	a0,-56(s0)
    80002ee8:	fd043583          	ld	a1,-48(s0)
    80002eec:	fd843603          	ld	a2,-40(s0)
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	3ec080e7          	jalr	1004(ra) # 800022dc <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002ef8:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
    80002efc:	00050863          	beqz	a0,80002f0c <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
    80002f00:	00000793          	li	a5,0
    80002f04:	04f43823          	sd	a5,80(s0)
    80002f08:	f3dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002f0c:	fff00793          	li	a5,-1
    80002f10:	ff5ff06f          	j	80002f04 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            TCB::running->setFinished(true);
    80002f14:	00009797          	auipc	a5,0x9
    80002f18:	9147b783          	ld	a5,-1772(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002f1c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002f20:	00100713          	li	a4,1
    80002f24:	02e78023          	sb	a4,32(a5)
            TCB::dispatch();
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	58c080e7          	jalr	1420(ra) # 800024b4 <_ZN3TCB8dispatchEv>
            __asm__ volatile ("li t0, 0");
    80002f30:	00000293          	li	t0,0
            __asm__ volatile ("sw t0, 80(x8)");
    80002f34:	04542823          	sw	t0,80(s0)
    80002f38:	f0dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            TCB::dispatch();
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	578080e7          	jalr	1400(ra) # 800024b4 <_ZN3TCB8dispatchEv>
    80002f44:	f01ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002f48:	00058513          	mv	a0,a1
            TCB::join(handle);
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	5f4080e7          	jalr	1524(ra) # 80002540 <_ZN3TCB4joinEPS_>
            TCB::dispatch();
    80002f54:	fffff097          	auipc	ra,0xfffff
    80002f58:	560080e7          	jalr	1376(ra) # 800024b4 <_ZN3TCB8dispatchEv>
    80002f5c:	ee9ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            Sem** semHandle = (Sem**) a1;
    80002f60:	fc043483          	ld	s1,-64(s0)
            *semHandle = Sem::open((unsigned int) a2);
    80002f64:	fc843503          	ld	a0,-56(s0)
    80002f68:	0005051b          	sext.w	a0,a0
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	cd0080e7          	jalr	-816(ra) # 80001c3c <_ZN3Sem4openEj>
    80002f74:	00a4b023          	sd	a0,0(s1)
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*semHandle != nullptr ? 0 : -1)));
    80002f78:	00050863          	beqz	a0,80002f88 <_ZN5Riscv20handleSupervisorTrapEv+0x298>
    80002f7c:	00000793          	li	a5,0
    80002f80:	04f43823          	sd	a5,80(s0)
    80002f84:	ec1ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002f88:	fff00793          	li	a5,-1
    80002f8c:	ff5ff06f          	j	80002f80 <_ZN5Riscv20handleSupervisorTrapEv+0x290>
            Sem* semHandlePtr= (Sem*) a1;
    80002f90:	fc043503          	ld	a0,-64(s0)
            if(semHandlePtr!= nullptr) {
    80002f94:	00051863          	bnez	a0,80002fa4 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
            else tmp = -2;
    80002f98:	ffe00513          	li	a0,-2
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
    80002f9c:	04a43823          	sd	a0,80(s0)
    80002fa0:	ea5ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                tmp = semHandlePtr->close();
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	ce0080e7          	jalr	-800(ra) # 80001c84 <_ZN3Sem5closeEv>
    80002fac:	ff1ff06f          	j	80002f9c <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
            Sem* semHandlePtr= (Sem*) a1;
    80002fb0:	fc043503          	ld	a0,-64(s0)
            if(semHandlePtr!= nullptr) {
    80002fb4:	00051863          	bnez	a0,80002fc4 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
            else tmp = -2;
    80002fb8:	ffe00513          	li	a0,-2
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
    80002fbc:	04a43823          	sd	a0,80(s0)
    80002fc0:	e85ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                tmp = semHandlePtr->wait();
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	ddc080e7          	jalr	-548(ra) # 80001da0 <_ZN3Sem4waitEv>
    80002fcc:	ff1ff06f          	j	80002fbc <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
            Sem* semHandlePtr= (Sem*) a1;
    80002fd0:	fc043503          	ld	a0,-64(s0)
            if(semHandlePtr!= nullptr) {
    80002fd4:	00051863          	bnez	a0,80002fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
            else tmp = -2;
    80002fd8:	ffe00513          	li	a0,-2
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
    80002fdc:	04a43823          	sd	a0,80(s0)
    80002fe0:	e65ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
                tmp = semHandlePtr->signal();
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	e9c080e7          	jalr	-356(ra) # 80001e80 <_ZN3Sem6signalEv>
    80002fec:	ff1ff06f          	j	80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x2ec>
            char tmp = __getc();
    80002ff0:	00006097          	auipc	ra,0x6
    80002ff4:	a38080e7          	jalr	-1480(ra) # 80008a28 <__getc>
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
    80002ff8:	04a43823          	sd	a0,80(s0)
    80002ffc:	e49ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            char tmp = (char) a1;
    80003000:	fc043503          	ld	a0,-64(s0)
            __putc(tmp);
    80003004:	0ff57513          	andi	a0,a0,255
    80003008:	00006097          	auipc	ra,0x6
    8000300c:	9e4080e7          	jalr	-1564(ra) # 800089ec <__putc>
    80003010:	e35ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        printString("Error - Scause:");
    80003014:	00006517          	auipc	a0,0x6
    80003018:	22c50513          	addi	a0,a0,556 # 80009240 <CONSOLE_STATUS+0x230>
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	6c8080e7          	jalr	1736(ra) # 800056e4 <_Z11printStringPKc>
        printInt(scause);
    80003024:	00000613          	li	a2,0
    80003028:	00a00593          	li	a1,10
    8000302c:	0004851b          	sext.w	a0,s1
    80003030:	00003097          	auipc	ra,0x3
    80003034:	864080e7          	jalr	-1948(ra) # 80005894 <_Z8printIntiii>
        printString("\n");
    80003038:	00006517          	auipc	a0,0x6
    8000303c:	17050513          	addi	a0,a0,368 # 800091a8 <CONSOLE_STATUS+0x198>
    80003040:	00002097          	auipc	ra,0x2
    80003044:	6a4080e7          	jalr	1700(ra) # 800056e4 <_Z11printStringPKc>
}
    80003048:	e0dff06f          	j	80002e54 <_ZN5Riscv20handleSupervisorTrapEv+0x164>

000000008000304c <_ZN5Riscv22handleConsoleInterruptEv>:
void Riscv::handleConsoleInterrupt() {
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	01010413          	addi	s0,sp,16
    console_handler();
    8000305c:	00006097          	auipc	ra,0x6
    80003060:	a04080e7          	jalr	-1532(ra) # 80008a60 <console_handler>
}
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00813423          	sd	s0,8(sp)
    8000307c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003080:	00200793          	li	a5,2
    80003084:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80003088:	00813403          	ld	s0,8(sp)
    8000308c:	01010113          	addi	sp,sp,16
    80003090:	00008067          	ret

0000000080003094 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80003094:	ff010113          	addi	sp,sp,-16
    80003098:	00813423          	sd	s0,8(sp)
    8000309c:	01010413          	addi	s0,sp,16
    800030a0:	00100793          	li	a5,1
    800030a4:	00f50863          	beq	a0,a5,800030b4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret
    800030b4:	000107b7          	lui	a5,0x10
    800030b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030bc:	fef596e3          	bne	a1,a5,800030a8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800030c0:	00008797          	auipc	a5,0x8
    800030c4:	7e878793          	addi	a5,a5,2024 # 8000b8a8 <_ZN9Scheduler16readyThreadQueueE>
    800030c8:	0007b023          	sd	zero,0(a5)
    800030cc:	0007b423          	sd	zero,8(a5)
    800030d0:	fd9ff06f          	j	800030a8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800030d4 <_ZN9Scheduler3getEv>:
{
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800030e8:	00008517          	auipc	a0,0x8
    800030ec:	7c053503          	ld	a0,1984(a0) # 8000b8a8 <_ZN9Scheduler16readyThreadQueueE>
    800030f0:	04050263          	beqz	a0,80003134 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800030f4:	00853783          	ld	a5,8(a0)
    800030f8:	00008717          	auipc	a4,0x8
    800030fc:	7af73823          	sd	a5,1968(a4) # 8000b8a8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003100:	02078463          	beqz	a5,80003128 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80003104:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	70c080e7          	jalr	1804(ra) # 80002814 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003110:	00048513          	mv	a0,s1
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	02010113          	addi	sp,sp,32
    80003124:	00008067          	ret
        if (!head) { tail = 0; }
    80003128:	00008797          	auipc	a5,0x8
    8000312c:	7807b423          	sd	zero,1928(a5) # 8000b8b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003130:	fd5ff06f          	j	80003104 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003134:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003138:	fd9ff06f          	j	80003110 <_ZN9Scheduler3getEv+0x3c>

000000008000313c <_ZN9Scheduler3putEP3TCB>:
{
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00113c23          	sd	ra,24(sp)
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80003154:	01000513          	li	a0,16
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	544080e7          	jalr	1348(ra) # 8000269c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003160:	00953023          	sd	s1,0(a0)
    80003164:	00053423          	sd	zero,8(a0)
        if (tail)
    80003168:	00008797          	auipc	a5,0x8
    8000316c:	7487b783          	ld	a5,1864(a5) # 8000b8b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003170:	02078263          	beqz	a5,80003194 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003174:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003178:	00008797          	auipc	a5,0x8
    8000317c:	72a7bc23          	sd	a0,1848(a5) # 8000b8b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00813483          	ld	s1,8(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret
            head = tail = elem;
    80003194:	00008797          	auipc	a5,0x8
    80003198:	71478793          	addi	a5,a5,1812 # 8000b8a8 <_ZN9Scheduler16readyThreadQueueE>
    8000319c:	00a7b423          	sd	a0,8(a5)
    800031a0:	00a7b023          	sd	a0,0(a5)
    800031a4:	fddff06f          	j	80003180 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800031a8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00113423          	sd	ra,8(sp)
    800031b0:	00813023          	sd	s0,0(sp)
    800031b4:	01010413          	addi	s0,sp,16
    800031b8:	000105b7          	lui	a1,0x10
    800031bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800031c0:	00100513          	li	a0,1
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	ed0080e7          	jalr	-304(ra) # 80003094 <_Z41__static_initialization_and_destruction_0ii>
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret

00000000800031dc <_Z12printIntegerm>:
//    }
//    //Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
//}
//
void printInteger(uint64 integer)
{
    800031dc:	fd010113          	addi	sp,sp,-48
    800031e0:	02113423          	sd	ra,40(sp)
    800031e4:	02813023          	sd	s0,32(sp)
    800031e8:	00913c23          	sd	s1,24(sp)
    800031ec:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800031f0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800031f4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800031f8:	00a00613          	li	a2,10
    800031fc:	02c5773b          	remuw	a4,a0,a2
    80003200:	02071693          	slli	a3,a4,0x20
    80003204:	0206d693          	srli	a3,a3,0x20
    80003208:	00006717          	auipc	a4,0x6
    8000320c:	04870713          	addi	a4,a4,72 # 80009250 <_ZZ12printIntegermE6digits>
    80003210:	00d70733          	add	a4,a4,a3
    80003214:	00074703          	lbu	a4,0(a4)
    80003218:	fe040693          	addi	a3,s0,-32
    8000321c:	009687b3          	add	a5,a3,s1
    80003220:	0014849b          	addiw	s1,s1,1
    80003224:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80003228:	0005071b          	sext.w	a4,a0
    8000322c:	02c5553b          	divuw	a0,a0,a2
    80003230:	00900793          	li	a5,9
    80003234:	fce7e2e3          	bltu	a5,a4,800031f8 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80003238:	fff4849b          	addiw	s1,s1,-1
    8000323c:	0004ce63          	bltz	s1,80003258 <_Z12printIntegerm+0x7c>
    80003240:	fe040793          	addi	a5,s0,-32
    80003244:	009787b3          	add	a5,a5,s1
    80003248:	ff07c503          	lbu	a0,-16(a5)
    8000324c:	00005097          	auipc	ra,0x5
    80003250:	7a0080e7          	jalr	1952(ra) # 800089ec <__putc>
    80003254:	fe5ff06f          	j	80003238 <_Z12printIntegerm+0x5c>
//    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003258:	02813083          	ld	ra,40(sp)
    8000325c:	02013403          	ld	s0,32(sp)
    80003260:	01813483          	ld	s1,24(sp)
    80003264:	03010113          	addi	sp,sp,48
    80003268:	00008067          	ret

000000008000326c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	01213023          	sd	s2,0(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003288:	00000913          	li	s2,0
    8000328c:	00c0006f          	j	80003298 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	3ec080e7          	jalr	1004(ra) # 8000167c <_Z15thread_dispatchv>
    while ((key = getc()) != 'A') {
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	4dc080e7          	jalr	1244(ra) # 80001774 <_Z4getcv>
    800032a0:	0005059b          	sext.w	a1,a0
    800032a4:	04100793          	li	a5,65
    800032a8:	02f58a63          	beq	a1,a5,800032dc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800032ac:	0084b503          	ld	a0,8(s1)
    800032b0:	00003097          	auipc	ra,0x3
    800032b4:	3f4080e7          	jalr	1012(ra) # 800066a4 <_ZN6Buffer3putEi>
        i++;
    800032b8:	0019071b          	addiw	a4,s2,1
    800032bc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800032c0:	0004a683          	lw	a3,0(s1)
    800032c4:	0026979b          	slliw	a5,a3,0x2
    800032c8:	00d787bb          	addw	a5,a5,a3
    800032cc:	0017979b          	slliw	a5,a5,0x1
    800032d0:	02f767bb          	remw	a5,a4,a5
    800032d4:	fc0792e3          	bnez	a5,80003298 <_ZL16producerKeyboardPv+0x2c>
    800032d8:	fb9ff06f          	j	80003290 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800032dc:	00100793          	li	a5,1
    800032e0:	00008717          	auipc	a4,0x8
    800032e4:	5cf72c23          	sw	a5,1496(a4) # 8000b8b8 <_ZL9threadEnd>
    data->buffer->put('!');
    800032e8:	02100593          	li	a1,33
    800032ec:	0084b503          	ld	a0,8(s1)
    800032f0:	00003097          	auipc	ra,0x3
    800032f4:	3b4080e7          	jalr	948(ra) # 800066a4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800032f8:	0104b503          	ld	a0,16(s1)
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	44c080e7          	jalr	1100(ra) # 80001748 <_Z10sem_signalP3Sem>
}
    80003304:	01813083          	ld	ra,24(sp)
    80003308:	01013403          	ld	s0,16(sp)
    8000330c:	00813483          	ld	s1,8(sp)
    80003310:	00013903          	ld	s2,0(sp)
    80003314:	02010113          	addi	sp,sp,32
    80003318:	00008067          	ret

000000008000331c <_ZL8producerPv>:

static void producer(void *arg) {
    8000331c:	fe010113          	addi	sp,sp,-32
    80003320:	00113c23          	sd	ra,24(sp)
    80003324:	00813823          	sd	s0,16(sp)
    80003328:	00913423          	sd	s1,8(sp)
    8000332c:	01213023          	sd	s2,0(sp)
    80003330:	02010413          	addi	s0,sp,32
    80003334:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003338:	00000913          	li	s2,0
    8000333c:	00c0006f          	j	80003348 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	33c080e7          	jalr	828(ra) # 8000167c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003348:	00008797          	auipc	a5,0x8
    8000334c:	5707a783          	lw	a5,1392(a5) # 8000b8b8 <_ZL9threadEnd>
    80003350:	02079e63          	bnez	a5,8000338c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003354:	0004a583          	lw	a1,0(s1)
    80003358:	0305859b          	addiw	a1,a1,48
    8000335c:	0084b503          	ld	a0,8(s1)
    80003360:	00003097          	auipc	ra,0x3
    80003364:	344080e7          	jalr	836(ra) # 800066a4 <_ZN6Buffer3putEi>
        i++;
    80003368:	0019071b          	addiw	a4,s2,1
    8000336c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003370:	0004a683          	lw	a3,0(s1)
    80003374:	0026979b          	slliw	a5,a3,0x2
    80003378:	00d787bb          	addw	a5,a5,a3
    8000337c:	0017979b          	slliw	a5,a5,0x1
    80003380:	02f767bb          	remw	a5,a4,a5
    80003384:	fc0792e3          	bnez	a5,80003348 <_ZL8producerPv+0x2c>
    80003388:	fb9ff06f          	j	80003340 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000338c:	0104b503          	ld	a0,16(s1)
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	3b8080e7          	jalr	952(ra) # 80001748 <_Z10sem_signalP3Sem>
}
    80003398:	01813083          	ld	ra,24(sp)
    8000339c:	01013403          	ld	s0,16(sp)
    800033a0:	00813483          	ld	s1,8(sp)
    800033a4:	00013903          	ld	s2,0(sp)
    800033a8:	02010113          	addi	sp,sp,32
    800033ac:	00008067          	ret

00000000800033b0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800033b0:	fd010113          	addi	sp,sp,-48
    800033b4:	02113423          	sd	ra,40(sp)
    800033b8:	02813023          	sd	s0,32(sp)
    800033bc:	00913c23          	sd	s1,24(sp)
    800033c0:	01213823          	sd	s2,16(sp)
    800033c4:	01313423          	sd	s3,8(sp)
    800033c8:	03010413          	addi	s0,sp,48
    800033cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033d0:	00000993          	li	s3,0
    800033d4:	01c0006f          	j	800033f0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	2a4080e7          	jalr	676(ra) # 8000167c <_Z15thread_dispatchv>
    800033e0:	0500006f          	j	80003430 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800033e4:	00a00513          	li	a0,10
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	3b4080e7          	jalr	948(ra) # 8000179c <_Z4putcc>
    while (!threadEnd) {
    800033f0:	00008797          	auipc	a5,0x8
    800033f4:	4c87a783          	lw	a5,1224(a5) # 8000b8b8 <_ZL9threadEnd>
    800033f8:	06079063          	bnez	a5,80003458 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800033fc:	00893503          	ld	a0,8(s2)
    80003400:	00003097          	auipc	ra,0x3
    80003404:	334080e7          	jalr	820(ra) # 80006734 <_ZN6Buffer3getEv>
        i++;
    80003408:	0019849b          	addiw	s1,s3,1
    8000340c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003410:	0ff57513          	andi	a0,a0,255
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	388080e7          	jalr	904(ra) # 8000179c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000341c:	00092703          	lw	a4,0(s2)
    80003420:	0027179b          	slliw	a5,a4,0x2
    80003424:	00e787bb          	addw	a5,a5,a4
    80003428:	02f4e7bb          	remw	a5,s1,a5
    8000342c:	fa0786e3          	beqz	a5,800033d8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003430:	05000793          	li	a5,80
    80003434:	02f4e4bb          	remw	s1,s1,a5
    80003438:	fa049ce3          	bnez	s1,800033f0 <_ZL8consumerPv+0x40>
    8000343c:	fa9ff06f          	j	800033e4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003440:	00893503          	ld	a0,8(s2)
    80003444:	00003097          	auipc	ra,0x3
    80003448:	2f0080e7          	jalr	752(ra) # 80006734 <_ZN6Buffer3getEv>
        putc(key);
    8000344c:	0ff57513          	andi	a0,a0,255
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	34c080e7          	jalr	844(ra) # 8000179c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003458:	00893503          	ld	a0,8(s2)
    8000345c:	00003097          	auipc	ra,0x3
    80003460:	364080e7          	jalr	868(ra) # 800067c0 <_ZN6Buffer6getCntEv>
    80003464:	fca04ee3          	bgtz	a0,80003440 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003468:	01093503          	ld	a0,16(s2)
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	2dc080e7          	jalr	732(ra) # 80001748 <_Z10sem_signalP3Sem>
}
    80003474:	02813083          	ld	ra,40(sp)
    80003478:	02013403          	ld	s0,32(sp)
    8000347c:	01813483          	ld	s1,24(sp)
    80003480:	01013903          	ld	s2,16(sp)
    80003484:	00813983          	ld	s3,8(sp)
    80003488:	03010113          	addi	sp,sp,48
    8000348c:	00008067          	ret

0000000080003490 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003490:	f9010113          	addi	sp,sp,-112
    80003494:	06113423          	sd	ra,104(sp)
    80003498:	06813023          	sd	s0,96(sp)
    8000349c:	04913c23          	sd	s1,88(sp)
    800034a0:	05213823          	sd	s2,80(sp)
    800034a4:	05313423          	sd	s3,72(sp)
    800034a8:	05413023          	sd	s4,64(sp)
    800034ac:	03513c23          	sd	s5,56(sp)
    800034b0:	03613823          	sd	s6,48(sp)
    800034b4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800034b8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800034bc:	00006517          	auipc	a0,0x6
    800034c0:	da450513          	addi	a0,a0,-604 # 80009260 <_ZZ12printIntegermE6digits+0x10>
    800034c4:	00002097          	auipc	ra,0x2
    800034c8:	220080e7          	jalr	544(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    800034cc:	01e00593          	li	a1,30
    800034d0:	fa040493          	addi	s1,s0,-96
    800034d4:	00048513          	mv	a0,s1
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	294080e7          	jalr	660(ra) # 8000576c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	360080e7          	jalr	864(ra) # 80005844 <_Z11stringToIntPKc>
    800034ec:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800034f0:	00006517          	auipc	a0,0x6
    800034f4:	d9050513          	addi	a0,a0,-624 # 80009280 <_ZZ12printIntegermE6digits+0x30>
    800034f8:	00002097          	auipc	ra,0x2
    800034fc:	1ec080e7          	jalr	492(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    80003500:	01e00593          	li	a1,30
    80003504:	00048513          	mv	a0,s1
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	264080e7          	jalr	612(ra) # 8000576c <_Z9getStringPci>
    n = stringToInt(input);
    80003510:	00048513          	mv	a0,s1
    80003514:	00002097          	auipc	ra,0x2
    80003518:	330080e7          	jalr	816(ra) # 80005844 <_Z11stringToIntPKc>
    8000351c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003520:	00006517          	auipc	a0,0x6
    80003524:	d8050513          	addi	a0,a0,-640 # 800092a0 <_ZZ12printIntegermE6digits+0x50>
    80003528:	00002097          	auipc	ra,0x2
    8000352c:	1bc080e7          	jalr	444(ra) # 800056e4 <_Z11printStringPKc>
    80003530:	00000613          	li	a2,0
    80003534:	00a00593          	li	a1,10
    80003538:	00090513          	mv	a0,s2
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	358080e7          	jalr	856(ra) # 80005894 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003544:	00006517          	auipc	a0,0x6
    80003548:	d7450513          	addi	a0,a0,-652 # 800092b8 <_ZZ12printIntegermE6digits+0x68>
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	198080e7          	jalr	408(ra) # 800056e4 <_Z11printStringPKc>
    80003554:	00000613          	li	a2,0
    80003558:	00a00593          	li	a1,10
    8000355c:	00048513          	mv	a0,s1
    80003560:	00002097          	auipc	ra,0x2
    80003564:	334080e7          	jalr	820(ra) # 80005894 <_Z8printIntiii>
    printString(".\n");
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	b6850513          	addi	a0,a0,-1176 # 800090d0 <CONSOLE_STATUS+0xc0>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	174080e7          	jalr	372(ra) # 800056e4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003578:	0324c463          	blt	s1,s2,800035a0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000357c:	03205c63          	blez	s2,800035b4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003580:	03800513          	li	a0,56
    80003584:	fffff097          	auipc	ra,0xfffff
    80003588:	354080e7          	jalr	852(ra) # 800028d8 <_Znwm>
    8000358c:	00050a13          	mv	s4,a0
    80003590:	00048593          	mv	a1,s1
    80003594:	00003097          	auipc	ra,0x3
    80003598:	074080e7          	jalr	116(ra) # 80006608 <_ZN6BufferC1Ei>
    8000359c:	0300006f          	j	800035cc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	d3050513          	addi	a0,a0,-720 # 800092d0 <_ZZ12printIntegermE6digits+0x80>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	13c080e7          	jalr	316(ra) # 800056e4 <_Z11printStringPKc>
        return;
    800035b0:	0140006f          	j	800035c4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	d5c50513          	addi	a0,a0,-676 # 80009310 <_ZZ12printIntegermE6digits+0xc0>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	128080e7          	jalr	296(ra) # 800056e4 <_Z11printStringPKc>
        return;
    800035c4:	000b0113          	mv	sp,s6
    800035c8:	1500006f          	j	80003718 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800035cc:	00000593          	li	a1,0
    800035d0:	00008517          	auipc	a0,0x8
    800035d4:	2f050513          	addi	a0,a0,752 # 8000b8c0 <_ZL10waitForAll>
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	0e8080e7          	jalr	232(ra) # 800016c0 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800035e0:	00391793          	slli	a5,s2,0x3
    800035e4:	00f78793          	addi	a5,a5,15
    800035e8:	ff07f793          	andi	a5,a5,-16
    800035ec:	40f10133          	sub	sp,sp,a5
    800035f0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800035f4:	0019071b          	addiw	a4,s2,1
    800035f8:	00171793          	slli	a5,a4,0x1
    800035fc:	00e787b3          	add	a5,a5,a4
    80003600:	00379793          	slli	a5,a5,0x3
    80003604:	00f78793          	addi	a5,a5,15
    80003608:	ff07f793          	andi	a5,a5,-16
    8000360c:	40f10133          	sub	sp,sp,a5
    80003610:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003614:	00191613          	slli	a2,s2,0x1
    80003618:	012607b3          	add	a5,a2,s2
    8000361c:	00379793          	slli	a5,a5,0x3
    80003620:	00f987b3          	add	a5,s3,a5
    80003624:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003628:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000362c:	00008717          	auipc	a4,0x8
    80003630:	29473703          	ld	a4,660(a4) # 8000b8c0 <_ZL10waitForAll>
    80003634:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003638:	00078613          	mv	a2,a5
    8000363c:	00000597          	auipc	a1,0x0
    80003640:	d7458593          	addi	a1,a1,-652 # 800033b0 <_ZL8consumerPv>
    80003644:	f9840513          	addi	a0,s0,-104
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	f90080e7          	jalr	-112(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003650:	00000493          	li	s1,0
    80003654:	0280006f          	j	8000367c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003658:	00000597          	auipc	a1,0x0
    8000365c:	c1458593          	addi	a1,a1,-1004 # 8000326c <_ZL16producerKeyboardPv>
                      data + i);
    80003660:	00179613          	slli	a2,a5,0x1
    80003664:	00f60633          	add	a2,a2,a5
    80003668:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000366c:	00c98633          	add	a2,s3,a2
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	f68080e7          	jalr	-152(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003678:	0014849b          	addiw	s1,s1,1
    8000367c:	0524d263          	bge	s1,s2,800036c0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003680:	00149793          	slli	a5,s1,0x1
    80003684:	009787b3          	add	a5,a5,s1
    80003688:	00379793          	slli	a5,a5,0x3
    8000368c:	00f987b3          	add	a5,s3,a5
    80003690:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003694:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003698:	00008717          	auipc	a4,0x8
    8000369c:	22873703          	ld	a4,552(a4) # 8000b8c0 <_ZL10waitForAll>
    800036a0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036a4:	00048793          	mv	a5,s1
    800036a8:	00349513          	slli	a0,s1,0x3
    800036ac:	00aa8533          	add	a0,s5,a0
    800036b0:	fa9054e3          	blez	s1,80003658 <_Z22producerConsumer_C_APIv+0x1c8>
    800036b4:	00000597          	auipc	a1,0x0
    800036b8:	c6858593          	addi	a1,a1,-920 # 8000331c <_ZL8producerPv>
    800036bc:	fa5ff06f          	j	80003660 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	fbc080e7          	jalr	-68(ra) # 8000167c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800036c8:	00000493          	li	s1,0
    800036cc:	00994e63          	blt	s2,s1,800036e8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800036d0:	00008517          	auipc	a0,0x8
    800036d4:	1f053503          	ld	a0,496(a0) # 8000b8c0 <_ZL10waitForAll>
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	044080e7          	jalr	68(ra) # 8000171c <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800036e0:	0014849b          	addiw	s1,s1,1
    800036e4:	fe9ff06f          	j	800036cc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800036e8:	00008517          	auipc	a0,0x8
    800036ec:	1d853503          	ld	a0,472(a0) # 8000b8c0 <_ZL10waitForAll>
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	000080e7          	jalr	ra # 800016f0 <_Z9sem_closeP3Sem>
    delete buffer;
    800036f8:	000a0e63          	beqz	s4,80003714 <_Z22producerConsumer_C_APIv+0x284>
    800036fc:	000a0513          	mv	a0,s4
    80003700:	00003097          	auipc	ra,0x3
    80003704:	148080e7          	jalr	328(ra) # 80006848 <_ZN6BufferD1Ev>
    80003708:	000a0513          	mv	a0,s4
    8000370c:	fffff097          	auipc	ra,0xfffff
    80003710:	21c080e7          	jalr	540(ra) # 80002928 <_ZdlPv>
    80003714:	000b0113          	mv	sp,s6

}
    80003718:	f9040113          	addi	sp,s0,-112
    8000371c:	06813083          	ld	ra,104(sp)
    80003720:	06013403          	ld	s0,96(sp)
    80003724:	05813483          	ld	s1,88(sp)
    80003728:	05013903          	ld	s2,80(sp)
    8000372c:	04813983          	ld	s3,72(sp)
    80003730:	04013a03          	ld	s4,64(sp)
    80003734:	03813a83          	ld	s5,56(sp)
    80003738:	03013b03          	ld	s6,48(sp)
    8000373c:	07010113          	addi	sp,sp,112
    80003740:	00008067          	ret
    80003744:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003748:	000a0513          	mv	a0,s4
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	1dc080e7          	jalr	476(ra) # 80002928 <_ZdlPv>
    80003754:	00048513          	mv	a0,s1
    80003758:	00009097          	auipc	ra,0x9
    8000375c:	280080e7          	jalr	640(ra) # 8000c9d8 <_Unwind_Resume>

0000000080003760 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003760:	fe010113          	addi	sp,sp,-32
    80003764:	00113c23          	sd	ra,24(sp)
    80003768:	00813823          	sd	s0,16(sp)
    8000376c:	00913423          	sd	s1,8(sp)
    80003770:	01213023          	sd	s2,0(sp)
    80003774:	02010413          	addi	s0,sp,32
    80003778:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000377c:	00100793          	li	a5,1
    80003780:	02a7f863          	bgeu	a5,a0,800037b0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003784:	00a00793          	li	a5,10
    80003788:	02f577b3          	remu	a5,a0,a5
    8000378c:	02078e63          	beqz	a5,800037c8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003790:	fff48513          	addi	a0,s1,-1
    80003794:	00000097          	auipc	ra,0x0
    80003798:	fcc080e7          	jalr	-52(ra) # 80003760 <_ZL9fibonaccim>
    8000379c:	00050913          	mv	s2,a0
    800037a0:	ffe48513          	addi	a0,s1,-2
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	fbc080e7          	jalr	-68(ra) # 80003760 <_ZL9fibonaccim>
    800037ac:	00a90533          	add	a0,s2,a0
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	eb4080e7          	jalr	-332(ra) # 8000167c <_Z15thread_dispatchv>
    800037d0:	fc1ff06f          	j	80003790 <_ZL9fibonaccim+0x30>

00000000800037d4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800037d4:	fe010113          	addi	sp,sp,-32
    800037d8:	00113c23          	sd	ra,24(sp)
    800037dc:	00813823          	sd	s0,16(sp)
    800037e0:	00913423          	sd	s1,8(sp)
    800037e4:	01213023          	sd	s2,0(sp)
    800037e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800037ec:	00000913          	li	s2,0
    800037f0:	0380006f          	j	80003828 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	e88080e7          	jalr	-376(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800037fc:	00148493          	addi	s1,s1,1
    80003800:	000027b7          	lui	a5,0x2
    80003804:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003808:	0097ee63          	bltu	a5,s1,80003824 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000380c:	00000713          	li	a4,0
    80003810:	000077b7          	lui	a5,0x7
    80003814:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003818:	fce7eee3          	bltu	a5,a4,800037f4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000381c:	00170713          	addi	a4,a4,1
    80003820:	ff1ff06f          	j	80003810 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003824:	00190913          	addi	s2,s2,1
    80003828:	00900793          	li	a5,9
    8000382c:	0527e063          	bltu	a5,s2,8000386c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003830:	00005517          	auipc	a0,0x5
    80003834:	7f050513          	addi	a0,a0,2032 # 80009020 <CONSOLE_STATUS+0x10>
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	eac080e7          	jalr	-340(ra) # 800056e4 <_Z11printStringPKc>
    80003840:	00000613          	li	a2,0
    80003844:	00a00593          	li	a1,10
    80003848:	0009051b          	sext.w	a0,s2
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	048080e7          	jalr	72(ra) # 80005894 <_Z8printIntiii>
    80003854:	00006517          	auipc	a0,0x6
    80003858:	95450513          	addi	a0,a0,-1708 # 800091a8 <CONSOLE_STATUS+0x198>
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	e88080e7          	jalr	-376(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003864:	00000493          	li	s1,0
    80003868:	f99ff06f          	j	80003800 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000386c:	00006517          	auipc	a0,0x6
    80003870:	ad450513          	addi	a0,a0,-1324 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    80003874:	00002097          	auipc	ra,0x2
    80003878:	e70080e7          	jalr	-400(ra) # 800056e4 <_Z11printStringPKc>
    finishedA = true;
    8000387c:	00100793          	li	a5,1
    80003880:	00008717          	auipc	a4,0x8
    80003884:	04f70423          	sb	a5,72(a4) # 8000b8c8 <_ZL9finishedA>
}
    80003888:	01813083          	ld	ra,24(sp)
    8000388c:	01013403          	ld	s0,16(sp)
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	00013903          	ld	s2,0(sp)
    80003898:	02010113          	addi	sp,sp,32
    8000389c:	00008067          	ret

00000000800038a0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00813823          	sd	s0,16(sp)
    800038ac:	00913423          	sd	s1,8(sp)
    800038b0:	01213023          	sd	s2,0(sp)
    800038b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800038b8:	00000913          	li	s2,0
    800038bc:	0380006f          	j	800038f4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	dbc080e7          	jalr	-580(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038c8:	00148493          	addi	s1,s1,1
    800038cc:	000027b7          	lui	a5,0x2
    800038d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038d4:	0097ee63          	bltu	a5,s1,800038f0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038d8:	00000713          	li	a4,0
    800038dc:	000077b7          	lui	a5,0x7
    800038e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038e4:	fce7eee3          	bltu	a5,a4,800038c0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800038e8:	00170713          	addi	a4,a4,1
    800038ec:	ff1ff06f          	j	800038dc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800038f0:	00190913          	addi	s2,s2,1
    800038f4:	00f00793          	li	a5,15
    800038f8:	0527e063          	bltu	a5,s2,80003938 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800038fc:	00005517          	auipc	a0,0x5
    80003900:	75450513          	addi	a0,a0,1876 # 80009050 <CONSOLE_STATUS+0x40>
    80003904:	00002097          	auipc	ra,0x2
    80003908:	de0080e7          	jalr	-544(ra) # 800056e4 <_Z11printStringPKc>
    8000390c:	00000613          	li	a2,0
    80003910:	00a00593          	li	a1,10
    80003914:	0009051b          	sext.w	a0,s2
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	f7c080e7          	jalr	-132(ra) # 80005894 <_Z8printIntiii>
    80003920:	00006517          	auipc	a0,0x6
    80003924:	88850513          	addi	a0,a0,-1912 # 800091a8 <CONSOLE_STATUS+0x198>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	dbc080e7          	jalr	-580(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003930:	00000493          	li	s1,0
    80003934:	f99ff06f          	j	800038cc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003938:	00006517          	auipc	a0,0x6
    8000393c:	a1850513          	addi	a0,a0,-1512 # 80009350 <_ZZ12printIntegermE6digits+0x100>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	da4080e7          	jalr	-604(ra) # 800056e4 <_Z11printStringPKc>
    finishedB = true;
    80003948:	00100793          	li	a5,1
    8000394c:	00008717          	auipc	a4,0x8
    80003950:	f6f70ea3          	sb	a5,-131(a4) # 8000b8c9 <_ZL9finishedB>
    thread_dispatch();
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	d28080e7          	jalr	-728(ra) # 8000167c <_Z15thread_dispatchv>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	00013903          	ld	s2,0(sp)
    8000396c:	02010113          	addi	sp,sp,32
    80003970:	00008067          	ret

0000000080003974 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00913423          	sd	s1,8(sp)
    80003984:	01213023          	sd	s2,0(sp)
    80003988:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000398c:	00000493          	li	s1,0
    80003990:	0400006f          	j	800039d0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003994:	00006517          	auipc	a0,0x6
    80003998:	9cc50513          	addi	a0,a0,-1588 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    8000399c:	00002097          	auipc	ra,0x2
    800039a0:	d48080e7          	jalr	-696(ra) # 800056e4 <_Z11printStringPKc>
    800039a4:	00000613          	li	a2,0
    800039a8:	00a00593          	li	a1,10
    800039ac:	00048513          	mv	a0,s1
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	ee4080e7          	jalr	-284(ra) # 80005894 <_Z8printIntiii>
    800039b8:	00005517          	auipc	a0,0x5
    800039bc:	7f050513          	addi	a0,a0,2032 # 800091a8 <CONSOLE_STATUS+0x198>
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	d24080e7          	jalr	-732(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800039c8:	0014849b          	addiw	s1,s1,1
    800039cc:	0ff4f493          	andi	s1,s1,255
    800039d0:	00200793          	li	a5,2
    800039d4:	fc97f0e3          	bgeu	a5,s1,80003994 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800039d8:	00006517          	auipc	a0,0x6
    800039dc:	99050513          	addi	a0,a0,-1648 # 80009368 <_ZZ12printIntegermE6digits+0x118>
    800039e0:	00002097          	auipc	ra,0x2
    800039e4:	d04080e7          	jalr	-764(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800039e8:	00700313          	li	t1,7
    thread_dispatch();
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	c90080e7          	jalr	-880(ra) # 8000167c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800039f4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800039f8:	00006517          	auipc	a0,0x6
    800039fc:	98050513          	addi	a0,a0,-1664 # 80009378 <_ZZ12printIntegermE6digits+0x128>
    80003a00:	00002097          	auipc	ra,0x2
    80003a04:	ce4080e7          	jalr	-796(ra) # 800056e4 <_Z11printStringPKc>
    80003a08:	00000613          	li	a2,0
    80003a0c:	00a00593          	li	a1,10
    80003a10:	0009051b          	sext.w	a0,s2
    80003a14:	00002097          	auipc	ra,0x2
    80003a18:	e80080e7          	jalr	-384(ra) # 80005894 <_Z8printIntiii>
    80003a1c:	00005517          	auipc	a0,0x5
    80003a20:	78c50513          	addi	a0,a0,1932 # 800091a8 <CONSOLE_STATUS+0x198>
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	cc0080e7          	jalr	-832(ra) # 800056e4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a2c:	00c00513          	li	a0,12
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	d30080e7          	jalr	-720(ra) # 80003760 <_ZL9fibonaccim>
    80003a38:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a3c:	00006517          	auipc	a0,0x6
    80003a40:	94450513          	addi	a0,a0,-1724 # 80009380 <_ZZ12printIntegermE6digits+0x130>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	ca0080e7          	jalr	-864(ra) # 800056e4 <_Z11printStringPKc>
    80003a4c:	00000613          	li	a2,0
    80003a50:	00a00593          	li	a1,10
    80003a54:	0009051b          	sext.w	a0,s2
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	e3c080e7          	jalr	-452(ra) # 80005894 <_Z8printIntiii>
    80003a60:	00005517          	auipc	a0,0x5
    80003a64:	74850513          	addi	a0,a0,1864 # 800091a8 <CONSOLE_STATUS+0x198>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	c7c080e7          	jalr	-900(ra) # 800056e4 <_Z11printStringPKc>
    80003a70:	0400006f          	j	80003ab0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a74:	00006517          	auipc	a0,0x6
    80003a78:	8ec50513          	addi	a0,a0,-1812 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	c68080e7          	jalr	-920(ra) # 800056e4 <_Z11printStringPKc>
    80003a84:	00000613          	li	a2,0
    80003a88:	00a00593          	li	a1,10
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	e04080e7          	jalr	-508(ra) # 80005894 <_Z8printIntiii>
    80003a98:	00005517          	auipc	a0,0x5
    80003a9c:	71050513          	addi	a0,a0,1808 # 800091a8 <CONSOLE_STATUS+0x198>
    80003aa0:	00002097          	auipc	ra,0x2
    80003aa4:	c44080e7          	jalr	-956(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003aa8:	0014849b          	addiw	s1,s1,1
    80003aac:	0ff4f493          	andi	s1,s1,255
    80003ab0:	00500793          	li	a5,5
    80003ab4:	fc97f0e3          	bgeu	a5,s1,80003a74 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003ab8:	00006517          	auipc	a0,0x6
    80003abc:	88850513          	addi	a0,a0,-1912 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	c24080e7          	jalr	-988(ra) # 800056e4 <_Z11printStringPKc>
    finishedC = true;
    80003ac8:	00100793          	li	a5,1
    80003acc:	00008717          	auipc	a4,0x8
    80003ad0:	def70f23          	sb	a5,-514(a4) # 8000b8ca <_ZL9finishedC>
    thread_dispatch();
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	ba8080e7          	jalr	-1112(ra) # 8000167c <_Z15thread_dispatchv>
}
    80003adc:	01813083          	ld	ra,24(sp)
    80003ae0:	01013403          	ld	s0,16(sp)
    80003ae4:	00813483          	ld	s1,8(sp)
    80003ae8:	00013903          	ld	s2,0(sp)
    80003aec:	02010113          	addi	sp,sp,32
    80003af0:	00008067          	ret

0000000080003af4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	01213023          	sd	s2,0(sp)
    80003b08:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b0c:	00a00493          	li	s1,10
    80003b10:	0400006f          	j	80003b50 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	87c50513          	addi	a0,a0,-1924 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	bc8080e7          	jalr	-1080(ra) # 800056e4 <_Z11printStringPKc>
    80003b24:	00000613          	li	a2,0
    80003b28:	00a00593          	li	a1,10
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	d64080e7          	jalr	-668(ra) # 80005894 <_Z8printIntiii>
    80003b38:	00005517          	auipc	a0,0x5
    80003b3c:	67050513          	addi	a0,a0,1648 # 800091a8 <CONSOLE_STATUS+0x198>
    80003b40:	00002097          	auipc	ra,0x2
    80003b44:	ba4080e7          	jalr	-1116(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b48:	0014849b          	addiw	s1,s1,1
    80003b4c:	0ff4f493          	andi	s1,s1,255
    80003b50:	00c00793          	li	a5,12
    80003b54:	fc97f0e3          	bgeu	a5,s1,80003b14 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003b58:	00006517          	auipc	a0,0x6
    80003b5c:	84050513          	addi	a0,a0,-1984 # 80009398 <_ZZ12printIntegermE6digits+0x148>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	b84080e7          	jalr	-1148(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b68:	00500313          	li	t1,5
    thread_dispatch();
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	b10080e7          	jalr	-1264(ra) # 8000167c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b74:	01000513          	li	a0,16
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	be8080e7          	jalr	-1048(ra) # 80003760 <_ZL9fibonaccim>
    80003b80:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b84:	00006517          	auipc	a0,0x6
    80003b88:	82450513          	addi	a0,a0,-2012 # 800093a8 <_ZZ12printIntegermE6digits+0x158>
    80003b8c:	00002097          	auipc	ra,0x2
    80003b90:	b58080e7          	jalr	-1192(ra) # 800056e4 <_Z11printStringPKc>
    80003b94:	00000613          	li	a2,0
    80003b98:	00a00593          	li	a1,10
    80003b9c:	0009051b          	sext.w	a0,s2
    80003ba0:	00002097          	auipc	ra,0x2
    80003ba4:	cf4080e7          	jalr	-780(ra) # 80005894 <_Z8printIntiii>
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	60050513          	addi	a0,a0,1536 # 800091a8 <CONSOLE_STATUS+0x198>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	b34080e7          	jalr	-1228(ra) # 800056e4 <_Z11printStringPKc>
    80003bb8:	0400006f          	j	80003bf8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bbc:	00005517          	auipc	a0,0x5
    80003bc0:	7d450513          	addi	a0,a0,2004 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	b20080e7          	jalr	-1248(ra) # 800056e4 <_Z11printStringPKc>
    80003bcc:	00000613          	li	a2,0
    80003bd0:	00a00593          	li	a1,10
    80003bd4:	00048513          	mv	a0,s1
    80003bd8:	00002097          	auipc	ra,0x2
    80003bdc:	cbc080e7          	jalr	-836(ra) # 80005894 <_Z8printIntiii>
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	5c850513          	addi	a0,a0,1480 # 800091a8 <CONSOLE_STATUS+0x198>
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	afc080e7          	jalr	-1284(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003bf0:	0014849b          	addiw	s1,s1,1
    80003bf4:	0ff4f493          	andi	s1,s1,255
    80003bf8:	00f00793          	li	a5,15
    80003bfc:	fc97f0e3          	bgeu	a5,s1,80003bbc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	7b850513          	addi	a0,a0,1976 # 800093b8 <_ZZ12printIntegermE6digits+0x168>
    80003c08:	00002097          	auipc	ra,0x2
    80003c0c:	adc080e7          	jalr	-1316(ra) # 800056e4 <_Z11printStringPKc>
    finishedD = true;
    80003c10:	00100793          	li	a5,1
    80003c14:	00008717          	auipc	a4,0x8
    80003c18:	caf70ba3          	sb	a5,-841(a4) # 8000b8cb <_ZL9finishedD>
    thread_dispatch();
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	a60080e7          	jalr	-1440(ra) # 8000167c <_Z15thread_dispatchv>
}
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	01013403          	ld	s0,16(sp)
    80003c2c:	00813483          	ld	s1,8(sp)
    80003c30:	00013903          	ld	s2,0(sp)
    80003c34:	02010113          	addi	sp,sp,32
    80003c38:	00008067          	ret

0000000080003c3c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c3c:	fc010113          	addi	sp,sp,-64
    80003c40:	02113c23          	sd	ra,56(sp)
    80003c44:	02813823          	sd	s0,48(sp)
    80003c48:	02913423          	sd	s1,40(sp)
    80003c4c:	03213023          	sd	s2,32(sp)
    80003c50:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003c54:	02000513          	li	a0,32
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	c80080e7          	jalr	-896(ra) # 800028d8 <_Znwm>
    80003c60:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	ef8080e7          	jalr	-264(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80003c6c:	00008797          	auipc	a5,0x8
    80003c70:	a0478793          	addi	a5,a5,-1532 # 8000b670 <_ZTV7WorkerA+0x10>
    80003c74:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003c78:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	53c50513          	addi	a0,a0,1340 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	a60080e7          	jalr	-1440(ra) # 800056e4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003c8c:	02000513          	li	a0,32
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	c48080e7          	jalr	-952(ra) # 800028d8 <_Znwm>
    80003c98:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003c9c:	fffff097          	auipc	ra,0xfffff
    80003ca0:	ec0080e7          	jalr	-320(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80003ca4:	00008797          	auipc	a5,0x8
    80003ca8:	9f478793          	addi	a5,a5,-1548 # 8000b698 <_ZTV7WorkerB+0x10>
    80003cac:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003cb0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	51c50513          	addi	a0,a0,1308 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	a28080e7          	jalr	-1496(ra) # 800056e4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003cc4:	02000513          	li	a0,32
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	c10080e7          	jalr	-1008(ra) # 800028d8 <_Znwm>
    80003cd0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	e88080e7          	jalr	-376(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80003cdc:	00008797          	auipc	a5,0x8
    80003ce0:	9e478793          	addi	a5,a5,-1564 # 8000b6c0 <_ZTV7WorkerC+0x10>
    80003ce4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ce8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	4fc50513          	addi	a0,a0,1276 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	9f0080e7          	jalr	-1552(ra) # 800056e4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003cfc:	02000513          	li	a0,32
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	bd8080e7          	jalr	-1064(ra) # 800028d8 <_Znwm>
    80003d08:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d0c:	fffff097          	auipc	ra,0xfffff
    80003d10:	e50080e7          	jalr	-432(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80003d14:	00008797          	auipc	a5,0x8
    80003d18:	9d478793          	addi	a5,a5,-1580 # 8000b6e8 <_ZTV7WorkerD+0x10>
    80003d1c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d20:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d24:	00005517          	auipc	a0,0x5
    80003d28:	4dc50513          	addi	a0,a0,1244 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003d2c:	00002097          	auipc	ra,0x2
    80003d30:	9b8080e7          	jalr	-1608(ra) # 800056e4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d34:	00000493          	li	s1,0
    80003d38:	00300793          	li	a5,3
    80003d3c:	0297c663          	blt	a5,s1,80003d68 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003d40:	00349793          	slli	a5,s1,0x3
    80003d44:	fe040713          	addi	a4,s0,-32
    80003d48:	00f707b3          	add	a5,a4,a5
    80003d4c:	fe07b503          	ld	a0,-32(a5)
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	ddc080e7          	jalr	-548(ra) # 80002b2c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003d58:	0014849b          	addiw	s1,s1,1
    80003d5c:	fddff06f          	j	80003d38 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	d40080e7          	jalr	-704(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003d68:	00008797          	auipc	a5,0x8
    80003d6c:	b607c783          	lbu	a5,-1184(a5) # 8000b8c8 <_ZL9finishedA>
    80003d70:	fe0788e3          	beqz	a5,80003d60 <_Z20Threads_CPP_API_testv+0x124>
    80003d74:	00008797          	auipc	a5,0x8
    80003d78:	b557c783          	lbu	a5,-1195(a5) # 8000b8c9 <_ZL9finishedB>
    80003d7c:	fe0782e3          	beqz	a5,80003d60 <_Z20Threads_CPP_API_testv+0x124>
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	b4a7c783          	lbu	a5,-1206(a5) # 8000b8ca <_ZL9finishedC>
    80003d88:	fc078ce3          	beqz	a5,80003d60 <_Z20Threads_CPP_API_testv+0x124>
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	b3f7c783          	lbu	a5,-1217(a5) # 8000b8cb <_ZL9finishedD>
    80003d94:	fc0786e3          	beqz	a5,80003d60 <_Z20Threads_CPP_API_testv+0x124>
    80003d98:	fc040493          	addi	s1,s0,-64
    80003d9c:	0080006f          	j	80003da4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003da0:	00848493          	addi	s1,s1,8
    80003da4:	fe040793          	addi	a5,s0,-32
    80003da8:	08f48663          	beq	s1,a5,80003e34 <_Z20Threads_CPP_API_testv+0x1f8>
    80003dac:	0004b503          	ld	a0,0(s1)
    80003db0:	fe0508e3          	beqz	a0,80003da0 <_Z20Threads_CPP_API_testv+0x164>
    80003db4:	00053783          	ld	a5,0(a0)
    80003db8:	0087b783          	ld	a5,8(a5)
    80003dbc:	000780e7          	jalr	a5
    80003dc0:	fe1ff06f          	j	80003da0 <_Z20Threads_CPP_API_testv+0x164>
    80003dc4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003dc8:	00048513          	mv	a0,s1
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	b5c080e7          	jalr	-1188(ra) # 80002928 <_ZdlPv>
    80003dd4:	00090513          	mv	a0,s2
    80003dd8:	00009097          	auipc	ra,0x9
    80003ddc:	c00080e7          	jalr	-1024(ra) # 8000c9d8 <_Unwind_Resume>
    80003de0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003de4:	00048513          	mv	a0,s1
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	b40080e7          	jalr	-1216(ra) # 80002928 <_ZdlPv>
    80003df0:	00090513          	mv	a0,s2
    80003df4:	00009097          	auipc	ra,0x9
    80003df8:	be4080e7          	jalr	-1052(ra) # 8000c9d8 <_Unwind_Resume>
    80003dfc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e00:	00048513          	mv	a0,s1
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	b24080e7          	jalr	-1244(ra) # 80002928 <_ZdlPv>
    80003e0c:	00090513          	mv	a0,s2
    80003e10:	00009097          	auipc	ra,0x9
    80003e14:	bc8080e7          	jalr	-1080(ra) # 8000c9d8 <_Unwind_Resume>
    80003e18:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	b08080e7          	jalr	-1272(ra) # 80002928 <_ZdlPv>
    80003e28:	00090513          	mv	a0,s2
    80003e2c:	00009097          	auipc	ra,0x9
    80003e30:	bac080e7          	jalr	-1108(ra) # 8000c9d8 <_Unwind_Resume>
}
    80003e34:	03813083          	ld	ra,56(sp)
    80003e38:	03013403          	ld	s0,48(sp)
    80003e3c:	02813483          	ld	s1,40(sp)
    80003e40:	02013903          	ld	s2,32(sp)
    80003e44:	04010113          	addi	sp,sp,64
    80003e48:	00008067          	ret

0000000080003e4c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003e4c:	ff010113          	addi	sp,sp,-16
    80003e50:	00113423          	sd	ra,8(sp)
    80003e54:	00813023          	sd	s0,0(sp)
    80003e58:	01010413          	addi	s0,sp,16
    80003e5c:	00008797          	auipc	a5,0x8
    80003e60:	81478793          	addi	a5,a5,-2028 # 8000b670 <_ZTV7WorkerA+0x10>
    80003e64:	00f53023          	sd	a5,0(a0)
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	b28080e7          	jalr	-1240(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003e70:	00813083          	ld	ra,8(sp)
    80003e74:	00013403          	ld	s0,0(sp)
    80003e78:	01010113          	addi	sp,sp,16
    80003e7c:	00008067          	ret

0000000080003e80 <_ZN7WorkerAD0Ev>:
    80003e80:	fe010113          	addi	sp,sp,-32
    80003e84:	00113c23          	sd	ra,24(sp)
    80003e88:	00813823          	sd	s0,16(sp)
    80003e8c:	00913423          	sd	s1,8(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	00050493          	mv	s1,a0
    80003e98:	00007797          	auipc	a5,0x7
    80003e9c:	7d878793          	addi	a5,a5,2008 # 8000b670 <_ZTV7WorkerA+0x10>
    80003ea0:	00f53023          	sd	a5,0(a0)
    80003ea4:	fffff097          	auipc	ra,0xfffff
    80003ea8:	aec080e7          	jalr	-1300(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003eac:	00048513          	mv	a0,s1
    80003eb0:	fffff097          	auipc	ra,0xfffff
    80003eb4:	a78080e7          	jalr	-1416(ra) # 80002928 <_ZdlPv>
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	00008067          	ret

0000000080003ecc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00113423          	sd	ra,8(sp)
    80003ed4:	00813023          	sd	s0,0(sp)
    80003ed8:	01010413          	addi	s0,sp,16
    80003edc:	00007797          	auipc	a5,0x7
    80003ee0:	7bc78793          	addi	a5,a5,1980 # 8000b698 <_ZTV7WorkerB+0x10>
    80003ee4:	00f53023          	sd	a5,0(a0)
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	aa8080e7          	jalr	-1368(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003ef0:	00813083          	ld	ra,8(sp)
    80003ef4:	00013403          	ld	s0,0(sp)
    80003ef8:	01010113          	addi	sp,sp,16
    80003efc:	00008067          	ret

0000000080003f00 <_ZN7WorkerBD0Ev>:
    80003f00:	fe010113          	addi	sp,sp,-32
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00813823          	sd	s0,16(sp)
    80003f0c:	00913423          	sd	s1,8(sp)
    80003f10:	02010413          	addi	s0,sp,32
    80003f14:	00050493          	mv	s1,a0
    80003f18:	00007797          	auipc	a5,0x7
    80003f1c:	78078793          	addi	a5,a5,1920 # 8000b698 <_ZTV7WorkerB+0x10>
    80003f20:	00f53023          	sd	a5,0(a0)
    80003f24:	fffff097          	auipc	ra,0xfffff
    80003f28:	a6c080e7          	jalr	-1428(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003f2c:	00048513          	mv	a0,s1
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	9f8080e7          	jalr	-1544(ra) # 80002928 <_ZdlPv>
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	02010113          	addi	sp,sp,32
    80003f48:	00008067          	ret

0000000080003f4c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003f4c:	ff010113          	addi	sp,sp,-16
    80003f50:	00113423          	sd	ra,8(sp)
    80003f54:	00813023          	sd	s0,0(sp)
    80003f58:	01010413          	addi	s0,sp,16
    80003f5c:	00007797          	auipc	a5,0x7
    80003f60:	76478793          	addi	a5,a5,1892 # 8000b6c0 <_ZTV7WorkerC+0x10>
    80003f64:	00f53023          	sd	a5,0(a0)
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	a28080e7          	jalr	-1496(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003f70:	00813083          	ld	ra,8(sp)
    80003f74:	00013403          	ld	s0,0(sp)
    80003f78:	01010113          	addi	sp,sp,16
    80003f7c:	00008067          	ret

0000000080003f80 <_ZN7WorkerCD0Ev>:
    80003f80:	fe010113          	addi	sp,sp,-32
    80003f84:	00113c23          	sd	ra,24(sp)
    80003f88:	00813823          	sd	s0,16(sp)
    80003f8c:	00913423          	sd	s1,8(sp)
    80003f90:	02010413          	addi	s0,sp,32
    80003f94:	00050493          	mv	s1,a0
    80003f98:	00007797          	auipc	a5,0x7
    80003f9c:	72878793          	addi	a5,a5,1832 # 8000b6c0 <_ZTV7WorkerC+0x10>
    80003fa0:	00f53023          	sd	a5,0(a0)
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	9ec080e7          	jalr	-1556(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	fffff097          	auipc	ra,0xfffff
    80003fb4:	978080e7          	jalr	-1672(ra) # 80002928 <_ZdlPv>
    80003fb8:	01813083          	ld	ra,24(sp)
    80003fbc:	01013403          	ld	s0,16(sp)
    80003fc0:	00813483          	ld	s1,8(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00113423          	sd	ra,8(sp)
    80003fd4:	00813023          	sd	s0,0(sp)
    80003fd8:	01010413          	addi	s0,sp,16
    80003fdc:	00007797          	auipc	a5,0x7
    80003fe0:	70c78793          	addi	a5,a5,1804 # 8000b6e8 <_ZTV7WorkerD+0x10>
    80003fe4:	00f53023          	sd	a5,0(a0)
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	9a8080e7          	jalr	-1624(ra) # 80002990 <_ZN6ThreadD1Ev>
    80003ff0:	00813083          	ld	ra,8(sp)
    80003ff4:	00013403          	ld	s0,0(sp)
    80003ff8:	01010113          	addi	sp,sp,16
    80003ffc:	00008067          	ret

0000000080004000 <_ZN7WorkerDD0Ev>:
    80004000:	fe010113          	addi	sp,sp,-32
    80004004:	00113c23          	sd	ra,24(sp)
    80004008:	00813823          	sd	s0,16(sp)
    8000400c:	00913423          	sd	s1,8(sp)
    80004010:	02010413          	addi	s0,sp,32
    80004014:	00050493          	mv	s1,a0
    80004018:	00007797          	auipc	a5,0x7
    8000401c:	6d078793          	addi	a5,a5,1744 # 8000b6e8 <_ZTV7WorkerD+0x10>
    80004020:	00f53023          	sd	a5,0(a0)
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	96c080e7          	jalr	-1684(ra) # 80002990 <_ZN6ThreadD1Ev>
    8000402c:	00048513          	mv	a0,s1
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	8f8080e7          	jalr	-1800(ra) # 80002928 <_ZdlPv>
    80004038:	01813083          	ld	ra,24(sp)
    8000403c:	01013403          	ld	s0,16(sp)
    80004040:	00813483          	ld	s1,8(sp)
    80004044:	02010113          	addi	sp,sp,32
    80004048:	00008067          	ret

000000008000404c <_ZN7WorkerA3runEv>:
    void run() override {
    8000404c:	ff010113          	addi	sp,sp,-16
    80004050:	00113423          	sd	ra,8(sp)
    80004054:	00813023          	sd	s0,0(sp)
    80004058:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000405c:	00000593          	li	a1,0
    80004060:	fffff097          	auipc	ra,0xfffff
    80004064:	774080e7          	jalr	1908(ra) # 800037d4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004068:	00813083          	ld	ra,8(sp)
    8000406c:	00013403          	ld	s0,0(sp)
    80004070:	01010113          	addi	sp,sp,16
    80004074:	00008067          	ret

0000000080004078 <_ZN7WorkerB3runEv>:
    void run() override {
    80004078:	ff010113          	addi	sp,sp,-16
    8000407c:	00113423          	sd	ra,8(sp)
    80004080:	00813023          	sd	s0,0(sp)
    80004084:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004088:	00000593          	li	a1,0
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	814080e7          	jalr	-2028(ra) # 800038a0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004094:	00813083          	ld	ra,8(sp)
    80004098:	00013403          	ld	s0,0(sp)
    8000409c:	01010113          	addi	sp,sp,16
    800040a0:	00008067          	ret

00000000800040a4 <_ZN7WorkerC3runEv>:
    void run() override {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	00813023          	sd	s0,0(sp)
    800040b0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800040b4:	00000593          	li	a1,0
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	8bc080e7          	jalr	-1860(ra) # 80003974 <_ZN7WorkerC11workerBodyCEPv>
    }
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret

00000000800040d0 <_ZN7WorkerD3runEv>:
    void run() override {
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00113423          	sd	ra,8(sp)
    800040d8:	00813023          	sd	s0,0(sp)
    800040dc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800040e0:	00000593          	li	a1,0
    800040e4:	00000097          	auipc	ra,0x0
    800040e8:	a10080e7          	jalr	-1520(ra) # 80003af4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800040fc:	f8010113          	addi	sp,sp,-128
    80004100:	06113c23          	sd	ra,120(sp)
    80004104:	06813823          	sd	s0,112(sp)
    80004108:	06913423          	sd	s1,104(sp)
    8000410c:	07213023          	sd	s2,96(sp)
    80004110:	05313c23          	sd	s3,88(sp)
    80004114:	05413823          	sd	s4,80(sp)
    80004118:	05513423          	sd	s5,72(sp)
    8000411c:	05613023          	sd	s6,64(sp)
    80004120:	03713c23          	sd	s7,56(sp)
    80004124:	03813823          	sd	s8,48(sp)
    80004128:	03913423          	sd	s9,40(sp)
    8000412c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004130:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004134:	00005517          	auipc	a0,0x5
    80004138:	12c50513          	addi	a0,a0,300 # 80009260 <_ZZ12printIntegermE6digits+0x10>
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	5a8080e7          	jalr	1448(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    80004144:	01e00593          	li	a1,30
    80004148:	f8040493          	addi	s1,s0,-128
    8000414c:	00048513          	mv	a0,s1
    80004150:	00001097          	auipc	ra,0x1
    80004154:	61c080e7          	jalr	1564(ra) # 8000576c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004158:	00048513          	mv	a0,s1
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	6e8080e7          	jalr	1768(ra) # 80005844 <_Z11stringToIntPKc>
    80004164:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004168:	00005517          	auipc	a0,0x5
    8000416c:	11850513          	addi	a0,a0,280 # 80009280 <_ZZ12printIntegermE6digits+0x30>
    80004170:	00001097          	auipc	ra,0x1
    80004174:	574080e7          	jalr	1396(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    80004178:	01e00593          	li	a1,30
    8000417c:	00048513          	mv	a0,s1
    80004180:	00001097          	auipc	ra,0x1
    80004184:	5ec080e7          	jalr	1516(ra) # 8000576c <_Z9getStringPci>
    n = stringToInt(input);
    80004188:	00048513          	mv	a0,s1
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	6b8080e7          	jalr	1720(ra) # 80005844 <_Z11stringToIntPKc>
    80004194:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004198:	00005517          	auipc	a0,0x5
    8000419c:	10850513          	addi	a0,a0,264 # 800092a0 <_ZZ12printIntegermE6digits+0x50>
    800041a0:	00001097          	auipc	ra,0x1
    800041a4:	544080e7          	jalr	1348(ra) # 800056e4 <_Z11printStringPKc>
    printInt(threadNum);
    800041a8:	00000613          	li	a2,0
    800041ac:	00a00593          	li	a1,10
    800041b0:	00098513          	mv	a0,s3
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	6e0080e7          	jalr	1760(ra) # 80005894 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800041bc:	00005517          	auipc	a0,0x5
    800041c0:	0fc50513          	addi	a0,a0,252 # 800092b8 <_ZZ12printIntegermE6digits+0x68>
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	520080e7          	jalr	1312(ra) # 800056e4 <_Z11printStringPKc>
    printInt(n);
    800041cc:	00000613          	li	a2,0
    800041d0:	00a00593          	li	a1,10
    800041d4:	00048513          	mv	a0,s1
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	6bc080e7          	jalr	1724(ra) # 80005894 <_Z8printIntiii>
    printString(".\n");
    800041e0:	00005517          	auipc	a0,0x5
    800041e4:	ef050513          	addi	a0,a0,-272 # 800090d0 <CONSOLE_STATUS+0xc0>
    800041e8:	00001097          	auipc	ra,0x1
    800041ec:	4fc080e7          	jalr	1276(ra) # 800056e4 <_Z11printStringPKc>
    if (threadNum > n) {
    800041f0:	0334c463          	blt	s1,s3,80004218 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800041f4:	03305c63          	blez	s3,8000422c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800041f8:	03800513          	li	a0,56
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	6dc080e7          	jalr	1756(ra) # 800028d8 <_Znwm>
    80004204:	00050a93          	mv	s5,a0
    80004208:	00048593          	mv	a1,s1
    8000420c:	00001097          	auipc	ra,0x1
    80004210:	7a8080e7          	jalr	1960(ra) # 800059b4 <_ZN9BufferCPPC1Ei>
    80004214:	0300006f          	j	80004244 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004218:	00005517          	auipc	a0,0x5
    8000421c:	0b850513          	addi	a0,a0,184 # 800092d0 <_ZZ12printIntegermE6digits+0x80>
    80004220:	00001097          	auipc	ra,0x1
    80004224:	4c4080e7          	jalr	1220(ra) # 800056e4 <_Z11printStringPKc>
        return;
    80004228:	0140006f          	j	8000423c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000422c:	00005517          	auipc	a0,0x5
    80004230:	0e450513          	addi	a0,a0,228 # 80009310 <_ZZ12printIntegermE6digits+0xc0>
    80004234:	00001097          	auipc	ra,0x1
    80004238:	4b0080e7          	jalr	1200(ra) # 800056e4 <_Z11printStringPKc>
        return;
    8000423c:	000c0113          	mv	sp,s8
    80004240:	2140006f          	j	80004454 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004244:	01000513          	li	a0,16
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	690080e7          	jalr	1680(ra) # 800028d8 <_Znwm>
    80004250:	00050913          	mv	s2,a0
    80004254:	00000593          	li	a1,0
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	964080e7          	jalr	-1692(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80004260:	00007797          	auipc	a5,0x7
    80004264:	6727bc23          	sd	s2,1656(a5) # 8000b8d8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004268:	00399793          	slli	a5,s3,0x3
    8000426c:	00f78793          	addi	a5,a5,15
    80004270:	ff07f793          	andi	a5,a5,-16
    80004274:	40f10133          	sub	sp,sp,a5
    80004278:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000427c:	0019871b          	addiw	a4,s3,1
    80004280:	00171793          	slli	a5,a4,0x1
    80004284:	00e787b3          	add	a5,a5,a4
    80004288:	00379793          	slli	a5,a5,0x3
    8000428c:	00f78793          	addi	a5,a5,15
    80004290:	ff07f793          	andi	a5,a5,-16
    80004294:	40f10133          	sub	sp,sp,a5
    80004298:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000429c:	00199493          	slli	s1,s3,0x1
    800042a0:	013484b3          	add	s1,s1,s3
    800042a4:	00349493          	slli	s1,s1,0x3
    800042a8:	009b04b3          	add	s1,s6,s1
    800042ac:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800042b0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800042b4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042b8:	02800513          	li	a0,40
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	61c080e7          	jalr	1564(ra) # 800028d8 <_Znwm>
    800042c4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	894080e7          	jalr	-1900(ra) # 80002b5c <_ZN6ThreadC1Ev>
    800042d0:	00007797          	auipc	a5,0x7
    800042d4:	49078793          	addi	a5,a5,1168 # 8000b760 <_ZTV8Consumer+0x10>
    800042d8:	00fbb023          	sd	a5,0(s7)
    800042dc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800042e0:	000b8513          	mv	a0,s7
    800042e4:	fffff097          	auipc	ra,0xfffff
    800042e8:	848080e7          	jalr	-1976(ra) # 80002b2c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800042ec:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800042f0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800042f4:	00007797          	auipc	a5,0x7
    800042f8:	5e47b783          	ld	a5,1508(a5) # 8000b8d8 <_ZL10waitForAll>
    800042fc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004300:	02800513          	li	a0,40
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	5d4080e7          	jalr	1492(ra) # 800028d8 <_Znwm>
    8000430c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004310:	fffff097          	auipc	ra,0xfffff
    80004314:	84c080e7          	jalr	-1972(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80004318:	00007797          	auipc	a5,0x7
    8000431c:	3f878793          	addi	a5,a5,1016 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    80004320:	00f4b023          	sd	a5,0(s1)
    80004324:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004328:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000432c:	00048513          	mv	a0,s1
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	7fc080e7          	jalr	2044(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004338:	00100913          	li	s2,1
    8000433c:	0300006f          	j	8000436c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004340:	00007797          	auipc	a5,0x7
    80004344:	3f878793          	addi	a5,a5,1016 # 8000b738 <_ZTV8Producer+0x10>
    80004348:	00fcb023          	sd	a5,0(s9)
    8000434c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004350:	00391793          	slli	a5,s2,0x3
    80004354:	00fa07b3          	add	a5,s4,a5
    80004358:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000435c:	000c8513          	mv	a0,s9
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	7cc080e7          	jalr	1996(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004368:	0019091b          	addiw	s2,s2,1
    8000436c:	05395263          	bge	s2,s3,800043b0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004370:	00191493          	slli	s1,s2,0x1
    80004374:	012484b3          	add	s1,s1,s2
    80004378:	00349493          	slli	s1,s1,0x3
    8000437c:	009b04b3          	add	s1,s6,s1
    80004380:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004384:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004388:	00007797          	auipc	a5,0x7
    8000438c:	5507b783          	ld	a5,1360(a5) # 8000b8d8 <_ZL10waitForAll>
    80004390:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004394:	02800513          	li	a0,40
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	540080e7          	jalr	1344(ra) # 800028d8 <_Znwm>
    800043a0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043a4:	ffffe097          	auipc	ra,0xffffe
    800043a8:	7b8080e7          	jalr	1976(ra) # 80002b5c <_ZN6ThreadC1Ev>
    800043ac:	f95ff06f          	j	80004340 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	6f0080e7          	jalr	1776(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800043b8:	00000493          	li	s1,0
    800043bc:	0099ce63          	blt	s3,s1,800043d8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800043c0:	00007517          	auipc	a0,0x7
    800043c4:	51853503          	ld	a0,1304(a0) # 8000b8d8 <_ZL10waitForAll>
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	82c080e7          	jalr	-2004(ra) # 80002bf4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800043d0:	0014849b          	addiw	s1,s1,1
    800043d4:	fe9ff06f          	j	800043bc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800043d8:	00007517          	auipc	a0,0x7
    800043dc:	50053503          	ld	a0,1280(a0) # 8000b8d8 <_ZL10waitForAll>
    800043e0:	00050863          	beqz	a0,800043f0 <_Z20testConsumerProducerv+0x2f4>
    800043e4:	00053783          	ld	a5,0(a0)
    800043e8:	0087b783          	ld	a5,8(a5)
    800043ec:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800043f0:	00000493          	li	s1,0
    800043f4:	0080006f          	j	800043fc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800043f8:	0014849b          	addiw	s1,s1,1
    800043fc:	0334d263          	bge	s1,s3,80004420 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004400:	00349793          	slli	a5,s1,0x3
    80004404:	00fa07b3          	add	a5,s4,a5
    80004408:	0007b503          	ld	a0,0(a5)
    8000440c:	fe0506e3          	beqz	a0,800043f8 <_Z20testConsumerProducerv+0x2fc>
    80004410:	00053783          	ld	a5,0(a0)
    80004414:	0087b783          	ld	a5,8(a5)
    80004418:	000780e7          	jalr	a5
    8000441c:	fddff06f          	j	800043f8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004420:	000b8a63          	beqz	s7,80004434 <_Z20testConsumerProducerv+0x338>
    80004424:	000bb783          	ld	a5,0(s7)
    80004428:	0087b783          	ld	a5,8(a5)
    8000442c:	000b8513          	mv	a0,s7
    80004430:	000780e7          	jalr	a5
    delete buffer;
    80004434:	000a8e63          	beqz	s5,80004450 <_Z20testConsumerProducerv+0x354>
    80004438:	000a8513          	mv	a0,s5
    8000443c:	00002097          	auipc	ra,0x2
    80004440:	870080e7          	jalr	-1936(ra) # 80005cac <_ZN9BufferCPPD1Ev>
    80004444:	000a8513          	mv	a0,s5
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	4e0080e7          	jalr	1248(ra) # 80002928 <_ZdlPv>
    80004450:	000c0113          	mv	sp,s8
}
    80004454:	f8040113          	addi	sp,s0,-128
    80004458:	07813083          	ld	ra,120(sp)
    8000445c:	07013403          	ld	s0,112(sp)
    80004460:	06813483          	ld	s1,104(sp)
    80004464:	06013903          	ld	s2,96(sp)
    80004468:	05813983          	ld	s3,88(sp)
    8000446c:	05013a03          	ld	s4,80(sp)
    80004470:	04813a83          	ld	s5,72(sp)
    80004474:	04013b03          	ld	s6,64(sp)
    80004478:	03813b83          	ld	s7,56(sp)
    8000447c:	03013c03          	ld	s8,48(sp)
    80004480:	02813c83          	ld	s9,40(sp)
    80004484:	08010113          	addi	sp,sp,128
    80004488:	00008067          	ret
    8000448c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004490:	000a8513          	mv	a0,s5
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	494080e7          	jalr	1172(ra) # 80002928 <_ZdlPv>
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00008097          	auipc	ra,0x8
    800044a4:	538080e7          	jalr	1336(ra) # 8000c9d8 <_Unwind_Resume>
    800044a8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800044ac:	00090513          	mv	a0,s2
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	478080e7          	jalr	1144(ra) # 80002928 <_ZdlPv>
    800044b8:	00048513          	mv	a0,s1
    800044bc:	00008097          	auipc	ra,0x8
    800044c0:	51c080e7          	jalr	1308(ra) # 8000c9d8 <_Unwind_Resume>
    800044c4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044c8:	000b8513          	mv	a0,s7
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	45c080e7          	jalr	1116(ra) # 80002928 <_ZdlPv>
    800044d4:	00048513          	mv	a0,s1
    800044d8:	00008097          	auipc	ra,0x8
    800044dc:	500080e7          	jalr	1280(ra) # 8000c9d8 <_Unwind_Resume>
    800044e0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044e4:	00048513          	mv	a0,s1
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	440080e7          	jalr	1088(ra) # 80002928 <_ZdlPv>
    800044f0:	00090513          	mv	a0,s2
    800044f4:	00008097          	auipc	ra,0x8
    800044f8:	4e4080e7          	jalr	1252(ra) # 8000c9d8 <_Unwind_Resume>
    800044fc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004500:	000c8513          	mv	a0,s9
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	424080e7          	jalr	1060(ra) # 80002928 <_ZdlPv>
    8000450c:	00048513          	mv	a0,s1
    80004510:	00008097          	auipc	ra,0x8
    80004514:	4c8080e7          	jalr	1224(ra) # 8000c9d8 <_Unwind_Resume>

0000000080004518 <_ZN8Consumer3runEv>:
    void run() override {
    80004518:	fd010113          	addi	sp,sp,-48
    8000451c:	02113423          	sd	ra,40(sp)
    80004520:	02813023          	sd	s0,32(sp)
    80004524:	00913c23          	sd	s1,24(sp)
    80004528:	01213823          	sd	s2,16(sp)
    8000452c:	01313423          	sd	s3,8(sp)
    80004530:	03010413          	addi	s0,sp,48
    80004534:	00050913          	mv	s2,a0
        int i = 0;
    80004538:	00000993          	li	s3,0
    8000453c:	0100006f          	j	8000454c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004540:	00a00513          	li	a0,10
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	708080e7          	jalr	1800(ra) # 80002c4c <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000454c:	00007797          	auipc	a5,0x7
    80004550:	3847a783          	lw	a5,900(a5) # 8000b8d0 <_ZL9threadEnd>
    80004554:	04079a63          	bnez	a5,800045a8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004558:	02093783          	ld	a5,32(s2)
    8000455c:	0087b503          	ld	a0,8(a5)
    80004560:	00001097          	auipc	ra,0x1
    80004564:	638080e7          	jalr	1592(ra) # 80005b98 <_ZN9BufferCPP3getEv>
            i++;
    80004568:	0019849b          	addiw	s1,s3,1
    8000456c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004570:	0ff57513          	andi	a0,a0,255
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	6d8080e7          	jalr	1752(ra) # 80002c4c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000457c:	05000793          	li	a5,80
    80004580:	02f4e4bb          	remw	s1,s1,a5
    80004584:	fc0494e3          	bnez	s1,8000454c <_ZN8Consumer3runEv+0x34>
    80004588:	fb9ff06f          	j	80004540 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000458c:	02093783          	ld	a5,32(s2)
    80004590:	0087b503          	ld	a0,8(a5)
    80004594:	00001097          	auipc	ra,0x1
    80004598:	604080e7          	jalr	1540(ra) # 80005b98 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000459c:	0ff57513          	andi	a0,a0,255
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	6ac080e7          	jalr	1708(ra) # 80002c4c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800045a8:	02093783          	ld	a5,32(s2)
    800045ac:	0087b503          	ld	a0,8(a5)
    800045b0:	00001097          	auipc	ra,0x1
    800045b4:	674080e7          	jalr	1652(ra) # 80005c24 <_ZN9BufferCPP6getCntEv>
    800045b8:	fca04ae3          	bgtz	a0,8000458c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800045bc:	02093783          	ld	a5,32(s2)
    800045c0:	0107b503          	ld	a0,16(a5)
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	65c080e7          	jalr	1628(ra) # 80002c20 <_ZN9Semaphore6signalEv>
    }
    800045cc:	02813083          	ld	ra,40(sp)
    800045d0:	02013403          	ld	s0,32(sp)
    800045d4:	01813483          	ld	s1,24(sp)
    800045d8:	01013903          	ld	s2,16(sp)
    800045dc:	00813983          	ld	s3,8(sp)
    800045e0:	03010113          	addi	sp,sp,48
    800045e4:	00008067          	ret

00000000800045e8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800045e8:	ff010113          	addi	sp,sp,-16
    800045ec:	00113423          	sd	ra,8(sp)
    800045f0:	00813023          	sd	s0,0(sp)
    800045f4:	01010413          	addi	s0,sp,16
    800045f8:	00007797          	auipc	a5,0x7
    800045fc:	16878793          	addi	a5,a5,360 # 8000b760 <_ZTV8Consumer+0x10>
    80004600:	00f53023          	sd	a5,0(a0)
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	38c080e7          	jalr	908(ra) # 80002990 <_ZN6ThreadD1Ev>
    8000460c:	00813083          	ld	ra,8(sp)
    80004610:	00013403          	ld	s0,0(sp)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret

000000008000461c <_ZN8ConsumerD0Ev>:
    8000461c:	fe010113          	addi	sp,sp,-32
    80004620:	00113c23          	sd	ra,24(sp)
    80004624:	00813823          	sd	s0,16(sp)
    80004628:	00913423          	sd	s1,8(sp)
    8000462c:	02010413          	addi	s0,sp,32
    80004630:	00050493          	mv	s1,a0
    80004634:	00007797          	auipc	a5,0x7
    80004638:	12c78793          	addi	a5,a5,300 # 8000b760 <_ZTV8Consumer+0x10>
    8000463c:	00f53023          	sd	a5,0(a0)
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	350080e7          	jalr	848(ra) # 80002990 <_ZN6ThreadD1Ev>
    80004648:	00048513          	mv	a0,s1
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	2dc080e7          	jalr	732(ra) # 80002928 <_ZdlPv>
    80004654:	01813083          	ld	ra,24(sp)
    80004658:	01013403          	ld	s0,16(sp)
    8000465c:	00813483          	ld	s1,8(sp)
    80004660:	02010113          	addi	sp,sp,32
    80004664:	00008067          	ret

0000000080004668 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004668:	ff010113          	addi	sp,sp,-16
    8000466c:	00113423          	sd	ra,8(sp)
    80004670:	00813023          	sd	s0,0(sp)
    80004674:	01010413          	addi	s0,sp,16
    80004678:	00007797          	auipc	a5,0x7
    8000467c:	09878793          	addi	a5,a5,152 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    80004680:	00f53023          	sd	a5,0(a0)
    80004684:	ffffe097          	auipc	ra,0xffffe
    80004688:	30c080e7          	jalr	780(ra) # 80002990 <_ZN6ThreadD1Ev>
    8000468c:	00813083          	ld	ra,8(sp)
    80004690:	00013403          	ld	s0,0(sp)
    80004694:	01010113          	addi	sp,sp,16
    80004698:	00008067          	ret

000000008000469c <_ZN16ProducerKeyboradD0Ev>:
    8000469c:	fe010113          	addi	sp,sp,-32
    800046a0:	00113c23          	sd	ra,24(sp)
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00913423          	sd	s1,8(sp)
    800046ac:	02010413          	addi	s0,sp,32
    800046b0:	00050493          	mv	s1,a0
    800046b4:	00007797          	auipc	a5,0x7
    800046b8:	05c78793          	addi	a5,a5,92 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    800046bc:	00f53023          	sd	a5,0(a0)
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	2d0080e7          	jalr	720(ra) # 80002990 <_ZN6ThreadD1Ev>
    800046c8:	00048513          	mv	a0,s1
    800046cc:	ffffe097          	auipc	ra,0xffffe
    800046d0:	25c080e7          	jalr	604(ra) # 80002928 <_ZdlPv>
    800046d4:	01813083          	ld	ra,24(sp)
    800046d8:	01013403          	ld	s0,16(sp)
    800046dc:	00813483          	ld	s1,8(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret

00000000800046e8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800046e8:	ff010113          	addi	sp,sp,-16
    800046ec:	00113423          	sd	ra,8(sp)
    800046f0:	00813023          	sd	s0,0(sp)
    800046f4:	01010413          	addi	s0,sp,16
    800046f8:	00007797          	auipc	a5,0x7
    800046fc:	04078793          	addi	a5,a5,64 # 8000b738 <_ZTV8Producer+0x10>
    80004700:	00f53023          	sd	a5,0(a0)
    80004704:	ffffe097          	auipc	ra,0xffffe
    80004708:	28c080e7          	jalr	652(ra) # 80002990 <_ZN6ThreadD1Ev>
    8000470c:	00813083          	ld	ra,8(sp)
    80004710:	00013403          	ld	s0,0(sp)
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00008067          	ret

000000008000471c <_ZN8ProducerD0Ev>:
    8000471c:	fe010113          	addi	sp,sp,-32
    80004720:	00113c23          	sd	ra,24(sp)
    80004724:	00813823          	sd	s0,16(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	02010413          	addi	s0,sp,32
    80004730:	00050493          	mv	s1,a0
    80004734:	00007797          	auipc	a5,0x7
    80004738:	00478793          	addi	a5,a5,4 # 8000b738 <_ZTV8Producer+0x10>
    8000473c:	00f53023          	sd	a5,0(a0)
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	250080e7          	jalr	592(ra) # 80002990 <_ZN6ThreadD1Ev>
    80004748:	00048513          	mv	a0,s1
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	1dc080e7          	jalr	476(ra) # 80002928 <_ZdlPv>
    80004754:	01813083          	ld	ra,24(sp)
    80004758:	01013403          	ld	s0,16(sp)
    8000475c:	00813483          	ld	s1,8(sp)
    80004760:	02010113          	addi	sp,sp,32
    80004764:	00008067          	ret

0000000080004768 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004768:	fe010113          	addi	sp,sp,-32
    8000476c:	00113c23          	sd	ra,24(sp)
    80004770:	00813823          	sd	s0,16(sp)
    80004774:	00913423          	sd	s1,8(sp)
    80004778:	02010413          	addi	s0,sp,32
    8000477c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	ff4080e7          	jalr	-12(ra) # 80001774 <_Z4getcv>
    80004788:	0005059b          	sext.w	a1,a0
    8000478c:	01b00793          	li	a5,27
    80004790:	00f58c63          	beq	a1,a5,800047a8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004794:	0204b783          	ld	a5,32(s1)
    80004798:	0087b503          	ld	a0,8(a5)
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	36c080e7          	jalr	876(ra) # 80005b08 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800047a4:	fddff06f          	j	80004780 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800047a8:	00100793          	li	a5,1
    800047ac:	00007717          	auipc	a4,0x7
    800047b0:	12f72223          	sw	a5,292(a4) # 8000b8d0 <_ZL9threadEnd>
        td->buffer->put('!');
    800047b4:	0204b783          	ld	a5,32(s1)
    800047b8:	02100593          	li	a1,33
    800047bc:	0087b503          	ld	a0,8(a5)
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	348080e7          	jalr	840(ra) # 80005b08 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800047c8:	0204b783          	ld	a5,32(s1)
    800047cc:	0107b503          	ld	a0,16(a5)
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	450080e7          	jalr	1104(ra) # 80002c20 <_ZN9Semaphore6signalEv>
    }
    800047d8:	01813083          	ld	ra,24(sp)
    800047dc:	01013403          	ld	s0,16(sp)
    800047e0:	00813483          	ld	s1,8(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <_ZN8Producer3runEv>:
    void run() override {
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00113c23          	sd	ra,24(sp)
    800047f4:	00813823          	sd	s0,16(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	01213023          	sd	s2,0(sp)
    80004800:	02010413          	addi	s0,sp,32
    80004804:	00050493          	mv	s1,a0
        int i = 0;
    80004808:	00000913          	li	s2,0
        while (!threadEnd) {
    8000480c:	00007797          	auipc	a5,0x7
    80004810:	0c47a783          	lw	a5,196(a5) # 8000b8d0 <_ZL9threadEnd>
    80004814:	04079263          	bnez	a5,80004858 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004818:	0204b783          	ld	a5,32(s1)
    8000481c:	0007a583          	lw	a1,0(a5)
    80004820:	0305859b          	addiw	a1,a1,48
    80004824:	0087b503          	ld	a0,8(a5)
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	2e0080e7          	jalr	736(ra) # 80005b08 <_ZN9BufferCPP3putEi>
            i++;
    80004830:	0019071b          	addiw	a4,s2,1
    80004834:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004838:	0204b783          	ld	a5,32(s1)
    8000483c:	0007a783          	lw	a5,0(a5)
    80004840:	00e787bb          	addw	a5,a5,a4
    80004844:	00500513          	li	a0,5
    80004848:	02a7e53b          	remw	a0,a5,a0
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	354080e7          	jalr	852(ra) # 80002ba0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004854:	fb9ff06f          	j	8000480c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004858:	0204b783          	ld	a5,32(s1)
    8000485c:	0107b503          	ld	a0,16(a5)
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	3c0080e7          	jalr	960(ra) # 80002c20 <_ZN9Semaphore6signalEv>
    }
    80004868:	01813083          	ld	ra,24(sp)
    8000486c:	01013403          	ld	s0,16(sp)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	00013903          	ld	s2,0(sp)
    80004878:	02010113          	addi	sp,sp,32
    8000487c:	00008067          	ret

0000000080004880 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004880:	fe010113          	addi	sp,sp,-32
    80004884:	00113c23          	sd	ra,24(sp)
    80004888:	00813823          	sd	s0,16(sp)
    8000488c:	00913423          	sd	s1,8(sp)
    80004890:	01213023          	sd	s2,0(sp)
    80004894:	02010413          	addi	s0,sp,32
    80004898:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000489c:	00100793          	li	a5,1
    800048a0:	02a7f863          	bgeu	a5,a0,800048d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048a4:	00a00793          	li	a5,10
    800048a8:	02f577b3          	remu	a5,a0,a5
    800048ac:	02078e63          	beqz	a5,800048e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048b0:	fff48513          	addi	a0,s1,-1
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	fcc080e7          	jalr	-52(ra) # 80004880 <_ZL9fibonaccim>
    800048bc:	00050913          	mv	s2,a0
    800048c0:	ffe48513          	addi	a0,s1,-2
    800048c4:	00000097          	auipc	ra,0x0
    800048c8:	fbc080e7          	jalr	-68(ra) # 80004880 <_ZL9fibonaccim>
    800048cc:	00a90533          	add	a0,s2,a0
}
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	d94080e7          	jalr	-620(ra) # 8000167c <_Z15thread_dispatchv>
    800048f0:	fc1ff06f          	j	800048b0 <_ZL9fibonaccim+0x30>

00000000800048f4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800048f4:	fe010113          	addi	sp,sp,-32
    800048f8:	00113c23          	sd	ra,24(sp)
    800048fc:	00813823          	sd	s0,16(sp)
    80004900:	00913423          	sd	s1,8(sp)
    80004904:	01213023          	sd	s2,0(sp)
    80004908:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000490c:	00a00493          	li	s1,10
    80004910:	0400006f          	j	80004950 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	a7c50513          	addi	a0,a0,-1412 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	dc8080e7          	jalr	-568(ra) # 800056e4 <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	00048513          	mv	a0,s1
    80004930:	00001097          	auipc	ra,0x1
    80004934:	f64080e7          	jalr	-156(ra) # 80005894 <_Z8printIntiii>
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	87050513          	addi	a0,a0,-1936 # 800091a8 <CONSOLE_STATUS+0x198>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	da4080e7          	jalr	-604(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004948:	0014849b          	addiw	s1,s1,1
    8000494c:	0ff4f493          	andi	s1,s1,255
    80004950:	00c00793          	li	a5,12
    80004954:	fc97f0e3          	bgeu	a5,s1,80004914 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004958:	00005517          	auipc	a0,0x5
    8000495c:	a4050513          	addi	a0,a0,-1472 # 80009398 <_ZZ12printIntegermE6digits+0x148>
    80004960:	00001097          	auipc	ra,0x1
    80004964:	d84080e7          	jalr	-636(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004968:	00500313          	li	t1,5
    thread_dispatch();
    8000496c:	ffffd097          	auipc	ra,0xffffd
    80004970:	d10080e7          	jalr	-752(ra) # 8000167c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004974:	01000513          	li	a0,16
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	f08080e7          	jalr	-248(ra) # 80004880 <_ZL9fibonaccim>
    80004980:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004984:	00005517          	auipc	a0,0x5
    80004988:	a2450513          	addi	a0,a0,-1500 # 800093a8 <_ZZ12printIntegermE6digits+0x158>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	d58080e7          	jalr	-680(ra) # 800056e4 <_Z11printStringPKc>
    80004994:	00000613          	li	a2,0
    80004998:	00a00593          	li	a1,10
    8000499c:	0009051b          	sext.w	a0,s2
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	ef4080e7          	jalr	-268(ra) # 80005894 <_Z8printIntiii>
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	80050513          	addi	a0,a0,-2048 # 800091a8 <CONSOLE_STATUS+0x198>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	d34080e7          	jalr	-716(ra) # 800056e4 <_Z11printStringPKc>
    800049b8:	0400006f          	j	800049f8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	9d450513          	addi	a0,a0,-1580 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	d20080e7          	jalr	-736(ra) # 800056e4 <_Z11printStringPKc>
    800049cc:	00000613          	li	a2,0
    800049d0:	00a00593          	li	a1,10
    800049d4:	00048513          	mv	a0,s1
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	ebc080e7          	jalr	-324(ra) # 80005894 <_Z8printIntiii>
    800049e0:	00004517          	auipc	a0,0x4
    800049e4:	7c850513          	addi	a0,a0,1992 # 800091a8 <CONSOLE_STATUS+0x198>
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	cfc080e7          	jalr	-772(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800049f0:	0014849b          	addiw	s1,s1,1
    800049f4:	0ff4f493          	andi	s1,s1,255
    800049f8:	00f00793          	li	a5,15
    800049fc:	fc97f0e3          	bgeu	a5,s1,800049bc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	9b850513          	addi	a0,a0,-1608 # 800093b8 <_ZZ12printIntegermE6digits+0x168>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	cdc080e7          	jalr	-804(ra) # 800056e4 <_Z11printStringPKc>
    finishedD = true;
    80004a10:	00100793          	li	a5,1
    80004a14:	00007717          	auipc	a4,0x7
    80004a18:	ecf70623          	sb	a5,-308(a4) # 8000b8e0 <_ZL9finishedD>
    thread_dispatch();
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	c60080e7          	jalr	-928(ra) # 8000167c <_Z15thread_dispatchv>
}
    80004a24:	01813083          	ld	ra,24(sp)
    80004a28:	01013403          	ld	s0,16(sp)
    80004a2c:	00813483          	ld	s1,8(sp)
    80004a30:	00013903          	ld	s2,0(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret

0000000080004a3c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a3c:	fe010113          	addi	sp,sp,-32
    80004a40:	00113c23          	sd	ra,24(sp)
    80004a44:	00813823          	sd	s0,16(sp)
    80004a48:	00913423          	sd	s1,8(sp)
    80004a4c:	01213023          	sd	s2,0(sp)
    80004a50:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004a54:	00000493          	li	s1,0
    80004a58:	0400006f          	j	80004a98 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	90450513          	addi	a0,a0,-1788 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	c80080e7          	jalr	-896(ra) # 800056e4 <_Z11printStringPKc>
    80004a6c:	00000613          	li	a2,0
    80004a70:	00a00593          	li	a1,10
    80004a74:	00048513          	mv	a0,s1
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	e1c080e7          	jalr	-484(ra) # 80005894 <_Z8printIntiii>
    80004a80:	00004517          	auipc	a0,0x4
    80004a84:	72850513          	addi	a0,a0,1832 # 800091a8 <CONSOLE_STATUS+0x198>
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	c5c080e7          	jalr	-932(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004a90:	0014849b          	addiw	s1,s1,1
    80004a94:	0ff4f493          	andi	s1,s1,255
    80004a98:	00200793          	li	a5,2
    80004a9c:	fc97f0e3          	bgeu	a5,s1,80004a5c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	8c850513          	addi	a0,a0,-1848 # 80009368 <_ZZ12printIntegermE6digits+0x118>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	c3c080e7          	jalr	-964(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ab0:	00700313          	li	t1,7
    thread_dispatch();
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	bc8080e7          	jalr	-1080(ra) # 8000167c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004abc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004ac0:	00005517          	auipc	a0,0x5
    80004ac4:	8b850513          	addi	a0,a0,-1864 # 80009378 <_ZZ12printIntegermE6digits+0x128>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	c1c080e7          	jalr	-996(ra) # 800056e4 <_Z11printStringPKc>
    80004ad0:	00000613          	li	a2,0
    80004ad4:	00a00593          	li	a1,10
    80004ad8:	0009051b          	sext.w	a0,s2
    80004adc:	00001097          	auipc	ra,0x1
    80004ae0:	db8080e7          	jalr	-584(ra) # 80005894 <_Z8printIntiii>
    80004ae4:	00004517          	auipc	a0,0x4
    80004ae8:	6c450513          	addi	a0,a0,1732 # 800091a8 <CONSOLE_STATUS+0x198>
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	bf8080e7          	jalr	-1032(ra) # 800056e4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004af4:	00c00513          	li	a0,12
    80004af8:	00000097          	auipc	ra,0x0
    80004afc:	d88080e7          	jalr	-632(ra) # 80004880 <_ZL9fibonaccim>
    80004b00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b04:	00005517          	auipc	a0,0x5
    80004b08:	87c50513          	addi	a0,a0,-1924 # 80009380 <_ZZ12printIntegermE6digits+0x130>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	bd8080e7          	jalr	-1064(ra) # 800056e4 <_Z11printStringPKc>
    80004b14:	00000613          	li	a2,0
    80004b18:	00a00593          	li	a1,10
    80004b1c:	0009051b          	sext.w	a0,s2
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	d74080e7          	jalr	-652(ra) # 80005894 <_Z8printIntiii>
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	68050513          	addi	a0,a0,1664 # 800091a8 <CONSOLE_STATUS+0x198>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	bb4080e7          	jalr	-1100(ra) # 800056e4 <_Z11printStringPKc>
    80004b38:	0400006f          	j	80004b78 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b3c:	00005517          	auipc	a0,0x5
    80004b40:	82450513          	addi	a0,a0,-2012 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	ba0080e7          	jalr	-1120(ra) # 800056e4 <_Z11printStringPKc>
    80004b4c:	00000613          	li	a2,0
    80004b50:	00a00593          	li	a1,10
    80004b54:	00048513          	mv	a0,s1
    80004b58:	00001097          	auipc	ra,0x1
    80004b5c:	d3c080e7          	jalr	-708(ra) # 80005894 <_Z8printIntiii>
    80004b60:	00004517          	auipc	a0,0x4
    80004b64:	64850513          	addi	a0,a0,1608 # 800091a8 <CONSOLE_STATUS+0x198>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	b7c080e7          	jalr	-1156(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004b70:	0014849b          	addiw	s1,s1,1
    80004b74:	0ff4f493          	andi	s1,s1,255
    80004b78:	00500793          	li	a5,5
    80004b7c:	fc97f0e3          	bgeu	a5,s1,80004b3c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004b80:	00004517          	auipc	a0,0x4
    80004b84:	7c050513          	addi	a0,a0,1984 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	b5c080e7          	jalr	-1188(ra) # 800056e4 <_Z11printStringPKc>
    finishedC = true;
    80004b90:	00100793          	li	a5,1
    80004b94:	00007717          	auipc	a4,0x7
    80004b98:	d4f706a3          	sb	a5,-691(a4) # 8000b8e1 <_ZL9finishedC>
    thread_dispatch();
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	ae0080e7          	jalr	-1312(ra) # 8000167c <_Z15thread_dispatchv>
}
    80004ba4:	01813083          	ld	ra,24(sp)
    80004ba8:	01013403          	ld	s0,16(sp)
    80004bac:	00813483          	ld	s1,8(sp)
    80004bb0:	00013903          	ld	s2,0(sp)
    80004bb4:	02010113          	addi	sp,sp,32
    80004bb8:	00008067          	ret

0000000080004bbc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00113c23          	sd	ra,24(sp)
    80004bc4:	00813823          	sd	s0,16(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	01213023          	sd	s2,0(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004bd4:	00000913          	li	s2,0
    80004bd8:	0380006f          	j	80004c10 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	aa0080e7          	jalr	-1376(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004be4:	00148493          	addi	s1,s1,1
    80004be8:	000027b7          	lui	a5,0x2
    80004bec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004bf0:	0097ee63          	bltu	a5,s1,80004c0c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004bf4:	00000713          	li	a4,0
    80004bf8:	000077b7          	lui	a5,0x7
    80004bfc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c00:	fce7eee3          	bltu	a5,a4,80004bdc <_ZL11workerBodyBPv+0x20>
    80004c04:	00170713          	addi	a4,a4,1
    80004c08:	ff1ff06f          	j	80004bf8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c0c:	00190913          	addi	s2,s2,1
    80004c10:	00f00793          	li	a5,15
    80004c14:	0527e063          	bltu	a5,s2,80004c54 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c18:	00004517          	auipc	a0,0x4
    80004c1c:	43850513          	addi	a0,a0,1080 # 80009050 <CONSOLE_STATUS+0x40>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	ac4080e7          	jalr	-1340(ra) # 800056e4 <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	0009051b          	sext.w	a0,s2
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	c60080e7          	jalr	-928(ra) # 80005894 <_Z8printIntiii>
    80004c3c:	00004517          	auipc	a0,0x4
    80004c40:	56c50513          	addi	a0,a0,1388 # 800091a8 <CONSOLE_STATUS+0x198>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	aa0080e7          	jalr	-1376(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c4c:	00000493          	li	s1,0
    80004c50:	f99ff06f          	j	80004be8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	6fc50513          	addi	a0,a0,1788 # 80009350 <_ZZ12printIntegermE6digits+0x100>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	a88080e7          	jalr	-1400(ra) # 800056e4 <_Z11printStringPKc>
    finishedB = true;
    80004c64:	00100793          	li	a5,1
    80004c68:	00007717          	auipc	a4,0x7
    80004c6c:	c6f70d23          	sb	a5,-902(a4) # 8000b8e2 <_ZL9finishedB>
    thread_dispatch();
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	a0c080e7          	jalr	-1524(ra) # 8000167c <_Z15thread_dispatchv>
}
    80004c78:	01813083          	ld	ra,24(sp)
    80004c7c:	01013403          	ld	s0,16(sp)
    80004c80:	00813483          	ld	s1,8(sp)
    80004c84:	00013903          	ld	s2,0(sp)
    80004c88:	02010113          	addi	sp,sp,32
    80004c8c:	00008067          	ret

0000000080004c90 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004c90:	fe010113          	addi	sp,sp,-32
    80004c94:	00113c23          	sd	ra,24(sp)
    80004c98:	00813823          	sd	s0,16(sp)
    80004c9c:	00913423          	sd	s1,8(sp)
    80004ca0:	01213023          	sd	s2,0(sp)
    80004ca4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ca8:	00000913          	li	s2,0
    80004cac:	0380006f          	j	80004ce4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	9cc080e7          	jalr	-1588(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cb8:	00148493          	addi	s1,s1,1
    80004cbc:	000027b7          	lui	a5,0x2
    80004cc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cc4:	0097ee63          	bltu	a5,s1,80004ce0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004cc8:	00000713          	li	a4,0
    80004ccc:	000077b7          	lui	a5,0x7
    80004cd0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cd4:	fce7eee3          	bltu	a5,a4,80004cb0 <_ZL11workerBodyAPv+0x20>
    80004cd8:	00170713          	addi	a4,a4,1
    80004cdc:	ff1ff06f          	j	80004ccc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ce0:	00190913          	addi	s2,s2,1
    80004ce4:	00900793          	li	a5,9
    80004ce8:	0527e063          	bltu	a5,s2,80004d28 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	33450513          	addi	a0,a0,820 # 80009020 <CONSOLE_STATUS+0x10>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	9f0080e7          	jalr	-1552(ra) # 800056e4 <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	0009051b          	sext.w	a0,s2
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	b8c080e7          	jalr	-1140(ra) # 80005894 <_Z8printIntiii>
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	49850513          	addi	a0,a0,1176 # 800091a8 <CONSOLE_STATUS+0x198>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	9cc080e7          	jalr	-1588(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d20:	00000493          	li	s1,0
    80004d24:	f99ff06f          	j	80004cbc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d28:	00004517          	auipc	a0,0x4
    80004d2c:	61850513          	addi	a0,a0,1560 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	9b4080e7          	jalr	-1612(ra) # 800056e4 <_Z11printStringPKc>
    finishedA = true;
    80004d38:	00100793          	li	a5,1
    80004d3c:	00007717          	auipc	a4,0x7
    80004d40:	baf703a3          	sb	a5,-1113(a4) # 8000b8e3 <_ZL9finishedA>
}
    80004d44:	01813083          	ld	ra,24(sp)
    80004d48:	01013403          	ld	s0,16(sp)
    80004d4c:	00813483          	ld	s1,8(sp)
    80004d50:	00013903          	ld	s2,0(sp)
    80004d54:	02010113          	addi	sp,sp,32
    80004d58:	00008067          	ret

0000000080004d5c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004d5c:	fd010113          	addi	sp,sp,-48
    80004d60:	02113423          	sd	ra,40(sp)
    80004d64:	02813023          	sd	s0,32(sp)
    80004d68:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004d6c:	00000613          	li	a2,0
    80004d70:	00000597          	auipc	a1,0x0
    80004d74:	f2058593          	addi	a1,a1,-224 # 80004c90 <_ZL11workerBodyAPv>
    80004d78:	fd040513          	addi	a0,s0,-48
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	85c080e7          	jalr	-1956(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004d84:	00004517          	auipc	a0,0x4
    80004d88:	43450513          	addi	a0,a0,1076 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	958080e7          	jalr	-1704(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004d94:	00000613          	li	a2,0
    80004d98:	00000597          	auipc	a1,0x0
    80004d9c:	e2458593          	addi	a1,a1,-476 # 80004bbc <_ZL11workerBodyBPv>
    80004da0:	fd840513          	addi	a0,s0,-40
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	834080e7          	jalr	-1996(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004dac:	00004517          	auipc	a0,0x4
    80004db0:	42450513          	addi	a0,a0,1060 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	930080e7          	jalr	-1744(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004dbc:	00000613          	li	a2,0
    80004dc0:	00000597          	auipc	a1,0x0
    80004dc4:	c7c58593          	addi	a1,a1,-900 # 80004a3c <_ZL11workerBodyCPv>
    80004dc8:	fe040513          	addi	a0,s0,-32
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	80c080e7          	jalr	-2036(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004dd4:	00004517          	auipc	a0,0x4
    80004dd8:	41450513          	addi	a0,a0,1044 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	908080e7          	jalr	-1784(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004de4:	00000613          	li	a2,0
    80004de8:	00000597          	auipc	a1,0x0
    80004dec:	b0c58593          	addi	a1,a1,-1268 # 800048f4 <_ZL11workerBodyDPv>
    80004df0:	fe840513          	addi	a0,s0,-24
    80004df4:	ffffc097          	auipc	ra,0xffffc
    80004df8:	7e4080e7          	jalr	2020(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	40450513          	addi	a0,a0,1028 # 80009200 <CONSOLE_STATUS+0x1f0>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	8e0080e7          	jalr	-1824(ra) # 800056e4 <_Z11printStringPKc>
    80004e0c:	00c0006f          	j	80004e18 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	86c080e7          	jalr	-1940(ra) # 8000167c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e18:	00007797          	auipc	a5,0x7
    80004e1c:	acb7c783          	lbu	a5,-1333(a5) # 8000b8e3 <_ZL9finishedA>
    80004e20:	fe0788e3          	beqz	a5,80004e10 <_Z18Threads_C_API_testv+0xb4>
    80004e24:	00007797          	auipc	a5,0x7
    80004e28:	abe7c783          	lbu	a5,-1346(a5) # 8000b8e2 <_ZL9finishedB>
    80004e2c:	fe0782e3          	beqz	a5,80004e10 <_Z18Threads_C_API_testv+0xb4>
    80004e30:	00007797          	auipc	a5,0x7
    80004e34:	ab17c783          	lbu	a5,-1359(a5) # 8000b8e1 <_ZL9finishedC>
    80004e38:	fc078ce3          	beqz	a5,80004e10 <_Z18Threads_C_API_testv+0xb4>
    80004e3c:	00007797          	auipc	a5,0x7
    80004e40:	aa47c783          	lbu	a5,-1372(a5) # 8000b8e0 <_ZL9finishedD>
    80004e44:	fc0786e3          	beqz	a5,80004e10 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004e48:	02813083          	ld	ra,40(sp)
    80004e4c:	02013403          	ld	s0,32(sp)
    80004e50:	03010113          	addi	sp,sp,48
    80004e54:	00008067          	ret

0000000080004e58 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004e58:	fd010113          	addi	sp,sp,-48
    80004e5c:	02113423          	sd	ra,40(sp)
    80004e60:	02813023          	sd	s0,32(sp)
    80004e64:	00913c23          	sd	s1,24(sp)
    80004e68:	01213823          	sd	s2,16(sp)
    80004e6c:	01313423          	sd	s3,8(sp)
    80004e70:	03010413          	addi	s0,sp,48
    80004e74:	00050993          	mv	s3,a0
    80004e78:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004e7c:	00000913          	li	s2,0
    80004e80:	00c0006f          	j	80004e8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004e84:	ffffe097          	auipc	ra,0xffffe
    80004e88:	c1c080e7          	jalr	-996(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'A') {
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	8e8080e7          	jalr	-1816(ra) # 80001774 <_Z4getcv>
    80004e94:	0005059b          	sext.w	a1,a0
    80004e98:	04100793          	li	a5,65
    80004e9c:	02f58a63          	beq	a1,a5,80004ed0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ea0:	0084b503          	ld	a0,8(s1)
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	c64080e7          	jalr	-924(ra) # 80005b08 <_ZN9BufferCPP3putEi>
        i++;
    80004eac:	0019071b          	addiw	a4,s2,1
    80004eb0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004eb4:	0004a683          	lw	a3,0(s1)
    80004eb8:	0026979b          	slliw	a5,a3,0x2
    80004ebc:	00d787bb          	addw	a5,a5,a3
    80004ec0:	0017979b          	slliw	a5,a5,0x1
    80004ec4:	02f767bb          	remw	a5,a4,a5
    80004ec8:	fc0792e3          	bnez	a5,80004e8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ecc:	fb9ff06f          	j	80004e84 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004ed0:	00100793          	li	a5,1
    80004ed4:	00007717          	auipc	a4,0x7
    80004ed8:	a0f72a23          	sw	a5,-1516(a4) # 8000b8e8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004edc:	0209b783          	ld	a5,32(s3)
    80004ee0:	02100593          	li	a1,33
    80004ee4:	0087b503          	ld	a0,8(a5)
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	c20080e7          	jalr	-992(ra) # 80005b08 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004ef0:	0104b503          	ld	a0,16(s1)
    80004ef4:	ffffe097          	auipc	ra,0xffffe
    80004ef8:	d2c080e7          	jalr	-724(ra) # 80002c20 <_ZN9Semaphore6signalEv>
}
    80004efc:	02813083          	ld	ra,40(sp)
    80004f00:	02013403          	ld	s0,32(sp)
    80004f04:	01813483          	ld	s1,24(sp)
    80004f08:	01013903          	ld	s2,16(sp)
    80004f0c:	00813983          	ld	s3,8(sp)
    80004f10:	03010113          	addi	sp,sp,48
    80004f14:	00008067          	ret

0000000080004f18 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f18:	fe010113          	addi	sp,sp,-32
    80004f1c:	00113c23          	sd	ra,24(sp)
    80004f20:	00813823          	sd	s0,16(sp)
    80004f24:	00913423          	sd	s1,8(sp)
    80004f28:	01213023          	sd	s2,0(sp)
    80004f2c:	02010413          	addi	s0,sp,32
    80004f30:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f34:	00000913          	li	s2,0
    80004f38:	00c0006f          	j	80004f44 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f3c:	ffffe097          	auipc	ra,0xffffe
    80004f40:	b64080e7          	jalr	-1180(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004f44:	00007797          	auipc	a5,0x7
    80004f48:	9a47a783          	lw	a5,-1628(a5) # 8000b8e8 <_ZL9threadEnd>
    80004f4c:	02079e63          	bnez	a5,80004f88 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004f50:	0004a583          	lw	a1,0(s1)
    80004f54:	0305859b          	addiw	a1,a1,48
    80004f58:	0084b503          	ld	a0,8(s1)
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	bac080e7          	jalr	-1108(ra) # 80005b08 <_ZN9BufferCPP3putEi>
        i++;
    80004f64:	0019071b          	addiw	a4,s2,1
    80004f68:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f6c:	0004a683          	lw	a3,0(s1)
    80004f70:	0026979b          	slliw	a5,a3,0x2
    80004f74:	00d787bb          	addw	a5,a5,a3
    80004f78:	0017979b          	slliw	a5,a5,0x1
    80004f7c:	02f767bb          	remw	a5,a4,a5
    80004f80:	fc0792e3          	bnez	a5,80004f44 <_ZN12ProducerSync8producerEPv+0x2c>
    80004f84:	fb9ff06f          	j	80004f3c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004f88:	0104b503          	ld	a0,16(s1)
    80004f8c:	ffffe097          	auipc	ra,0xffffe
    80004f90:	c94080e7          	jalr	-876(ra) # 80002c20 <_ZN9Semaphore6signalEv>
}
    80004f94:	01813083          	ld	ra,24(sp)
    80004f98:	01013403          	ld	s0,16(sp)
    80004f9c:	00813483          	ld	s1,8(sp)
    80004fa0:	00013903          	ld	s2,0(sp)
    80004fa4:	02010113          	addi	sp,sp,32
    80004fa8:	00008067          	ret

0000000080004fac <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004fac:	fd010113          	addi	sp,sp,-48
    80004fb0:	02113423          	sd	ra,40(sp)
    80004fb4:	02813023          	sd	s0,32(sp)
    80004fb8:	00913c23          	sd	s1,24(sp)
    80004fbc:	01213823          	sd	s2,16(sp)
    80004fc0:	01313423          	sd	s3,8(sp)
    80004fc4:	01413023          	sd	s4,0(sp)
    80004fc8:	03010413          	addi	s0,sp,48
    80004fcc:	00050993          	mv	s3,a0
    80004fd0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fd4:	00000a13          	li	s4,0
    80004fd8:	01c0006f          	j	80004ff4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004fdc:	ffffe097          	auipc	ra,0xffffe
    80004fe0:	ac4080e7          	jalr	-1340(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    80004fe4:	0500006f          	j	80005034 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004fe8:	00a00513          	li	a0,10
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	7b0080e7          	jalr	1968(ra) # 8000179c <_Z4putcc>
    while (!threadEnd) {
    80004ff4:	00007797          	auipc	a5,0x7
    80004ff8:	8f47a783          	lw	a5,-1804(a5) # 8000b8e8 <_ZL9threadEnd>
    80004ffc:	06079263          	bnez	a5,80005060 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005000:	00893503          	ld	a0,8(s2)
    80005004:	00001097          	auipc	ra,0x1
    80005008:	b94080e7          	jalr	-1132(ra) # 80005b98 <_ZN9BufferCPP3getEv>
        i++;
    8000500c:	001a049b          	addiw	s1,s4,1
    80005010:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005014:	0ff57513          	andi	a0,a0,255
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	784080e7          	jalr	1924(ra) # 8000179c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005020:	00092703          	lw	a4,0(s2)
    80005024:	0027179b          	slliw	a5,a4,0x2
    80005028:	00e787bb          	addw	a5,a5,a4
    8000502c:	02f4e7bb          	remw	a5,s1,a5
    80005030:	fa0786e3          	beqz	a5,80004fdc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005034:	05000793          	li	a5,80
    80005038:	02f4e4bb          	remw	s1,s1,a5
    8000503c:	fa049ce3          	bnez	s1,80004ff4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005040:	fa9ff06f          	j	80004fe8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005044:	0209b783          	ld	a5,32(s3)
    80005048:	0087b503          	ld	a0,8(a5)
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	b4c080e7          	jalr	-1204(ra) # 80005b98 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005054:	0ff57513          	andi	a0,a0,255
    80005058:	ffffe097          	auipc	ra,0xffffe
    8000505c:	bf4080e7          	jalr	-1036(ra) # 80002c4c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005060:	0209b783          	ld	a5,32(s3)
    80005064:	0087b503          	ld	a0,8(a5)
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	bbc080e7          	jalr	-1092(ra) # 80005c24 <_ZN9BufferCPP6getCntEv>
    80005070:	fca04ae3          	bgtz	a0,80005044 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005074:	01093503          	ld	a0,16(s2)
    80005078:	ffffe097          	auipc	ra,0xffffe
    8000507c:	ba8080e7          	jalr	-1112(ra) # 80002c20 <_ZN9Semaphore6signalEv>
}
    80005080:	02813083          	ld	ra,40(sp)
    80005084:	02013403          	ld	s0,32(sp)
    80005088:	01813483          	ld	s1,24(sp)
    8000508c:	01013903          	ld	s2,16(sp)
    80005090:	00813983          	ld	s3,8(sp)
    80005094:	00013a03          	ld	s4,0(sp)
    80005098:	03010113          	addi	sp,sp,48
    8000509c:	00008067          	ret

00000000800050a0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800050a0:	f8010113          	addi	sp,sp,-128
    800050a4:	06113c23          	sd	ra,120(sp)
    800050a8:	06813823          	sd	s0,112(sp)
    800050ac:	06913423          	sd	s1,104(sp)
    800050b0:	07213023          	sd	s2,96(sp)
    800050b4:	05313c23          	sd	s3,88(sp)
    800050b8:	05413823          	sd	s4,80(sp)
    800050bc:	05513423          	sd	s5,72(sp)
    800050c0:	05613023          	sd	s6,64(sp)
    800050c4:	03713c23          	sd	s7,56(sp)
    800050c8:	03813823          	sd	s8,48(sp)
    800050cc:	03913423          	sd	s9,40(sp)
    800050d0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800050d4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800050d8:	00004517          	auipc	a0,0x4
    800050dc:	18850513          	addi	a0,a0,392 # 80009260 <_ZZ12printIntegermE6digits+0x10>
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	604080e7          	jalr	1540(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    800050e8:	01e00593          	li	a1,30
    800050ec:	f8040493          	addi	s1,s0,-128
    800050f0:	00048513          	mv	a0,s1
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	678080e7          	jalr	1656(ra) # 8000576c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800050fc:	00048513          	mv	a0,s1
    80005100:	00000097          	auipc	ra,0x0
    80005104:	744080e7          	jalr	1860(ra) # 80005844 <_Z11stringToIntPKc>
    80005108:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000510c:	00004517          	auipc	a0,0x4
    80005110:	17450513          	addi	a0,a0,372 # 80009280 <_ZZ12printIntegermE6digits+0x30>
    80005114:	00000097          	auipc	ra,0x0
    80005118:	5d0080e7          	jalr	1488(ra) # 800056e4 <_Z11printStringPKc>
    getString(input, 30);
    8000511c:	01e00593          	li	a1,30
    80005120:	00048513          	mv	a0,s1
    80005124:	00000097          	auipc	ra,0x0
    80005128:	648080e7          	jalr	1608(ra) # 8000576c <_Z9getStringPci>
    n = stringToInt(input);
    8000512c:	00048513          	mv	a0,s1
    80005130:	00000097          	auipc	ra,0x0
    80005134:	714080e7          	jalr	1812(ra) # 80005844 <_Z11stringToIntPKc>
    80005138:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000513c:	00004517          	auipc	a0,0x4
    80005140:	16450513          	addi	a0,a0,356 # 800092a0 <_ZZ12printIntegermE6digits+0x50>
    80005144:	00000097          	auipc	ra,0x0
    80005148:	5a0080e7          	jalr	1440(ra) # 800056e4 <_Z11printStringPKc>
    8000514c:	00000613          	li	a2,0
    80005150:	00a00593          	li	a1,10
    80005154:	00090513          	mv	a0,s2
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	73c080e7          	jalr	1852(ra) # 80005894 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005160:	00004517          	auipc	a0,0x4
    80005164:	15850513          	addi	a0,a0,344 # 800092b8 <_ZZ12printIntegermE6digits+0x68>
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	57c080e7          	jalr	1404(ra) # 800056e4 <_Z11printStringPKc>
    80005170:	00000613          	li	a2,0
    80005174:	00a00593          	li	a1,10
    80005178:	00048513          	mv	a0,s1
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	718080e7          	jalr	1816(ra) # 80005894 <_Z8printIntiii>
    printString(".\n");
    80005184:	00004517          	auipc	a0,0x4
    80005188:	f4c50513          	addi	a0,a0,-180 # 800090d0 <CONSOLE_STATUS+0xc0>
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	558080e7          	jalr	1368(ra) # 800056e4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005194:	0324c463          	blt	s1,s2,800051bc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005198:	03205c63          	blez	s2,800051d0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000519c:	03800513          	li	a0,56
    800051a0:	ffffd097          	auipc	ra,0xffffd
    800051a4:	738080e7          	jalr	1848(ra) # 800028d8 <_Znwm>
    800051a8:	00050a93          	mv	s5,a0
    800051ac:	00048593          	mv	a1,s1
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	804080e7          	jalr	-2044(ra) # 800059b4 <_ZN9BufferCPPC1Ei>
    800051b8:	0300006f          	j	800051e8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800051bc:	00004517          	auipc	a0,0x4
    800051c0:	11450513          	addi	a0,a0,276 # 800092d0 <_ZZ12printIntegermE6digits+0x80>
    800051c4:	00000097          	auipc	ra,0x0
    800051c8:	520080e7          	jalr	1312(ra) # 800056e4 <_Z11printStringPKc>
        return;
    800051cc:	0140006f          	j	800051e0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800051d0:	00004517          	auipc	a0,0x4
    800051d4:	14050513          	addi	a0,a0,320 # 80009310 <_ZZ12printIntegermE6digits+0xc0>
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	50c080e7          	jalr	1292(ra) # 800056e4 <_Z11printStringPKc>
        return;
    800051e0:	000b8113          	mv	sp,s7
    800051e4:	2380006f          	j	8000541c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800051e8:	01000513          	li	a0,16
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	6ec080e7          	jalr	1772(ra) # 800028d8 <_Znwm>
    800051f4:	00050493          	mv	s1,a0
    800051f8:	00000593          	li	a1,0
    800051fc:	ffffe097          	auipc	ra,0xffffe
    80005200:	9c0080e7          	jalr	-1600(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80005204:	00006797          	auipc	a5,0x6
    80005208:	6e97b623          	sd	s1,1772(a5) # 8000b8f0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000520c:	00391793          	slli	a5,s2,0x3
    80005210:	00f78793          	addi	a5,a5,15
    80005214:	ff07f793          	andi	a5,a5,-16
    80005218:	40f10133          	sub	sp,sp,a5
    8000521c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005220:	0019071b          	addiw	a4,s2,1
    80005224:	00171793          	slli	a5,a4,0x1
    80005228:	00e787b3          	add	a5,a5,a4
    8000522c:	00379793          	slli	a5,a5,0x3
    80005230:	00f78793          	addi	a5,a5,15
    80005234:	ff07f793          	andi	a5,a5,-16
    80005238:	40f10133          	sub	sp,sp,a5
    8000523c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005240:	00191c13          	slli	s8,s2,0x1
    80005244:	012c07b3          	add	a5,s8,s2
    80005248:	00379793          	slli	a5,a5,0x3
    8000524c:	00fa07b3          	add	a5,s4,a5
    80005250:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005254:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005258:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000525c:	02800513          	li	a0,40
    80005260:	ffffd097          	auipc	ra,0xffffd
    80005264:	678080e7          	jalr	1656(ra) # 800028d8 <_Znwm>
    80005268:	00050b13          	mv	s6,a0
    8000526c:	012c0c33          	add	s8,s8,s2
    80005270:	003c1c13          	slli	s8,s8,0x3
    80005274:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	8e4080e7          	jalr	-1820(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80005280:	00006797          	auipc	a5,0x6
    80005284:	55878793          	addi	a5,a5,1368 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    80005288:	00fb3023          	sd	a5,0(s6)
    8000528c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005290:	000b0513          	mv	a0,s6
    80005294:	ffffe097          	auipc	ra,0xffffe
    80005298:	898080e7          	jalr	-1896(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000529c:	00000493          	li	s1,0
    800052a0:	0380006f          	j	800052d8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800052a4:	00006797          	auipc	a5,0x6
    800052a8:	50c78793          	addi	a5,a5,1292 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    800052ac:	00fcb023          	sd	a5,0(s9)
    800052b0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800052b4:	00349793          	slli	a5,s1,0x3
    800052b8:	00f987b3          	add	a5,s3,a5
    800052bc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800052c0:	00349793          	slli	a5,s1,0x3
    800052c4:	00f987b3          	add	a5,s3,a5
    800052c8:	0007b503          	ld	a0,0(a5)
    800052cc:	ffffe097          	auipc	ra,0xffffe
    800052d0:	860080e7          	jalr	-1952(ra) # 80002b2c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052d4:	0014849b          	addiw	s1,s1,1
    800052d8:	0b24d063          	bge	s1,s2,80005378 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800052dc:	00149793          	slli	a5,s1,0x1
    800052e0:	009787b3          	add	a5,a5,s1
    800052e4:	00379793          	slli	a5,a5,0x3
    800052e8:	00fa07b3          	add	a5,s4,a5
    800052ec:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800052f0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800052f4:	00006717          	auipc	a4,0x6
    800052f8:	5fc73703          	ld	a4,1532(a4) # 8000b8f0 <_ZL10waitForAll>
    800052fc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005300:	02905863          	blez	s1,80005330 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005304:	02800513          	li	a0,40
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	5d0080e7          	jalr	1488(ra) # 800028d8 <_Znwm>
    80005310:	00050c93          	mv	s9,a0
    80005314:	00149c13          	slli	s8,s1,0x1
    80005318:	009c0c33          	add	s8,s8,s1
    8000531c:	003c1c13          	slli	s8,s8,0x3
    80005320:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005324:	ffffe097          	auipc	ra,0xffffe
    80005328:	838080e7          	jalr	-1992(ra) # 80002b5c <_ZN6ThreadC1Ev>
    8000532c:	f79ff06f          	j	800052a4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005330:	02800513          	li	a0,40
    80005334:	ffffd097          	auipc	ra,0xffffd
    80005338:	5a4080e7          	jalr	1444(ra) # 800028d8 <_Znwm>
    8000533c:	00050c93          	mv	s9,a0
    80005340:	00149c13          	slli	s8,s1,0x1
    80005344:	009c0c33          	add	s8,s8,s1
    80005348:	003c1c13          	slli	s8,s8,0x3
    8000534c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	80c080e7          	jalr	-2036(ra) # 80002b5c <_ZN6ThreadC1Ev>
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	43078793          	addi	a5,a5,1072 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    80005360:	00fcb023          	sd	a5,0(s9)
    80005364:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005368:	00349793          	slli	a5,s1,0x3
    8000536c:	00f987b3          	add	a5,s3,a5
    80005370:	0197b023          	sd	s9,0(a5)
    80005374:	f4dff06f          	j	800052c0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	728080e7          	jalr	1832(ra) # 80002aa0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005380:	00000493          	li	s1,0
    80005384:	00994e63          	blt	s2,s1,800053a0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005388:	00006517          	auipc	a0,0x6
    8000538c:	56853503          	ld	a0,1384(a0) # 8000b8f0 <_ZL10waitForAll>
    80005390:	ffffe097          	auipc	ra,0xffffe
    80005394:	864080e7          	jalr	-1948(ra) # 80002bf4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005398:	0014849b          	addiw	s1,s1,1
    8000539c:	fe9ff06f          	j	80005384 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800053a0:	00000493          	li	s1,0
    800053a4:	0080006f          	j	800053ac <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800053a8:	0014849b          	addiw	s1,s1,1
    800053ac:	0324d263          	bge	s1,s2,800053d0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800053b0:	00349793          	slli	a5,s1,0x3
    800053b4:	00f987b3          	add	a5,s3,a5
    800053b8:	0007b503          	ld	a0,0(a5)
    800053bc:	fe0506e3          	beqz	a0,800053a8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800053c0:	00053783          	ld	a5,0(a0)
    800053c4:	0087b783          	ld	a5,8(a5)
    800053c8:	000780e7          	jalr	a5
    800053cc:	fddff06f          	j	800053a8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800053d0:	000b0a63          	beqz	s6,800053e4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800053d4:	000b3783          	ld	a5,0(s6)
    800053d8:	0087b783          	ld	a5,8(a5)
    800053dc:	000b0513          	mv	a0,s6
    800053e0:	000780e7          	jalr	a5
    delete waitForAll;
    800053e4:	00006517          	auipc	a0,0x6
    800053e8:	50c53503          	ld	a0,1292(a0) # 8000b8f0 <_ZL10waitForAll>
    800053ec:	00050863          	beqz	a0,800053fc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800053f0:	00053783          	ld	a5,0(a0)
    800053f4:	0087b783          	ld	a5,8(a5)
    800053f8:	000780e7          	jalr	a5
    delete buffer;
    800053fc:	000a8e63          	beqz	s5,80005418 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005400:	000a8513          	mv	a0,s5
    80005404:	00001097          	auipc	ra,0x1
    80005408:	8a8080e7          	jalr	-1880(ra) # 80005cac <_ZN9BufferCPPD1Ev>
    8000540c:	000a8513          	mv	a0,s5
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	518080e7          	jalr	1304(ra) # 80002928 <_ZdlPv>
    80005418:	000b8113          	mv	sp,s7

}
    8000541c:	f8040113          	addi	sp,s0,-128
    80005420:	07813083          	ld	ra,120(sp)
    80005424:	07013403          	ld	s0,112(sp)
    80005428:	06813483          	ld	s1,104(sp)
    8000542c:	06013903          	ld	s2,96(sp)
    80005430:	05813983          	ld	s3,88(sp)
    80005434:	05013a03          	ld	s4,80(sp)
    80005438:	04813a83          	ld	s5,72(sp)
    8000543c:	04013b03          	ld	s6,64(sp)
    80005440:	03813b83          	ld	s7,56(sp)
    80005444:	03013c03          	ld	s8,48(sp)
    80005448:	02813c83          	ld	s9,40(sp)
    8000544c:	08010113          	addi	sp,sp,128
    80005450:	00008067          	ret
    80005454:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005458:	000a8513          	mv	a0,s5
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	4cc080e7          	jalr	1228(ra) # 80002928 <_ZdlPv>
    80005464:	00048513          	mv	a0,s1
    80005468:	00007097          	auipc	ra,0x7
    8000546c:	570080e7          	jalr	1392(ra) # 8000c9d8 <_Unwind_Resume>
    80005470:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005474:	00048513          	mv	a0,s1
    80005478:	ffffd097          	auipc	ra,0xffffd
    8000547c:	4b0080e7          	jalr	1200(ra) # 80002928 <_ZdlPv>
    80005480:	00090513          	mv	a0,s2
    80005484:	00007097          	auipc	ra,0x7
    80005488:	554080e7          	jalr	1364(ra) # 8000c9d8 <_Unwind_Resume>
    8000548c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005490:	000b0513          	mv	a0,s6
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	494080e7          	jalr	1172(ra) # 80002928 <_ZdlPv>
    8000549c:	00048513          	mv	a0,s1
    800054a0:	00007097          	auipc	ra,0x7
    800054a4:	538080e7          	jalr	1336(ra) # 8000c9d8 <_Unwind_Resume>
    800054a8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800054ac:	000c8513          	mv	a0,s9
    800054b0:	ffffd097          	auipc	ra,0xffffd
    800054b4:	478080e7          	jalr	1144(ra) # 80002928 <_ZdlPv>
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00007097          	auipc	ra,0x7
    800054c0:	51c080e7          	jalr	1308(ra) # 8000c9d8 <_Unwind_Resume>
    800054c4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800054c8:	000c8513          	mv	a0,s9
    800054cc:	ffffd097          	auipc	ra,0xffffd
    800054d0:	45c080e7          	jalr	1116(ra) # 80002928 <_ZdlPv>
    800054d4:	00048513          	mv	a0,s1
    800054d8:	00007097          	auipc	ra,0x7
    800054dc:	500080e7          	jalr	1280(ra) # 8000c9d8 <_Unwind_Resume>

00000000800054e0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800054e0:	ff010113          	addi	sp,sp,-16
    800054e4:	00113423          	sd	ra,8(sp)
    800054e8:	00813023          	sd	s0,0(sp)
    800054ec:	01010413          	addi	s0,sp,16
    800054f0:	00006797          	auipc	a5,0x6
    800054f4:	2e878793          	addi	a5,a5,744 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    800054f8:	00f53023          	sd	a5,0(a0)
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	494080e7          	jalr	1172(ra) # 80002990 <_ZN6ThreadD1Ev>
    80005504:	00813083          	ld	ra,8(sp)
    80005508:	00013403          	ld	s0,0(sp)
    8000550c:	01010113          	addi	sp,sp,16
    80005510:	00008067          	ret

0000000080005514 <_ZN12ConsumerSyncD0Ev>:
    80005514:	fe010113          	addi	sp,sp,-32
    80005518:	00113c23          	sd	ra,24(sp)
    8000551c:	00813823          	sd	s0,16(sp)
    80005520:	00913423          	sd	s1,8(sp)
    80005524:	02010413          	addi	s0,sp,32
    80005528:	00050493          	mv	s1,a0
    8000552c:	00006797          	auipc	a5,0x6
    80005530:	2ac78793          	addi	a5,a5,684 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    80005534:	00f53023          	sd	a5,0(a0)
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	458080e7          	jalr	1112(ra) # 80002990 <_ZN6ThreadD1Ev>
    80005540:	00048513          	mv	a0,s1
    80005544:	ffffd097          	auipc	ra,0xffffd
    80005548:	3e4080e7          	jalr	996(ra) # 80002928 <_ZdlPv>
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	02010113          	addi	sp,sp,32
    8000555c:	00008067          	ret

0000000080005560 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005560:	ff010113          	addi	sp,sp,-16
    80005564:	00113423          	sd	ra,8(sp)
    80005568:	00813023          	sd	s0,0(sp)
    8000556c:	01010413          	addi	s0,sp,16
    80005570:	00006797          	auipc	a5,0x6
    80005574:	24078793          	addi	a5,a5,576 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    80005578:	00f53023          	sd	a5,0(a0)
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	414080e7          	jalr	1044(ra) # 80002990 <_ZN6ThreadD1Ev>
    80005584:	00813083          	ld	ra,8(sp)
    80005588:	00013403          	ld	s0,0(sp)
    8000558c:	01010113          	addi	sp,sp,16
    80005590:	00008067          	ret

0000000080005594 <_ZN12ProducerSyncD0Ev>:
    80005594:	fe010113          	addi	sp,sp,-32
    80005598:	00113c23          	sd	ra,24(sp)
    8000559c:	00813823          	sd	s0,16(sp)
    800055a0:	00913423          	sd	s1,8(sp)
    800055a4:	02010413          	addi	s0,sp,32
    800055a8:	00050493          	mv	s1,a0
    800055ac:	00006797          	auipc	a5,0x6
    800055b0:	20478793          	addi	a5,a5,516 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    800055b4:	00f53023          	sd	a5,0(a0)
    800055b8:	ffffd097          	auipc	ra,0xffffd
    800055bc:	3d8080e7          	jalr	984(ra) # 80002990 <_ZN6ThreadD1Ev>
    800055c0:	00048513          	mv	a0,s1
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	364080e7          	jalr	868(ra) # 80002928 <_ZdlPv>
    800055cc:	01813083          	ld	ra,24(sp)
    800055d0:	01013403          	ld	s0,16(sp)
    800055d4:	00813483          	ld	s1,8(sp)
    800055d8:	02010113          	addi	sp,sp,32
    800055dc:	00008067          	ret

00000000800055e0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800055e0:	ff010113          	addi	sp,sp,-16
    800055e4:	00113423          	sd	ra,8(sp)
    800055e8:	00813023          	sd	s0,0(sp)
    800055ec:	01010413          	addi	s0,sp,16
    800055f0:	00006797          	auipc	a5,0x6
    800055f4:	19878793          	addi	a5,a5,408 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    800055f8:	00f53023          	sd	a5,0(a0)
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	394080e7          	jalr	916(ra) # 80002990 <_ZN6ThreadD1Ev>
    80005604:	00813083          	ld	ra,8(sp)
    80005608:	00013403          	ld	s0,0(sp)
    8000560c:	01010113          	addi	sp,sp,16
    80005610:	00008067          	ret

0000000080005614 <_ZN16ProducerKeyboardD0Ev>:
    80005614:	fe010113          	addi	sp,sp,-32
    80005618:	00113c23          	sd	ra,24(sp)
    8000561c:	00813823          	sd	s0,16(sp)
    80005620:	00913423          	sd	s1,8(sp)
    80005624:	02010413          	addi	s0,sp,32
    80005628:	00050493          	mv	s1,a0
    8000562c:	00006797          	auipc	a5,0x6
    80005630:	15c78793          	addi	a5,a5,348 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    80005634:	00f53023          	sd	a5,0(a0)
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	358080e7          	jalr	856(ra) # 80002990 <_ZN6ThreadD1Ev>
    80005640:	00048513          	mv	a0,s1
    80005644:	ffffd097          	auipc	ra,0xffffd
    80005648:	2e4080e7          	jalr	740(ra) # 80002928 <_ZdlPv>
    8000564c:	01813083          	ld	ra,24(sp)
    80005650:	01013403          	ld	s0,16(sp)
    80005654:	00813483          	ld	s1,8(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret

0000000080005660 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005660:	ff010113          	addi	sp,sp,-16
    80005664:	00113423          	sd	ra,8(sp)
    80005668:	00813023          	sd	s0,0(sp)
    8000566c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005670:	02053583          	ld	a1,32(a0)
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	7e4080e7          	jalr	2020(ra) # 80004e58 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000567c:	00813083          	ld	ra,8(sp)
    80005680:	00013403          	ld	s0,0(sp)
    80005684:	01010113          	addi	sp,sp,16
    80005688:	00008067          	ret

000000008000568c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000568c:	ff010113          	addi	sp,sp,-16
    80005690:	00113423          	sd	ra,8(sp)
    80005694:	00813023          	sd	s0,0(sp)
    80005698:	01010413          	addi	s0,sp,16
        producer(td);
    8000569c:	02053583          	ld	a1,32(a0)
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	878080e7          	jalr	-1928(ra) # 80004f18 <_ZN12ProducerSync8producerEPv>
    }
    800056a8:	00813083          	ld	ra,8(sp)
    800056ac:	00013403          	ld	s0,0(sp)
    800056b0:	01010113          	addi	sp,sp,16
    800056b4:	00008067          	ret

00000000800056b8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00113423          	sd	ra,8(sp)
    800056c0:	00813023          	sd	s0,0(sp)
    800056c4:	01010413          	addi	s0,sp,16
        consumer(td);
    800056c8:	02053583          	ld	a1,32(a0)
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	8e0080e7          	jalr	-1824(ra) # 80004fac <_ZN12ConsumerSync8consumerEPv>
    }
    800056d4:	00813083          	ld	ra,8(sp)
    800056d8:	00013403          	ld	s0,0(sp)
    800056dc:	01010113          	addi	sp,sp,16
    800056e0:	00008067          	ret

00000000800056e4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800056e4:	fe010113          	addi	sp,sp,-32
    800056e8:	00113c23          	sd	ra,24(sp)
    800056ec:	00813823          	sd	s0,16(sp)
    800056f0:	00913423          	sd	s1,8(sp)
    800056f4:	02010413          	addi	s0,sp,32
    800056f8:	00050493          	mv	s1,a0
    LOCK();
    800056fc:	00100613          	li	a2,1
    80005700:	00000593          	li	a1,0
    80005704:	00006517          	auipc	a0,0x6
    80005708:	1f450513          	addi	a0,a0,500 # 8000b8f8 <lockPrint>
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	d80080e7          	jalr	-640(ra) # 8000148c <copy_and_swap>
    80005714:	00050863          	beqz	a0,80005724 <_Z11printStringPKc+0x40>
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	f64080e7          	jalr	-156(ra) # 8000167c <_Z15thread_dispatchv>
    80005720:	fddff06f          	j	800056fc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005724:	0004c503          	lbu	a0,0(s1)
    80005728:	00050a63          	beqz	a0,8000573c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	070080e7          	jalr	112(ra) # 8000179c <_Z4putcc>
        string++;
    80005734:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005738:	fedff06f          	j	80005724 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000573c:	00000613          	li	a2,0
    80005740:	00100593          	li	a1,1
    80005744:	00006517          	auipc	a0,0x6
    80005748:	1b450513          	addi	a0,a0,436 # 8000b8f8 <lockPrint>
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	d40080e7          	jalr	-704(ra) # 8000148c <copy_and_swap>
    80005754:	fe0514e3          	bnez	a0,8000573c <_Z11printStringPKc+0x58>
}
    80005758:	01813083          	ld	ra,24(sp)
    8000575c:	01013403          	ld	s0,16(sp)
    80005760:	00813483          	ld	s1,8(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret

000000008000576c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000576c:	fd010113          	addi	sp,sp,-48
    80005770:	02113423          	sd	ra,40(sp)
    80005774:	02813023          	sd	s0,32(sp)
    80005778:	00913c23          	sd	s1,24(sp)
    8000577c:	01213823          	sd	s2,16(sp)
    80005780:	01313423          	sd	s3,8(sp)
    80005784:	01413023          	sd	s4,0(sp)
    80005788:	03010413          	addi	s0,sp,48
    8000578c:	00050993          	mv	s3,a0
    80005790:	00058a13          	mv	s4,a1
    LOCK();
    80005794:	00100613          	li	a2,1
    80005798:	00000593          	li	a1,0
    8000579c:	00006517          	auipc	a0,0x6
    800057a0:	15c50513          	addi	a0,a0,348 # 8000b8f8 <lockPrint>
    800057a4:	ffffc097          	auipc	ra,0xffffc
    800057a8:	ce8080e7          	jalr	-792(ra) # 8000148c <copy_and_swap>
    800057ac:	00050863          	beqz	a0,800057bc <_Z9getStringPci+0x50>
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	ecc080e7          	jalr	-308(ra) # 8000167c <_Z15thread_dispatchv>
    800057b8:	fddff06f          	j	80005794 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800057bc:	00000913          	li	s2,0
    800057c0:	00090493          	mv	s1,s2
    800057c4:	0019091b          	addiw	s2,s2,1
    800057c8:	03495a63          	bge	s2,s4,800057fc <_Z9getStringPci+0x90>
        cc = getc();
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	fa8080e7          	jalr	-88(ra) # 80001774 <_Z4getcv>
        if(cc < 1)
    800057d4:	02050463          	beqz	a0,800057fc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800057d8:	009984b3          	add	s1,s3,s1
    800057dc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800057e0:	00a00793          	li	a5,10
    800057e4:	00f50a63          	beq	a0,a5,800057f8 <_Z9getStringPci+0x8c>
    800057e8:	00d00793          	li	a5,13
    800057ec:	fcf51ae3          	bne	a0,a5,800057c0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800057f0:	00090493          	mv	s1,s2
    800057f4:	0080006f          	j	800057fc <_Z9getStringPci+0x90>
    800057f8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800057fc:	009984b3          	add	s1,s3,s1
    80005800:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005804:	00000613          	li	a2,0
    80005808:	00100593          	li	a1,1
    8000580c:	00006517          	auipc	a0,0x6
    80005810:	0ec50513          	addi	a0,a0,236 # 8000b8f8 <lockPrint>
    80005814:	ffffc097          	auipc	ra,0xffffc
    80005818:	c78080e7          	jalr	-904(ra) # 8000148c <copy_and_swap>
    8000581c:	fe0514e3          	bnez	a0,80005804 <_Z9getStringPci+0x98>
    return buf;
}
    80005820:	00098513          	mv	a0,s3
    80005824:	02813083          	ld	ra,40(sp)
    80005828:	02013403          	ld	s0,32(sp)
    8000582c:	01813483          	ld	s1,24(sp)
    80005830:	01013903          	ld	s2,16(sp)
    80005834:	00813983          	ld	s3,8(sp)
    80005838:	00013a03          	ld	s4,0(sp)
    8000583c:	03010113          	addi	sp,sp,48
    80005840:	00008067          	ret

0000000080005844 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00813423          	sd	s0,8(sp)
    8000584c:	01010413          	addi	s0,sp,16
    80005850:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005854:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005858:	0006c603          	lbu	a2,0(a3)
    8000585c:	fd06071b          	addiw	a4,a2,-48
    80005860:	0ff77713          	andi	a4,a4,255
    80005864:	00900793          	li	a5,9
    80005868:	02e7e063          	bltu	a5,a4,80005888 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000586c:	0025179b          	slliw	a5,a0,0x2
    80005870:	00a787bb          	addw	a5,a5,a0
    80005874:	0017979b          	slliw	a5,a5,0x1
    80005878:	00168693          	addi	a3,a3,1
    8000587c:	00c787bb          	addw	a5,a5,a2
    80005880:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005884:	fd5ff06f          	j	80005858 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005888:	00813403          	ld	s0,8(sp)
    8000588c:	01010113          	addi	sp,sp,16
    80005890:	00008067          	ret

0000000080005894 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005894:	fc010113          	addi	sp,sp,-64
    80005898:	02113c23          	sd	ra,56(sp)
    8000589c:	02813823          	sd	s0,48(sp)
    800058a0:	02913423          	sd	s1,40(sp)
    800058a4:	03213023          	sd	s2,32(sp)
    800058a8:	01313c23          	sd	s3,24(sp)
    800058ac:	04010413          	addi	s0,sp,64
    800058b0:	00050493          	mv	s1,a0
    800058b4:	00058913          	mv	s2,a1
    800058b8:	00060993          	mv	s3,a2
    LOCK();
    800058bc:	00100613          	li	a2,1
    800058c0:	00000593          	li	a1,0
    800058c4:	00006517          	auipc	a0,0x6
    800058c8:	03450513          	addi	a0,a0,52 # 8000b8f8 <lockPrint>
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	bc0080e7          	jalr	-1088(ra) # 8000148c <copy_and_swap>
    800058d4:	00050863          	beqz	a0,800058e4 <_Z8printIntiii+0x50>
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	da4080e7          	jalr	-604(ra) # 8000167c <_Z15thread_dispatchv>
    800058e0:	fddff06f          	j	800058bc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800058e4:	00098463          	beqz	s3,800058ec <_Z8printIntiii+0x58>
    800058e8:	0804c463          	bltz	s1,80005970 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800058ec:	0004851b          	sext.w	a0,s1
    neg = 0;
    800058f0:	00000593          	li	a1,0
    }

    i = 0;
    800058f4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800058f8:	0009079b          	sext.w	a5,s2
    800058fc:	0325773b          	remuw	a4,a0,s2
    80005900:	00048613          	mv	a2,s1
    80005904:	0014849b          	addiw	s1,s1,1
    80005908:	02071693          	slli	a3,a4,0x20
    8000590c:	0206d693          	srli	a3,a3,0x20
    80005910:	00006717          	auipc	a4,0x6
    80005914:	ee070713          	addi	a4,a4,-288 # 8000b7f0 <digits>
    80005918:	00d70733          	add	a4,a4,a3
    8000591c:	00074683          	lbu	a3,0(a4)
    80005920:	fd040713          	addi	a4,s0,-48
    80005924:	00c70733          	add	a4,a4,a2
    80005928:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000592c:	0005071b          	sext.w	a4,a0
    80005930:	0325553b          	divuw	a0,a0,s2
    80005934:	fcf772e3          	bgeu	a4,a5,800058f8 <_Z8printIntiii+0x64>
    if(neg)
    80005938:	00058c63          	beqz	a1,80005950 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000593c:	fd040793          	addi	a5,s0,-48
    80005940:	009784b3          	add	s1,a5,s1
    80005944:	02d00793          	li	a5,45
    80005948:	fef48823          	sb	a5,-16(s1)
    8000594c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005950:	fff4849b          	addiw	s1,s1,-1
    80005954:	0204c463          	bltz	s1,8000597c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005958:	fd040793          	addi	a5,s0,-48
    8000595c:	009787b3          	add	a5,a5,s1
    80005960:	ff07c503          	lbu	a0,-16(a5)
    80005964:	ffffc097          	auipc	ra,0xffffc
    80005968:	e38080e7          	jalr	-456(ra) # 8000179c <_Z4putcc>
    8000596c:	fe5ff06f          	j	80005950 <_Z8printIntiii+0xbc>
        x = -xx;
    80005970:	4090053b          	negw	a0,s1
        neg = 1;
    80005974:	00100593          	li	a1,1
        x = -xx;
    80005978:	f7dff06f          	j	800058f4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000597c:	00000613          	li	a2,0
    80005980:	00100593          	li	a1,1
    80005984:	00006517          	auipc	a0,0x6
    80005988:	f7450513          	addi	a0,a0,-140 # 8000b8f8 <lockPrint>
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	b00080e7          	jalr	-1280(ra) # 8000148c <copy_and_swap>
    80005994:	fe0514e3          	bnez	a0,8000597c <_Z8printIntiii+0xe8>
    80005998:	03813083          	ld	ra,56(sp)
    8000599c:	03013403          	ld	s0,48(sp)
    800059a0:	02813483          	ld	s1,40(sp)
    800059a4:	02013903          	ld	s2,32(sp)
    800059a8:	01813983          	ld	s3,24(sp)
    800059ac:	04010113          	addi	sp,sp,64
    800059b0:	00008067          	ret

00000000800059b4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059b4:	fd010113          	addi	sp,sp,-48
    800059b8:	02113423          	sd	ra,40(sp)
    800059bc:	02813023          	sd	s0,32(sp)
    800059c0:	00913c23          	sd	s1,24(sp)
    800059c4:	01213823          	sd	s2,16(sp)
    800059c8:	01313423          	sd	s3,8(sp)
    800059cc:	03010413          	addi	s0,sp,48
    800059d0:	00050493          	mv	s1,a0
    800059d4:	00058913          	mv	s2,a1
    800059d8:	0015879b          	addiw	a5,a1,1
    800059dc:	0007851b          	sext.w	a0,a5
    800059e0:	00f4a023          	sw	a5,0(s1)
    800059e4:	0004a823          	sw	zero,16(s1)
    800059e8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800059ec:	00251513          	slli	a0,a0,0x2
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	abc080e7          	jalr	-1348(ra) # 800014ac <_Z9mem_allocm>
    800059f8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800059fc:	01000513          	li	a0,16
    80005a00:	ffffd097          	auipc	ra,0xffffd
    80005a04:	ed8080e7          	jalr	-296(ra) # 800028d8 <_Znwm>
    80005a08:	00050993          	mv	s3,a0
    80005a0c:	00000593          	li	a1,0
    80005a10:	ffffd097          	auipc	ra,0xffffd
    80005a14:	1ac080e7          	jalr	428(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80005a18:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a1c:	01000513          	li	a0,16
    80005a20:	ffffd097          	auipc	ra,0xffffd
    80005a24:	eb8080e7          	jalr	-328(ra) # 800028d8 <_Znwm>
    80005a28:	00050993          	mv	s3,a0
    80005a2c:	00090593          	mv	a1,s2
    80005a30:	ffffd097          	auipc	ra,0xffffd
    80005a34:	18c080e7          	jalr	396(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80005a38:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a3c:	01000513          	li	a0,16
    80005a40:	ffffd097          	auipc	ra,0xffffd
    80005a44:	e98080e7          	jalr	-360(ra) # 800028d8 <_Znwm>
    80005a48:	00050913          	mv	s2,a0
    80005a4c:	00100593          	li	a1,1
    80005a50:	ffffd097          	auipc	ra,0xffffd
    80005a54:	16c080e7          	jalr	364(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80005a58:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005a5c:	01000513          	li	a0,16
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	e78080e7          	jalr	-392(ra) # 800028d8 <_Znwm>
    80005a68:	00050913          	mv	s2,a0
    80005a6c:	00100593          	li	a1,1
    80005a70:	ffffd097          	auipc	ra,0xffffd
    80005a74:	14c080e7          	jalr	332(ra) # 80002bbc <_ZN9SemaphoreC1Ej>
    80005a78:	0324b823          	sd	s2,48(s1)
}
    80005a7c:	02813083          	ld	ra,40(sp)
    80005a80:	02013403          	ld	s0,32(sp)
    80005a84:	01813483          	ld	s1,24(sp)
    80005a88:	01013903          	ld	s2,16(sp)
    80005a8c:	00813983          	ld	s3,8(sp)
    80005a90:	03010113          	addi	sp,sp,48
    80005a94:	00008067          	ret
    80005a98:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005a9c:	00098513          	mv	a0,s3
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	e88080e7          	jalr	-376(ra) # 80002928 <_ZdlPv>
    80005aa8:	00048513          	mv	a0,s1
    80005aac:	00007097          	auipc	ra,0x7
    80005ab0:	f2c080e7          	jalr	-212(ra) # 8000c9d8 <_Unwind_Resume>
    80005ab4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ab8:	00098513          	mv	a0,s3
    80005abc:	ffffd097          	auipc	ra,0xffffd
    80005ac0:	e6c080e7          	jalr	-404(ra) # 80002928 <_ZdlPv>
    80005ac4:	00048513          	mv	a0,s1
    80005ac8:	00007097          	auipc	ra,0x7
    80005acc:	f10080e7          	jalr	-240(ra) # 8000c9d8 <_Unwind_Resume>
    80005ad0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ad4:	00090513          	mv	a0,s2
    80005ad8:	ffffd097          	auipc	ra,0xffffd
    80005adc:	e50080e7          	jalr	-432(ra) # 80002928 <_ZdlPv>
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	00007097          	auipc	ra,0x7
    80005ae8:	ef4080e7          	jalr	-268(ra) # 8000c9d8 <_Unwind_Resume>
    80005aec:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005af0:	00090513          	mv	a0,s2
    80005af4:	ffffd097          	auipc	ra,0xffffd
    80005af8:	e34080e7          	jalr	-460(ra) # 80002928 <_ZdlPv>
    80005afc:	00048513          	mv	a0,s1
    80005b00:	00007097          	auipc	ra,0x7
    80005b04:	ed8080e7          	jalr	-296(ra) # 8000c9d8 <_Unwind_Resume>

0000000080005b08 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b08:	fe010113          	addi	sp,sp,-32
    80005b0c:	00113c23          	sd	ra,24(sp)
    80005b10:	00813823          	sd	s0,16(sp)
    80005b14:	00913423          	sd	s1,8(sp)
    80005b18:	01213023          	sd	s2,0(sp)
    80005b1c:	02010413          	addi	s0,sp,32
    80005b20:	00050493          	mv	s1,a0
    80005b24:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b28:	01853503          	ld	a0,24(a0)
    80005b2c:	ffffd097          	auipc	ra,0xffffd
    80005b30:	0c8080e7          	jalr	200(ra) # 80002bf4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b34:	0304b503          	ld	a0,48(s1)
    80005b38:	ffffd097          	auipc	ra,0xffffd
    80005b3c:	0bc080e7          	jalr	188(ra) # 80002bf4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b40:	0084b783          	ld	a5,8(s1)
    80005b44:	0144a703          	lw	a4,20(s1)
    80005b48:	00271713          	slli	a4,a4,0x2
    80005b4c:	00e787b3          	add	a5,a5,a4
    80005b50:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b54:	0144a783          	lw	a5,20(s1)
    80005b58:	0017879b          	addiw	a5,a5,1
    80005b5c:	0004a703          	lw	a4,0(s1)
    80005b60:	02e7e7bb          	remw	a5,a5,a4
    80005b64:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005b68:	0304b503          	ld	a0,48(s1)
    80005b6c:	ffffd097          	auipc	ra,0xffffd
    80005b70:	0b4080e7          	jalr	180(ra) # 80002c20 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005b74:	0204b503          	ld	a0,32(s1)
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	0a8080e7          	jalr	168(ra) # 80002c20 <_ZN9Semaphore6signalEv>

}
    80005b80:	01813083          	ld	ra,24(sp)
    80005b84:	01013403          	ld	s0,16(sp)
    80005b88:	00813483          	ld	s1,8(sp)
    80005b8c:	00013903          	ld	s2,0(sp)
    80005b90:	02010113          	addi	sp,sp,32
    80005b94:	00008067          	ret

0000000080005b98 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005b98:	fe010113          	addi	sp,sp,-32
    80005b9c:	00113c23          	sd	ra,24(sp)
    80005ba0:	00813823          	sd	s0,16(sp)
    80005ba4:	00913423          	sd	s1,8(sp)
    80005ba8:	01213023          	sd	s2,0(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bb4:	02053503          	ld	a0,32(a0)
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	03c080e7          	jalr	60(ra) # 80002bf4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005bc0:	0284b503          	ld	a0,40(s1)
    80005bc4:	ffffd097          	auipc	ra,0xffffd
    80005bc8:	030080e7          	jalr	48(ra) # 80002bf4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005bcc:	0084b703          	ld	a4,8(s1)
    80005bd0:	0104a783          	lw	a5,16(s1)
    80005bd4:	00279693          	slli	a3,a5,0x2
    80005bd8:	00d70733          	add	a4,a4,a3
    80005bdc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005be0:	0017879b          	addiw	a5,a5,1
    80005be4:	0004a703          	lw	a4,0(s1)
    80005be8:	02e7e7bb          	remw	a5,a5,a4
    80005bec:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005bf0:	0284b503          	ld	a0,40(s1)
    80005bf4:	ffffd097          	auipc	ra,0xffffd
    80005bf8:	02c080e7          	jalr	44(ra) # 80002c20 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005bfc:	0184b503          	ld	a0,24(s1)
    80005c00:	ffffd097          	auipc	ra,0xffffd
    80005c04:	020080e7          	jalr	32(ra) # 80002c20 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c08:	00090513          	mv	a0,s2
    80005c0c:	01813083          	ld	ra,24(sp)
    80005c10:	01013403          	ld	s0,16(sp)
    80005c14:	00813483          	ld	s1,8(sp)
    80005c18:	00013903          	ld	s2,0(sp)
    80005c1c:	02010113          	addi	sp,sp,32
    80005c20:	00008067          	ret

0000000080005c24 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c24:	fe010113          	addi	sp,sp,-32
    80005c28:	00113c23          	sd	ra,24(sp)
    80005c2c:	00813823          	sd	s0,16(sp)
    80005c30:	00913423          	sd	s1,8(sp)
    80005c34:	01213023          	sd	s2,0(sp)
    80005c38:	02010413          	addi	s0,sp,32
    80005c3c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c40:	02853503          	ld	a0,40(a0)
    80005c44:	ffffd097          	auipc	ra,0xffffd
    80005c48:	fb0080e7          	jalr	-80(ra) # 80002bf4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005c4c:	0304b503          	ld	a0,48(s1)
    80005c50:	ffffd097          	auipc	ra,0xffffd
    80005c54:	fa4080e7          	jalr	-92(ra) # 80002bf4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005c58:	0144a783          	lw	a5,20(s1)
    80005c5c:	0104a903          	lw	s2,16(s1)
    80005c60:	0327ce63          	blt	a5,s2,80005c9c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005c64:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005c68:	0304b503          	ld	a0,48(s1)
    80005c6c:	ffffd097          	auipc	ra,0xffffd
    80005c70:	fb4080e7          	jalr	-76(ra) # 80002c20 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005c74:	0284b503          	ld	a0,40(s1)
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	fa8080e7          	jalr	-88(ra) # 80002c20 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c80:	00090513          	mv	a0,s2
    80005c84:	01813083          	ld	ra,24(sp)
    80005c88:	01013403          	ld	s0,16(sp)
    80005c8c:	00813483          	ld	s1,8(sp)
    80005c90:	00013903          	ld	s2,0(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	00008067          	ret
        ret = cap - head + tail;
    80005c9c:	0004a703          	lw	a4,0(s1)
    80005ca0:	4127093b          	subw	s2,a4,s2
    80005ca4:	00f9093b          	addw	s2,s2,a5
    80005ca8:	fc1ff06f          	j	80005c68 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005cac <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005cac:	fe010113          	addi	sp,sp,-32
    80005cb0:	00113c23          	sd	ra,24(sp)
    80005cb4:	00813823          	sd	s0,16(sp)
    80005cb8:	00913423          	sd	s1,8(sp)
    80005cbc:	02010413          	addi	s0,sp,32
    80005cc0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005cc4:	00a00513          	li	a0,10
    80005cc8:	ffffd097          	auipc	ra,0xffffd
    80005ccc:	f84080e7          	jalr	-124(ra) # 80002c4c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	6f850513          	addi	a0,a0,1784 # 800093c8 <_ZZ12printIntegermE6digits+0x178>
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	a0c080e7          	jalr	-1524(ra) # 800056e4 <_Z11printStringPKc>
    while (getCnt()) {
    80005ce0:	00048513          	mv	a0,s1
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	f40080e7          	jalr	-192(ra) # 80005c24 <_ZN9BufferCPP6getCntEv>
    80005cec:	02050c63          	beqz	a0,80005d24 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005cf0:	0084b783          	ld	a5,8(s1)
    80005cf4:	0104a703          	lw	a4,16(s1)
    80005cf8:	00271713          	slli	a4,a4,0x2
    80005cfc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d00:	0007c503          	lbu	a0,0(a5)
    80005d04:	ffffd097          	auipc	ra,0xffffd
    80005d08:	f48080e7          	jalr	-184(ra) # 80002c4c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d0c:	0104a783          	lw	a5,16(s1)
    80005d10:	0017879b          	addiw	a5,a5,1
    80005d14:	0004a703          	lw	a4,0(s1)
    80005d18:	02e7e7bb          	remw	a5,a5,a4
    80005d1c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d20:	fc1ff06f          	j	80005ce0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d24:	02100513          	li	a0,33
    80005d28:	ffffd097          	auipc	ra,0xffffd
    80005d2c:	f24080e7          	jalr	-220(ra) # 80002c4c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d30:	00a00513          	li	a0,10
    80005d34:	ffffd097          	auipc	ra,0xffffd
    80005d38:	f18080e7          	jalr	-232(ra) # 80002c4c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d3c:	0084b503          	ld	a0,8(s1)
    80005d40:	ffffb097          	auipc	ra,0xffffb
    80005d44:	7a4080e7          	jalr	1956(ra) # 800014e4 <_Z8mem_freePv>
    delete itemAvailable;
    80005d48:	0204b503          	ld	a0,32(s1)
    80005d4c:	00050863          	beqz	a0,80005d5c <_ZN9BufferCPPD1Ev+0xb0>
    80005d50:	00053783          	ld	a5,0(a0)
    80005d54:	0087b783          	ld	a5,8(a5)
    80005d58:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d5c:	0184b503          	ld	a0,24(s1)
    80005d60:	00050863          	beqz	a0,80005d70 <_ZN9BufferCPPD1Ev+0xc4>
    80005d64:	00053783          	ld	a5,0(a0)
    80005d68:	0087b783          	ld	a5,8(a5)
    80005d6c:	000780e7          	jalr	a5
    delete mutexTail;
    80005d70:	0304b503          	ld	a0,48(s1)
    80005d74:	00050863          	beqz	a0,80005d84 <_ZN9BufferCPPD1Ev+0xd8>
    80005d78:	00053783          	ld	a5,0(a0)
    80005d7c:	0087b783          	ld	a5,8(a5)
    80005d80:	000780e7          	jalr	a5
    delete mutexHead;
    80005d84:	0284b503          	ld	a0,40(s1)
    80005d88:	00050863          	beqz	a0,80005d98 <_ZN9BufferCPPD1Ev+0xec>
    80005d8c:	00053783          	ld	a5,0(a0)
    80005d90:	0087b783          	ld	a5,8(a5)
    80005d94:	000780e7          	jalr	a5
}
    80005d98:	01813083          	ld	ra,24(sp)
    80005d9c:	01013403          	ld	s0,16(sp)
    80005da0:	00813483          	ld	s1,8(sp)
    80005da4:	02010113          	addi	sp,sp,32
    80005da8:	00008067          	ret

0000000080005dac <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005dac:	fe010113          	addi	sp,sp,-32
    80005db0:	00113c23          	sd	ra,24(sp)
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00913423          	sd	s1,8(sp)
    80005dbc:	01213023          	sd	s2,0(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005dc4:	00003517          	auipc	a0,0x3
    80005dc8:	61c50513          	addi	a0,a0,1564 # 800093e0 <_ZZ12printIntegermE6digits+0x190>
    80005dcc:	00000097          	auipc	ra,0x0
    80005dd0:	918080e7          	jalr	-1768(ra) # 800056e4 <_Z11printStringPKc>
    int test = getc() - '0';
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	9a0080e7          	jalr	-1632(ra) # 80001774 <_Z4getcv>
    80005ddc:	00050913          	mv	s2,a0
    80005de0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005de4:	ffffc097          	auipc	ra,0xffffc
    80005de8:	990080e7          	jalr	-1648(ra) # 80001774 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005dec:	fcb9091b          	addiw	s2,s2,-53
    80005df0:	00100793          	li	a5,1
    80005df4:	0327f463          	bgeu	a5,s2,80005e1c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005df8:	00700793          	li	a5,7
    80005dfc:	0e97e263          	bltu	a5,s1,80005ee0 <_Z8userMainv+0x134>
    80005e00:	00249493          	slli	s1,s1,0x2
    80005e04:	00003717          	auipc	a4,0x3
    80005e08:	7f470713          	addi	a4,a4,2036 # 800095f8 <_ZZ12printIntegermE6digits+0x3a8>
    80005e0c:	00e484b3          	add	s1,s1,a4
    80005e10:	0004a783          	lw	a5,0(s1)
    80005e14:	00e787b3          	add	a5,a5,a4
    80005e18:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	5e450513          	addi	a0,a0,1508 # 80009400 <_ZZ12printIntegermE6digits+0x1b0>
    80005e24:	00000097          	auipc	ra,0x0
    80005e28:	8c0080e7          	jalr	-1856(ra) # 800056e4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005e2c:	01813083          	ld	ra,24(sp)
    80005e30:	01013403          	ld	s0,16(sp)
    80005e34:	00813483          	ld	s1,8(sp)
    80005e38:	00013903          	ld	s2,0(sp)
    80005e3c:	02010113          	addi	sp,sp,32
    80005e40:	00008067          	ret
            Threads_C_API_test();
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	f18080e7          	jalr	-232(ra) # 80004d5c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	5e450513          	addi	a0,a0,1508 # 80009430 <_ZZ12printIntegermE6digits+0x1e0>
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	890080e7          	jalr	-1904(ra) # 800056e4 <_Z11printStringPKc>
            break;
    80005e5c:	fd1ff06f          	j	80005e2c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005e60:	ffffe097          	auipc	ra,0xffffe
    80005e64:	ddc080e7          	jalr	-548(ra) # 80003c3c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005e68:	00003517          	auipc	a0,0x3
    80005e6c:	60850513          	addi	a0,a0,1544 # 80009470 <_ZZ12printIntegermE6digits+0x220>
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	874080e7          	jalr	-1932(ra) # 800056e4 <_Z11printStringPKc>
            break;
    80005e78:	fb5ff06f          	j	80005e2c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005e7c:	ffffd097          	auipc	ra,0xffffd
    80005e80:	614080e7          	jalr	1556(ra) # 80003490 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005e84:	00003517          	auipc	a0,0x3
    80005e88:	62c50513          	addi	a0,a0,1580 # 800094b0 <_ZZ12printIntegermE6digits+0x260>
    80005e8c:	00000097          	auipc	ra,0x0
    80005e90:	858080e7          	jalr	-1960(ra) # 800056e4 <_Z11printStringPKc>
            break;
    80005e94:	f99ff06f          	j	80005e2c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	208080e7          	jalr	520(ra) # 800050a0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	66050513          	addi	a0,a0,1632 # 80009500 <_ZZ12printIntegermE6digits+0x2b0>
    80005ea8:	00000097          	auipc	ra,0x0
    80005eac:	83c080e7          	jalr	-1988(ra) # 800056e4 <_Z11printStringPKc>
            break;
    80005eb0:	f7dff06f          	j	80005e2c <_Z8userMainv+0x80>
            System_Mode_test();
    80005eb4:	00000097          	auipc	ra,0x0
    80005eb8:	658080e7          	jalr	1624(ra) # 8000650c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005ebc:	00003517          	auipc	a0,0x3
    80005ec0:	69c50513          	addi	a0,a0,1692 # 80009558 <_ZZ12printIntegermE6digits+0x308>
    80005ec4:	00000097          	auipc	ra,0x0
    80005ec8:	820080e7          	jalr	-2016(ra) # 800056e4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	6ac50513          	addi	a0,a0,1708 # 80009578 <_ZZ12printIntegermE6digits+0x328>
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	810080e7          	jalr	-2032(ra) # 800056e4 <_Z11printStringPKc>
            break;
    80005edc:	f51ff06f          	j	80005e2c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005ee0:	00003517          	auipc	a0,0x3
    80005ee4:	6f050513          	addi	a0,a0,1776 # 800095d0 <_ZZ12printIntegermE6digits+0x380>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	7fc080e7          	jalr	2044(ra) # 800056e4 <_Z11printStringPKc>
    80005ef0:	f3dff06f          	j	80005e2c <_Z8userMainv+0x80>

0000000080005ef4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005ef4:	fe010113          	addi	sp,sp,-32
    80005ef8:	00113c23          	sd	ra,24(sp)
    80005efc:	00813823          	sd	s0,16(sp)
    80005f00:	00913423          	sd	s1,8(sp)
    80005f04:	01213023          	sd	s2,0(sp)
    80005f08:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f0c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f10:	00600493          	li	s1,6
    while (--i > 0) {
    80005f14:	fff4849b          	addiw	s1,s1,-1
    80005f18:	04905463          	blez	s1,80005f60 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	6fc50513          	addi	a0,a0,1788 # 80009618 <_ZZ12printIntegermE6digits+0x3c8>
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	7c0080e7          	jalr	1984(ra) # 800056e4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005f2c:	00000613          	li	a2,0
    80005f30:	00a00593          	li	a1,10
    80005f34:	0009051b          	sext.w	a0,s2
    80005f38:	00000097          	auipc	ra,0x0
    80005f3c:	95c080e7          	jalr	-1700(ra) # 80005894 <_Z8printIntiii>
        printString(" !\n");
    80005f40:	00003517          	auipc	a0,0x3
    80005f44:	6e050513          	addi	a0,a0,1760 # 80009620 <_ZZ12printIntegermE6digits+0x3d0>
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	79c080e7          	jalr	1948(ra) # 800056e4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f50:	00090513          	mv	a0,s2
    80005f54:	ffffc097          	auipc	ra,0xffffc
    80005f58:	86c080e7          	jalr	-1940(ra) # 800017c0 <_Z10time_sleepm>
    while (--i > 0) {
    80005f5c:	fb9ff06f          	j	80005f14 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f60:	00a00793          	li	a5,10
    80005f64:	02f95933          	divu	s2,s2,a5
    80005f68:	fff90913          	addi	s2,s2,-1
    80005f6c:	00006797          	auipc	a5,0x6
    80005f70:	99478793          	addi	a5,a5,-1644 # 8000b900 <_ZL8finished>
    80005f74:	01278933          	add	s2,a5,s2
    80005f78:	00100793          	li	a5,1
    80005f7c:	00f90023          	sb	a5,0(s2)
}
    80005f80:	01813083          	ld	ra,24(sp)
    80005f84:	01013403          	ld	s0,16(sp)
    80005f88:	00813483          	ld	s1,8(sp)
    80005f8c:	00013903          	ld	s2,0(sp)
    80005f90:	02010113          	addi	sp,sp,32
    80005f94:	00008067          	ret

0000000080005f98 <_Z12testSleepingv>:

void testSleeping() {
    80005f98:	fc010113          	addi	sp,sp,-64
    80005f9c:	02113c23          	sd	ra,56(sp)
    80005fa0:	02813823          	sd	s0,48(sp)
    80005fa4:	02913423          	sd	s1,40(sp)
    80005fa8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005fac:	00a00793          	li	a5,10
    80005fb0:	fcf43823          	sd	a5,-48(s0)
    80005fb4:	01400793          	li	a5,20
    80005fb8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fbc:	00000493          	li	s1,0
    80005fc0:	02c0006f          	j	80005fec <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005fc4:	00349793          	slli	a5,s1,0x3
    80005fc8:	fd040613          	addi	a2,s0,-48
    80005fcc:	00f60633          	add	a2,a2,a5
    80005fd0:	00000597          	auipc	a1,0x0
    80005fd4:	f2458593          	addi	a1,a1,-220 # 80005ef4 <_ZL9sleepyRunPv>
    80005fd8:	fc040513          	addi	a0,s0,-64
    80005fdc:	00f50533          	add	a0,a0,a5
    80005fe0:	ffffb097          	auipc	ra,0xffffb
    80005fe4:	5f8080e7          	jalr	1528(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fe8:	0014849b          	addiw	s1,s1,1
    80005fec:	00100793          	li	a5,1
    80005ff0:	fc97dae3          	bge	a5,s1,80005fc4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005ff4:	00006797          	auipc	a5,0x6
    80005ff8:	90c7c783          	lbu	a5,-1780(a5) # 8000b900 <_ZL8finished>
    80005ffc:	fe078ce3          	beqz	a5,80005ff4 <_Z12testSleepingv+0x5c>
    80006000:	00006797          	auipc	a5,0x6
    80006004:	9017c783          	lbu	a5,-1791(a5) # 8000b901 <_ZL8finished+0x1>
    80006008:	fe0786e3          	beqz	a5,80005ff4 <_Z12testSleepingv+0x5c>
}
    8000600c:	03813083          	ld	ra,56(sp)
    80006010:	03013403          	ld	s0,48(sp)
    80006014:	02813483          	ld	s1,40(sp)
    80006018:	04010113          	addi	sp,sp,64
    8000601c:	00008067          	ret

0000000080006020 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006020:	fe010113          	addi	sp,sp,-32
    80006024:	00113c23          	sd	ra,24(sp)
    80006028:	00813823          	sd	s0,16(sp)
    8000602c:	00913423          	sd	s1,8(sp)
    80006030:	01213023          	sd	s2,0(sp)
    80006034:	02010413          	addi	s0,sp,32
    80006038:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000603c:	00100793          	li	a5,1
    80006040:	02a7f863          	bgeu	a5,a0,80006070 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006044:	00a00793          	li	a5,10
    80006048:	02f577b3          	remu	a5,a0,a5
    8000604c:	02078e63          	beqz	a5,80006088 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006050:	fff48513          	addi	a0,s1,-1
    80006054:	00000097          	auipc	ra,0x0
    80006058:	fcc080e7          	jalr	-52(ra) # 80006020 <_ZL9fibonaccim>
    8000605c:	00050913          	mv	s2,a0
    80006060:	ffe48513          	addi	a0,s1,-2
    80006064:	00000097          	auipc	ra,0x0
    80006068:	fbc080e7          	jalr	-68(ra) # 80006020 <_ZL9fibonaccim>
    8000606c:	00a90533          	add	a0,s2,a0
}
    80006070:	01813083          	ld	ra,24(sp)
    80006074:	01013403          	ld	s0,16(sp)
    80006078:	00813483          	ld	s1,8(sp)
    8000607c:	00013903          	ld	s2,0(sp)
    80006080:	02010113          	addi	sp,sp,32
    80006084:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	5f4080e7          	jalr	1524(ra) # 8000167c <_Z15thread_dispatchv>
    80006090:	fc1ff06f          	j	80006050 <_ZL9fibonaccim+0x30>

0000000080006094 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006094:	fe010113          	addi	sp,sp,-32
    80006098:	00113c23          	sd	ra,24(sp)
    8000609c:	00813823          	sd	s0,16(sp)
    800060a0:	00913423          	sd	s1,8(sp)
    800060a4:	01213023          	sd	s2,0(sp)
    800060a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800060ac:	00a00493          	li	s1,10
    800060b0:	0400006f          	j	800060f0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800060b4:	00003517          	auipc	a0,0x3
    800060b8:	2dc50513          	addi	a0,a0,732 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    800060bc:	fffff097          	auipc	ra,0xfffff
    800060c0:	628080e7          	jalr	1576(ra) # 800056e4 <_Z11printStringPKc>
    800060c4:	00000613          	li	a2,0
    800060c8:	00a00593          	li	a1,10
    800060cc:	00048513          	mv	a0,s1
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	7c4080e7          	jalr	1988(ra) # 80005894 <_Z8printIntiii>
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	0d050513          	addi	a0,a0,208 # 800091a8 <CONSOLE_STATUS+0x198>
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	604080e7          	jalr	1540(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800060e8:	0014849b          	addiw	s1,s1,1
    800060ec:	0ff4f493          	andi	s1,s1,255
    800060f0:	00c00793          	li	a5,12
    800060f4:	fc97f0e3          	bgeu	a5,s1,800060b4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800060f8:	00003517          	auipc	a0,0x3
    800060fc:	2a050513          	addi	a0,a0,672 # 80009398 <_ZZ12printIntegermE6digits+0x148>
    80006100:	fffff097          	auipc	ra,0xfffff
    80006104:	5e4080e7          	jalr	1508(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006108:	00500313          	li	t1,5
    thread_dispatch();
    8000610c:	ffffb097          	auipc	ra,0xffffb
    80006110:	570080e7          	jalr	1392(ra) # 8000167c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006114:	01000513          	li	a0,16
    80006118:	00000097          	auipc	ra,0x0
    8000611c:	f08080e7          	jalr	-248(ra) # 80006020 <_ZL9fibonaccim>
    80006120:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006124:	00003517          	auipc	a0,0x3
    80006128:	28450513          	addi	a0,a0,644 # 800093a8 <_ZZ12printIntegermE6digits+0x158>
    8000612c:	fffff097          	auipc	ra,0xfffff
    80006130:	5b8080e7          	jalr	1464(ra) # 800056e4 <_Z11printStringPKc>
    80006134:	00000613          	li	a2,0
    80006138:	00a00593          	li	a1,10
    8000613c:	0009051b          	sext.w	a0,s2
    80006140:	fffff097          	auipc	ra,0xfffff
    80006144:	754080e7          	jalr	1876(ra) # 80005894 <_Z8printIntiii>
    80006148:	00003517          	auipc	a0,0x3
    8000614c:	06050513          	addi	a0,a0,96 # 800091a8 <CONSOLE_STATUS+0x198>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	594080e7          	jalr	1428(ra) # 800056e4 <_Z11printStringPKc>
    80006158:	0400006f          	j	80006198 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	23450513          	addi	a0,a0,564 # 80009390 <_ZZ12printIntegermE6digits+0x140>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	580080e7          	jalr	1408(ra) # 800056e4 <_Z11printStringPKc>
    8000616c:	00000613          	li	a2,0
    80006170:	00a00593          	li	a1,10
    80006174:	00048513          	mv	a0,s1
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	71c080e7          	jalr	1820(ra) # 80005894 <_Z8printIntiii>
    80006180:	00003517          	auipc	a0,0x3
    80006184:	02850513          	addi	a0,a0,40 # 800091a8 <CONSOLE_STATUS+0x198>
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	55c080e7          	jalr	1372(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006190:	0014849b          	addiw	s1,s1,1
    80006194:	0ff4f493          	andi	s1,s1,255
    80006198:	00f00793          	li	a5,15
    8000619c:	fc97f0e3          	bgeu	a5,s1,8000615c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	21850513          	addi	a0,a0,536 # 800093b8 <_ZZ12printIntegermE6digits+0x168>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	53c080e7          	jalr	1340(ra) # 800056e4 <_Z11printStringPKc>
    finishedD = true;
    800061b0:	00100793          	li	a5,1
    800061b4:	00005717          	auipc	a4,0x5
    800061b8:	74f70723          	sb	a5,1870(a4) # 8000b902 <_ZL9finishedD>
    thread_dispatch();
    800061bc:	ffffb097          	auipc	ra,0xffffb
    800061c0:	4c0080e7          	jalr	1216(ra) # 8000167c <_Z15thread_dispatchv>
}
    800061c4:	01813083          	ld	ra,24(sp)
    800061c8:	01013403          	ld	s0,16(sp)
    800061cc:	00813483          	ld	s1,8(sp)
    800061d0:	00013903          	ld	s2,0(sp)
    800061d4:	02010113          	addi	sp,sp,32
    800061d8:	00008067          	ret

00000000800061dc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800061dc:	fe010113          	addi	sp,sp,-32
    800061e0:	00113c23          	sd	ra,24(sp)
    800061e4:	00813823          	sd	s0,16(sp)
    800061e8:	00913423          	sd	s1,8(sp)
    800061ec:	01213023          	sd	s2,0(sp)
    800061f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800061f4:	00000493          	li	s1,0
    800061f8:	0400006f          	j	80006238 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800061fc:	00003517          	auipc	a0,0x3
    80006200:	16450513          	addi	a0,a0,356 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	4e0080e7          	jalr	1248(ra) # 800056e4 <_Z11printStringPKc>
    8000620c:	00000613          	li	a2,0
    80006210:	00a00593          	li	a1,10
    80006214:	00048513          	mv	a0,s1
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	67c080e7          	jalr	1660(ra) # 80005894 <_Z8printIntiii>
    80006220:	00003517          	auipc	a0,0x3
    80006224:	f8850513          	addi	a0,a0,-120 # 800091a8 <CONSOLE_STATUS+0x198>
    80006228:	fffff097          	auipc	ra,0xfffff
    8000622c:	4bc080e7          	jalr	1212(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006230:	0014849b          	addiw	s1,s1,1
    80006234:	0ff4f493          	andi	s1,s1,255
    80006238:	00200793          	li	a5,2
    8000623c:	fc97f0e3          	bgeu	a5,s1,800061fc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	12850513          	addi	a0,a0,296 # 80009368 <_ZZ12printIntegermE6digits+0x118>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	49c080e7          	jalr	1180(ra) # 800056e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006250:	00700313          	li	t1,7
    thread_dispatch();
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	428080e7          	jalr	1064(ra) # 8000167c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000625c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	11850513          	addi	a0,a0,280 # 80009378 <_ZZ12printIntegermE6digits+0x128>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	47c080e7          	jalr	1148(ra) # 800056e4 <_Z11printStringPKc>
    80006270:	00000613          	li	a2,0
    80006274:	00a00593          	li	a1,10
    80006278:	0009051b          	sext.w	a0,s2
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	618080e7          	jalr	1560(ra) # 80005894 <_Z8printIntiii>
    80006284:	00003517          	auipc	a0,0x3
    80006288:	f2450513          	addi	a0,a0,-220 # 800091a8 <CONSOLE_STATUS+0x198>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	458080e7          	jalr	1112(ra) # 800056e4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006294:	00c00513          	li	a0,12
    80006298:	00000097          	auipc	ra,0x0
    8000629c:	d88080e7          	jalr	-632(ra) # 80006020 <_ZL9fibonaccim>
    800062a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	0dc50513          	addi	a0,a0,220 # 80009380 <_ZZ12printIntegermE6digits+0x130>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	438080e7          	jalr	1080(ra) # 800056e4 <_Z11printStringPKc>
    800062b4:	00000613          	li	a2,0
    800062b8:	00a00593          	li	a1,10
    800062bc:	0009051b          	sext.w	a0,s2
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	5d4080e7          	jalr	1492(ra) # 80005894 <_Z8printIntiii>
    800062c8:	00003517          	auipc	a0,0x3
    800062cc:	ee050513          	addi	a0,a0,-288 # 800091a8 <CONSOLE_STATUS+0x198>
    800062d0:	fffff097          	auipc	ra,0xfffff
    800062d4:	414080e7          	jalr	1044(ra) # 800056e4 <_Z11printStringPKc>
    800062d8:	0400006f          	j	80006318 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	08450513          	addi	a0,a0,132 # 80009360 <_ZZ12printIntegermE6digits+0x110>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	400080e7          	jalr	1024(ra) # 800056e4 <_Z11printStringPKc>
    800062ec:	00000613          	li	a2,0
    800062f0:	00a00593          	li	a1,10
    800062f4:	00048513          	mv	a0,s1
    800062f8:	fffff097          	auipc	ra,0xfffff
    800062fc:	59c080e7          	jalr	1436(ra) # 80005894 <_Z8printIntiii>
    80006300:	00003517          	auipc	a0,0x3
    80006304:	ea850513          	addi	a0,a0,-344 # 800091a8 <CONSOLE_STATUS+0x198>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	3dc080e7          	jalr	988(ra) # 800056e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006310:	0014849b          	addiw	s1,s1,1
    80006314:	0ff4f493          	andi	s1,s1,255
    80006318:	00500793          	li	a5,5
    8000631c:	fc97f0e3          	bgeu	a5,s1,800062dc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006320:	00003517          	auipc	a0,0x3
    80006324:	02050513          	addi	a0,a0,32 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    80006328:	fffff097          	auipc	ra,0xfffff
    8000632c:	3bc080e7          	jalr	956(ra) # 800056e4 <_Z11printStringPKc>
    finishedC = true;
    80006330:	00100793          	li	a5,1
    80006334:	00005717          	auipc	a4,0x5
    80006338:	5cf707a3          	sb	a5,1487(a4) # 8000b903 <_ZL9finishedC>
    thread_dispatch();
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	340080e7          	jalr	832(ra) # 8000167c <_Z15thread_dispatchv>
}
    80006344:	01813083          	ld	ra,24(sp)
    80006348:	01013403          	ld	s0,16(sp)
    8000634c:	00813483          	ld	s1,8(sp)
    80006350:	00013903          	ld	s2,0(sp)
    80006354:	02010113          	addi	sp,sp,32
    80006358:	00008067          	ret

000000008000635c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	01213023          	sd	s2,0(sp)
    80006370:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006374:	00000913          	li	s2,0
    80006378:	0400006f          	j	800063b8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	300080e7          	jalr	768(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006384:	00148493          	addi	s1,s1,1
    80006388:	000027b7          	lui	a5,0x2
    8000638c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006390:	0097ee63          	bltu	a5,s1,800063ac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006394:	00000713          	li	a4,0
    80006398:	000077b7          	lui	a5,0x7
    8000639c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063a0:	fce7eee3          	bltu	a5,a4,8000637c <_ZL11workerBodyBPv+0x20>
    800063a4:	00170713          	addi	a4,a4,1
    800063a8:	ff1ff06f          	j	80006398 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800063ac:	00a00793          	li	a5,10
    800063b0:	04f90663          	beq	s2,a5,800063fc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800063b4:	00190913          	addi	s2,s2,1
    800063b8:	00f00793          	li	a5,15
    800063bc:	0527e463          	bltu	a5,s2,80006404 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	c9050513          	addi	a0,a0,-880 # 80009050 <CONSOLE_STATUS+0x40>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	31c080e7          	jalr	796(ra) # 800056e4 <_Z11printStringPKc>
    800063d0:	00000613          	li	a2,0
    800063d4:	00a00593          	li	a1,10
    800063d8:	0009051b          	sext.w	a0,s2
    800063dc:	fffff097          	auipc	ra,0xfffff
    800063e0:	4b8080e7          	jalr	1208(ra) # 80005894 <_Z8printIntiii>
    800063e4:	00003517          	auipc	a0,0x3
    800063e8:	dc450513          	addi	a0,a0,-572 # 800091a8 <CONSOLE_STATUS+0x198>
    800063ec:	fffff097          	auipc	ra,0xfffff
    800063f0:	2f8080e7          	jalr	760(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800063f4:	00000493          	li	s1,0
    800063f8:	f91ff06f          	j	80006388 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800063fc:	14102ff3          	csrr	t6,sepc
    80006400:	fb5ff06f          	j	800063b4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006404:	00003517          	auipc	a0,0x3
    80006408:	f4c50513          	addi	a0,a0,-180 # 80009350 <_ZZ12printIntegermE6digits+0x100>
    8000640c:	fffff097          	auipc	ra,0xfffff
    80006410:	2d8080e7          	jalr	728(ra) # 800056e4 <_Z11printStringPKc>
    finishedB = true;
    80006414:	00100793          	li	a5,1
    80006418:	00005717          	auipc	a4,0x5
    8000641c:	4ef70623          	sb	a5,1260(a4) # 8000b904 <_ZL9finishedB>
    thread_dispatch();
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	25c080e7          	jalr	604(ra) # 8000167c <_Z15thread_dispatchv>
}
    80006428:	01813083          	ld	ra,24(sp)
    8000642c:	01013403          	ld	s0,16(sp)
    80006430:	00813483          	ld	s1,8(sp)
    80006434:	00013903          	ld	s2,0(sp)
    80006438:	02010113          	addi	sp,sp,32
    8000643c:	00008067          	ret

0000000080006440 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00113c23          	sd	ra,24(sp)
    80006448:	00813823          	sd	s0,16(sp)
    8000644c:	00913423          	sd	s1,8(sp)
    80006450:	01213023          	sd	s2,0(sp)
    80006454:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006458:	00000913          	li	s2,0
    8000645c:	0380006f          	j	80006494 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	21c080e7          	jalr	540(ra) # 8000167c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006468:	00148493          	addi	s1,s1,1
    8000646c:	000027b7          	lui	a5,0x2
    80006470:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006474:	0097ee63          	bltu	a5,s1,80006490 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006478:	00000713          	li	a4,0
    8000647c:	000077b7          	lui	a5,0x7
    80006480:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006484:	fce7eee3          	bltu	a5,a4,80006460 <_ZL11workerBodyAPv+0x20>
    80006488:	00170713          	addi	a4,a4,1
    8000648c:	ff1ff06f          	j	8000647c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006490:	00190913          	addi	s2,s2,1
    80006494:	00900793          	li	a5,9
    80006498:	0527e063          	bltu	a5,s2,800064d8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000649c:	00003517          	auipc	a0,0x3
    800064a0:	b8450513          	addi	a0,a0,-1148 # 80009020 <CONSOLE_STATUS+0x10>
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	240080e7          	jalr	576(ra) # 800056e4 <_Z11printStringPKc>
    800064ac:	00000613          	li	a2,0
    800064b0:	00a00593          	li	a1,10
    800064b4:	0009051b          	sext.w	a0,s2
    800064b8:	fffff097          	auipc	ra,0xfffff
    800064bc:	3dc080e7          	jalr	988(ra) # 80005894 <_Z8printIntiii>
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	ce850513          	addi	a0,a0,-792 # 800091a8 <CONSOLE_STATUS+0x198>
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	21c080e7          	jalr	540(ra) # 800056e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064d0:	00000493          	li	s1,0
    800064d4:	f99ff06f          	j	8000646c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	e6850513          	addi	a0,a0,-408 # 80009340 <_ZZ12printIntegermE6digits+0xf0>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	204080e7          	jalr	516(ra) # 800056e4 <_Z11printStringPKc>
    finishedA = true;
    800064e8:	00100793          	li	a5,1
    800064ec:	00005717          	auipc	a4,0x5
    800064f0:	40f70ca3          	sb	a5,1049(a4) # 8000b905 <_ZL9finishedA>
}
    800064f4:	01813083          	ld	ra,24(sp)
    800064f8:	01013403          	ld	s0,16(sp)
    800064fc:	00813483          	ld	s1,8(sp)
    80006500:	00013903          	ld	s2,0(sp)
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00008067          	ret

000000008000650c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000650c:	fd010113          	addi	sp,sp,-48
    80006510:	02113423          	sd	ra,40(sp)
    80006514:	02813023          	sd	s0,32(sp)
    80006518:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000651c:	00000613          	li	a2,0
    80006520:	00000597          	auipc	a1,0x0
    80006524:	f2058593          	addi	a1,a1,-224 # 80006440 <_ZL11workerBodyAPv>
    80006528:	fd040513          	addi	a0,s0,-48
    8000652c:	ffffb097          	auipc	ra,0xffffb
    80006530:	0ac080e7          	jalr	172(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006534:	00003517          	auipc	a0,0x3
    80006538:	c8450513          	addi	a0,a0,-892 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000653c:	fffff097          	auipc	ra,0xfffff
    80006540:	1a8080e7          	jalr	424(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006544:	00000613          	li	a2,0
    80006548:	00000597          	auipc	a1,0x0
    8000654c:	e1458593          	addi	a1,a1,-492 # 8000635c <_ZL11workerBodyBPv>
    80006550:	fd840513          	addi	a0,s0,-40
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	084080e7          	jalr	132(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000655c:	00003517          	auipc	a0,0x3
    80006560:	c7450513          	addi	a0,a0,-908 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80006564:	fffff097          	auipc	ra,0xfffff
    80006568:	180080e7          	jalr	384(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000656c:	00000613          	li	a2,0
    80006570:	00000597          	auipc	a1,0x0
    80006574:	c6c58593          	addi	a1,a1,-916 # 800061dc <_ZL11workerBodyCPv>
    80006578:	fe040513          	addi	a0,s0,-32
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	05c080e7          	jalr	92(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006584:	00003517          	auipc	a0,0x3
    80006588:	c6450513          	addi	a0,a0,-924 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	158080e7          	jalr	344(ra) # 800056e4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006594:	00000613          	li	a2,0
    80006598:	00000597          	auipc	a1,0x0
    8000659c:	afc58593          	addi	a1,a1,-1284 # 80006094 <_ZL11workerBodyDPv>
    800065a0:	fe840513          	addi	a0,s0,-24
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	034080e7          	jalr	52(ra) # 800015d8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800065ac:	00003517          	auipc	a0,0x3
    800065b0:	c5450513          	addi	a0,a0,-940 # 80009200 <CONSOLE_STATUS+0x1f0>
    800065b4:	fffff097          	auipc	ra,0xfffff
    800065b8:	130080e7          	jalr	304(ra) # 800056e4 <_Z11printStringPKc>
    800065bc:	00c0006f          	j	800065c8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	0bc080e7          	jalr	188(ra) # 8000167c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800065c8:	00005797          	auipc	a5,0x5
    800065cc:	33d7c783          	lbu	a5,829(a5) # 8000b905 <_ZL9finishedA>
    800065d0:	fe0788e3          	beqz	a5,800065c0 <_Z16System_Mode_testv+0xb4>
    800065d4:	00005797          	auipc	a5,0x5
    800065d8:	3307c783          	lbu	a5,816(a5) # 8000b904 <_ZL9finishedB>
    800065dc:	fe0782e3          	beqz	a5,800065c0 <_Z16System_Mode_testv+0xb4>
    800065e0:	00005797          	auipc	a5,0x5
    800065e4:	3237c783          	lbu	a5,803(a5) # 8000b903 <_ZL9finishedC>
    800065e8:	fc078ce3          	beqz	a5,800065c0 <_Z16System_Mode_testv+0xb4>
    800065ec:	00005797          	auipc	a5,0x5
    800065f0:	3167c783          	lbu	a5,790(a5) # 8000b902 <_ZL9finishedD>
    800065f4:	fc0786e3          	beqz	a5,800065c0 <_Z16System_Mode_testv+0xb4>
    }

}
    800065f8:	02813083          	ld	ra,40(sp)
    800065fc:	02013403          	ld	s0,32(sp)
    80006600:	03010113          	addi	sp,sp,48
    80006604:	00008067          	ret

0000000080006608 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006608:	fe010113          	addi	sp,sp,-32
    8000660c:	00113c23          	sd	ra,24(sp)
    80006610:	00813823          	sd	s0,16(sp)
    80006614:	00913423          	sd	s1,8(sp)
    80006618:	01213023          	sd	s2,0(sp)
    8000661c:	02010413          	addi	s0,sp,32
    80006620:	00050493          	mv	s1,a0
    80006624:	00058913          	mv	s2,a1
    80006628:	0015879b          	addiw	a5,a1,1
    8000662c:	0007851b          	sext.w	a0,a5
    80006630:	00f4a023          	sw	a5,0(s1)
    80006634:	0004a823          	sw	zero,16(s1)
    80006638:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000663c:	00251513          	slli	a0,a0,0x2
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	e6c080e7          	jalr	-404(ra) # 800014ac <_Z9mem_allocm>
    80006648:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000664c:	00000593          	li	a1,0
    80006650:	02048513          	addi	a0,s1,32
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	06c080e7          	jalr	108(ra) # 800016c0 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    8000665c:	00090593          	mv	a1,s2
    80006660:	01848513          	addi	a0,s1,24
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	05c080e7          	jalr	92(ra) # 800016c0 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    8000666c:	00100593          	li	a1,1
    80006670:	02848513          	addi	a0,s1,40
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	04c080e7          	jalr	76(ra) # 800016c0 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    8000667c:	00100593          	li	a1,1
    80006680:	03048513          	addi	a0,s1,48
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	03c080e7          	jalr	60(ra) # 800016c0 <_Z8sem_openPP3Semj>
}
    8000668c:	01813083          	ld	ra,24(sp)
    80006690:	01013403          	ld	s0,16(sp)
    80006694:	00813483          	ld	s1,8(sp)
    80006698:	00013903          	ld	s2,0(sp)
    8000669c:	02010113          	addi	sp,sp,32
    800066a0:	00008067          	ret

00000000800066a4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800066a4:	fe010113          	addi	sp,sp,-32
    800066a8:	00113c23          	sd	ra,24(sp)
    800066ac:	00813823          	sd	s0,16(sp)
    800066b0:	00913423          	sd	s1,8(sp)
    800066b4:	01213023          	sd	s2,0(sp)
    800066b8:	02010413          	addi	s0,sp,32
    800066bc:	00050493          	mv	s1,a0
    800066c0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066c4:	01853503          	ld	a0,24(a0)
    800066c8:	ffffb097          	auipc	ra,0xffffb
    800066cc:	054080e7          	jalr	84(ra) # 8000171c <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800066d0:	0304b503          	ld	a0,48(s1)
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	048080e7          	jalr	72(ra) # 8000171c <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800066dc:	0084b783          	ld	a5,8(s1)
    800066e0:	0144a703          	lw	a4,20(s1)
    800066e4:	00271713          	slli	a4,a4,0x2
    800066e8:	00e787b3          	add	a5,a5,a4
    800066ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066f0:	0144a783          	lw	a5,20(s1)
    800066f4:	0017879b          	addiw	a5,a5,1
    800066f8:	0004a703          	lw	a4,0(s1)
    800066fc:	02e7e7bb          	remw	a5,a5,a4
    80006700:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006704:	0304b503          	ld	a0,48(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	040080e7          	jalr	64(ra) # 80001748 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006710:	0204b503          	ld	a0,32(s1)
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	034080e7          	jalr	52(ra) # 80001748 <_Z10sem_signalP3Sem>

}
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	00013903          	ld	s2,0(sp)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00008067          	ret

0000000080006734 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006734:	fe010113          	addi	sp,sp,-32
    80006738:	00113c23          	sd	ra,24(sp)
    8000673c:	00813823          	sd	s0,16(sp)
    80006740:	00913423          	sd	s1,8(sp)
    80006744:	01213023          	sd	s2,0(sp)
    80006748:	02010413          	addi	s0,sp,32
    8000674c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006750:	02053503          	ld	a0,32(a0)
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	fc8080e7          	jalr	-56(ra) # 8000171c <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000675c:	0284b503          	ld	a0,40(s1)
    80006760:	ffffb097          	auipc	ra,0xffffb
    80006764:	fbc080e7          	jalr	-68(ra) # 8000171c <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006768:	0084b703          	ld	a4,8(s1)
    8000676c:	0104a783          	lw	a5,16(s1)
    80006770:	00279693          	slli	a3,a5,0x2
    80006774:	00d70733          	add	a4,a4,a3
    80006778:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000677c:	0017879b          	addiw	a5,a5,1
    80006780:	0004a703          	lw	a4,0(s1)
    80006784:	02e7e7bb          	remw	a5,a5,a4
    80006788:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000678c:	0284b503          	ld	a0,40(s1)
    80006790:	ffffb097          	auipc	ra,0xffffb
    80006794:	fb8080e7          	jalr	-72(ra) # 80001748 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006798:	0184b503          	ld	a0,24(s1)
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	fac080e7          	jalr	-84(ra) # 80001748 <_Z10sem_signalP3Sem>

    return ret;
}
    800067a4:	00090513          	mv	a0,s2
    800067a8:	01813083          	ld	ra,24(sp)
    800067ac:	01013403          	ld	s0,16(sp)
    800067b0:	00813483          	ld	s1,8(sp)
    800067b4:	00013903          	ld	s2,0(sp)
    800067b8:	02010113          	addi	sp,sp,32
    800067bc:	00008067          	ret

00000000800067c0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800067c0:	fe010113          	addi	sp,sp,-32
    800067c4:	00113c23          	sd	ra,24(sp)
    800067c8:	00813823          	sd	s0,16(sp)
    800067cc:	00913423          	sd	s1,8(sp)
    800067d0:	01213023          	sd	s2,0(sp)
    800067d4:	02010413          	addi	s0,sp,32
    800067d8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800067dc:	02853503          	ld	a0,40(a0)
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	f3c080e7          	jalr	-196(ra) # 8000171c <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800067e8:	0304b503          	ld	a0,48(s1)
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	f30080e7          	jalr	-208(ra) # 8000171c <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800067f4:	0144a783          	lw	a5,20(s1)
    800067f8:	0104a903          	lw	s2,16(s1)
    800067fc:	0327ce63          	blt	a5,s2,80006838 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006800:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006804:	0304b503          	ld	a0,48(s1)
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	f40080e7          	jalr	-192(ra) # 80001748 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006810:	0284b503          	ld	a0,40(s1)
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	f34080e7          	jalr	-204(ra) # 80001748 <_Z10sem_signalP3Sem>

    return ret;
}
    8000681c:	00090513          	mv	a0,s2
    80006820:	01813083          	ld	ra,24(sp)
    80006824:	01013403          	ld	s0,16(sp)
    80006828:	00813483          	ld	s1,8(sp)
    8000682c:	00013903          	ld	s2,0(sp)
    80006830:	02010113          	addi	sp,sp,32
    80006834:	00008067          	ret
        ret = cap - head + tail;
    80006838:	0004a703          	lw	a4,0(s1)
    8000683c:	4127093b          	subw	s2,a4,s2
    80006840:	00f9093b          	addw	s2,s2,a5
    80006844:	fc1ff06f          	j	80006804 <_ZN6Buffer6getCntEv+0x44>

0000000080006848 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006848:	fe010113          	addi	sp,sp,-32
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	00813823          	sd	s0,16(sp)
    80006854:	00913423          	sd	s1,8(sp)
    80006858:	02010413          	addi	s0,sp,32
    8000685c:	00050493          	mv	s1,a0
    putc('\n');
    80006860:	00a00513          	li	a0,10
    80006864:	ffffb097          	auipc	ra,0xffffb
    80006868:	f38080e7          	jalr	-200(ra) # 8000179c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	b5c50513          	addi	a0,a0,-1188 # 800093c8 <_ZZ12printIntegermE6digits+0x178>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	e70080e7          	jalr	-400(ra) # 800056e4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000687c:	00048513          	mv	a0,s1
    80006880:	00000097          	auipc	ra,0x0
    80006884:	f40080e7          	jalr	-192(ra) # 800067c0 <_ZN6Buffer6getCntEv>
    80006888:	02a05c63          	blez	a0,800068c0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000688c:	0084b783          	ld	a5,8(s1)
    80006890:	0104a703          	lw	a4,16(s1)
    80006894:	00271713          	slli	a4,a4,0x2
    80006898:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000689c:	0007c503          	lbu	a0,0(a5)
    800068a0:	ffffb097          	auipc	ra,0xffffb
    800068a4:	efc080e7          	jalr	-260(ra) # 8000179c <_Z4putcc>
        head = (head + 1) % cap;
    800068a8:	0104a783          	lw	a5,16(s1)
    800068ac:	0017879b          	addiw	a5,a5,1
    800068b0:	0004a703          	lw	a4,0(s1)
    800068b4:	02e7e7bb          	remw	a5,a5,a4
    800068b8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800068bc:	fc1ff06f          	j	8000687c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800068c0:	02100513          	li	a0,33
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	ed8080e7          	jalr	-296(ra) # 8000179c <_Z4putcc>
    putc('\n');
    800068cc:	00a00513          	li	a0,10
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	ecc080e7          	jalr	-308(ra) # 8000179c <_Z4putcc>
    mem_free(buffer);
    800068d8:	0084b503          	ld	a0,8(s1)
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	c08080e7          	jalr	-1016(ra) # 800014e4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800068e4:	0204b503          	ld	a0,32(s1)
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	e08080e7          	jalr	-504(ra) # 800016f0 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800068f0:	0184b503          	ld	a0,24(s1)
    800068f4:	ffffb097          	auipc	ra,0xffffb
    800068f8:	dfc080e7          	jalr	-516(ra) # 800016f0 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800068fc:	0304b503          	ld	a0,48(s1)
    80006900:	ffffb097          	auipc	ra,0xffffb
    80006904:	df0080e7          	jalr	-528(ra) # 800016f0 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006908:	0284b503          	ld	a0,40(s1)
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	de4080e7          	jalr	-540(ra) # 800016f0 <_Z9sem_closeP3Sem>
}
    80006914:	01813083          	ld	ra,24(sp)
    80006918:	01013403          	ld	s0,16(sp)
    8000691c:	00813483          	ld	s1,8(sp)
    80006920:	02010113          	addi	sp,sp,32
    80006924:	00008067          	ret

0000000080006928 <start>:
    80006928:	ff010113          	addi	sp,sp,-16
    8000692c:	00813423          	sd	s0,8(sp)
    80006930:	01010413          	addi	s0,sp,16
    80006934:	300027f3          	csrr	a5,mstatus
    80006938:	ffffe737          	lui	a4,0xffffe
    8000693c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c8f>
    80006940:	00e7f7b3          	and	a5,a5,a4
    80006944:	00001737          	lui	a4,0x1
    80006948:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000694c:	00e7e7b3          	or	a5,a5,a4
    80006950:	30079073          	csrw	mstatus,a5
    80006954:	00000797          	auipc	a5,0x0
    80006958:	16078793          	addi	a5,a5,352 # 80006ab4 <system_main>
    8000695c:	34179073          	csrw	mepc,a5
    80006960:	00000793          	li	a5,0
    80006964:	18079073          	csrw	satp,a5
    80006968:	000107b7          	lui	a5,0x10
    8000696c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006970:	30279073          	csrw	medeleg,a5
    80006974:	30379073          	csrw	mideleg,a5
    80006978:	104027f3          	csrr	a5,sie
    8000697c:	2227e793          	ori	a5,a5,546
    80006980:	10479073          	csrw	sie,a5
    80006984:	fff00793          	li	a5,-1
    80006988:	00a7d793          	srli	a5,a5,0xa
    8000698c:	3b079073          	csrw	pmpaddr0,a5
    80006990:	00f00793          	li	a5,15
    80006994:	3a079073          	csrw	pmpcfg0,a5
    80006998:	f14027f3          	csrr	a5,mhartid
    8000699c:	0200c737          	lui	a4,0x200c
    800069a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800069a4:	0007869b          	sext.w	a3,a5
    800069a8:	00269713          	slli	a4,a3,0x2
    800069ac:	000f4637          	lui	a2,0xf4
    800069b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069b4:	00d70733          	add	a4,a4,a3
    800069b8:	0037979b          	slliw	a5,a5,0x3
    800069bc:	020046b7          	lui	a3,0x2004
    800069c0:	00d787b3          	add	a5,a5,a3
    800069c4:	00c585b3          	add	a1,a1,a2
    800069c8:	00371693          	slli	a3,a4,0x3
    800069cc:	00005717          	auipc	a4,0x5
    800069d0:	f4470713          	addi	a4,a4,-188 # 8000b910 <timer_scratch>
    800069d4:	00b7b023          	sd	a1,0(a5)
    800069d8:	00d70733          	add	a4,a4,a3
    800069dc:	00f73c23          	sd	a5,24(a4)
    800069e0:	02c73023          	sd	a2,32(a4)
    800069e4:	34071073          	csrw	mscratch,a4
    800069e8:	00000797          	auipc	a5,0x0
    800069ec:	6e878793          	addi	a5,a5,1768 # 800070d0 <timervec>
    800069f0:	30579073          	csrw	mtvec,a5
    800069f4:	300027f3          	csrr	a5,mstatus
    800069f8:	0087e793          	ori	a5,a5,8
    800069fc:	30079073          	csrw	mstatus,a5
    80006a00:	304027f3          	csrr	a5,mie
    80006a04:	0807e793          	ori	a5,a5,128
    80006a08:	30479073          	csrw	mie,a5
    80006a0c:	f14027f3          	csrr	a5,mhartid
    80006a10:	0007879b          	sext.w	a5,a5
    80006a14:	00078213          	mv	tp,a5
    80006a18:	30200073          	mret
    80006a1c:	00813403          	ld	s0,8(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <timerinit>:
    80006a28:	ff010113          	addi	sp,sp,-16
    80006a2c:	00813423          	sd	s0,8(sp)
    80006a30:	01010413          	addi	s0,sp,16
    80006a34:	f14027f3          	csrr	a5,mhartid
    80006a38:	0200c737          	lui	a4,0x200c
    80006a3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a40:	0007869b          	sext.w	a3,a5
    80006a44:	00269713          	slli	a4,a3,0x2
    80006a48:	000f4637          	lui	a2,0xf4
    80006a4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a50:	00d70733          	add	a4,a4,a3
    80006a54:	0037979b          	slliw	a5,a5,0x3
    80006a58:	020046b7          	lui	a3,0x2004
    80006a5c:	00d787b3          	add	a5,a5,a3
    80006a60:	00c585b3          	add	a1,a1,a2
    80006a64:	00371693          	slli	a3,a4,0x3
    80006a68:	00005717          	auipc	a4,0x5
    80006a6c:	ea870713          	addi	a4,a4,-344 # 8000b910 <timer_scratch>
    80006a70:	00b7b023          	sd	a1,0(a5)
    80006a74:	00d70733          	add	a4,a4,a3
    80006a78:	00f73c23          	sd	a5,24(a4)
    80006a7c:	02c73023          	sd	a2,32(a4)
    80006a80:	34071073          	csrw	mscratch,a4
    80006a84:	00000797          	auipc	a5,0x0
    80006a88:	64c78793          	addi	a5,a5,1612 # 800070d0 <timervec>
    80006a8c:	30579073          	csrw	mtvec,a5
    80006a90:	300027f3          	csrr	a5,mstatus
    80006a94:	0087e793          	ori	a5,a5,8
    80006a98:	30079073          	csrw	mstatus,a5
    80006a9c:	304027f3          	csrr	a5,mie
    80006aa0:	0807e793          	ori	a5,a5,128
    80006aa4:	30479073          	csrw	mie,a5
    80006aa8:	00813403          	ld	s0,8(sp)
    80006aac:	01010113          	addi	sp,sp,16
    80006ab0:	00008067          	ret

0000000080006ab4 <system_main>:
    80006ab4:	fe010113          	addi	sp,sp,-32
    80006ab8:	00813823          	sd	s0,16(sp)
    80006abc:	00913423          	sd	s1,8(sp)
    80006ac0:	00113c23          	sd	ra,24(sp)
    80006ac4:	02010413          	addi	s0,sp,32
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	0c4080e7          	jalr	196(ra) # 80006b8c <cpuid>
    80006ad0:	00005497          	auipc	s1,0x5
    80006ad4:	d8048493          	addi	s1,s1,-640 # 8000b850 <started>
    80006ad8:	02050263          	beqz	a0,80006afc <system_main+0x48>
    80006adc:	0004a783          	lw	a5,0(s1)
    80006ae0:	0007879b          	sext.w	a5,a5
    80006ae4:	fe078ce3          	beqz	a5,80006adc <system_main+0x28>
    80006ae8:	0ff0000f          	fence
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	b6c50513          	addi	a0,a0,-1172 # 80009658 <_ZZ12printIntegermE6digits+0x408>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	a78080e7          	jalr	-1416(ra) # 8000756c <panic>
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	9cc080e7          	jalr	-1588(ra) # 800074c8 <consoleinit>
    80006b04:	00001097          	auipc	ra,0x1
    80006b08:	158080e7          	jalr	344(ra) # 80007c5c <printfinit>
    80006b0c:	00002517          	auipc	a0,0x2
    80006b10:	69c50513          	addi	a0,a0,1692 # 800091a8 <CONSOLE_STATUS+0x198>
    80006b14:	00001097          	auipc	ra,0x1
    80006b18:	ab4080e7          	jalr	-1356(ra) # 800075c8 <__printf>
    80006b1c:	00003517          	auipc	a0,0x3
    80006b20:	b0c50513          	addi	a0,a0,-1268 # 80009628 <_ZZ12printIntegermE6digits+0x3d8>
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	aa4080e7          	jalr	-1372(ra) # 800075c8 <__printf>
    80006b2c:	00002517          	auipc	a0,0x2
    80006b30:	67c50513          	addi	a0,a0,1660 # 800091a8 <CONSOLE_STATUS+0x198>
    80006b34:	00001097          	auipc	ra,0x1
    80006b38:	a94080e7          	jalr	-1388(ra) # 800075c8 <__printf>
    80006b3c:	00001097          	auipc	ra,0x1
    80006b40:	4ac080e7          	jalr	1196(ra) # 80007fe8 <kinit>
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	148080e7          	jalr	328(ra) # 80006c8c <trapinit>
    80006b4c:	00000097          	auipc	ra,0x0
    80006b50:	16c080e7          	jalr	364(ra) # 80006cb8 <trapinithart>
    80006b54:	00000097          	auipc	ra,0x0
    80006b58:	5bc080e7          	jalr	1468(ra) # 80007110 <plicinit>
    80006b5c:	00000097          	auipc	ra,0x0
    80006b60:	5dc080e7          	jalr	1500(ra) # 80007138 <plicinithart>
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	078080e7          	jalr	120(ra) # 80006bdc <userinit>
    80006b6c:	0ff0000f          	fence
    80006b70:	00100793          	li	a5,1
    80006b74:	00003517          	auipc	a0,0x3
    80006b78:	acc50513          	addi	a0,a0,-1332 # 80009640 <_ZZ12printIntegermE6digits+0x3f0>
    80006b7c:	00f4a023          	sw	a5,0(s1)
    80006b80:	00001097          	auipc	ra,0x1
    80006b84:	a48080e7          	jalr	-1464(ra) # 800075c8 <__printf>
    80006b88:	0000006f          	j	80006b88 <system_main+0xd4>

0000000080006b8c <cpuid>:
    80006b8c:	ff010113          	addi	sp,sp,-16
    80006b90:	00813423          	sd	s0,8(sp)
    80006b94:	01010413          	addi	s0,sp,16
    80006b98:	00020513          	mv	a0,tp
    80006b9c:	00813403          	ld	s0,8(sp)
    80006ba0:	0005051b          	sext.w	a0,a0
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00008067          	ret

0000000080006bac <mycpu>:
    80006bac:	ff010113          	addi	sp,sp,-16
    80006bb0:	00813423          	sd	s0,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	00020793          	mv	a5,tp
    80006bbc:	00813403          	ld	s0,8(sp)
    80006bc0:	0007879b          	sext.w	a5,a5
    80006bc4:	00779793          	slli	a5,a5,0x7
    80006bc8:	00006517          	auipc	a0,0x6
    80006bcc:	d7850513          	addi	a0,a0,-648 # 8000c940 <cpus>
    80006bd0:	00f50533          	add	a0,a0,a5
    80006bd4:	01010113          	addi	sp,sp,16
    80006bd8:	00008067          	ret

0000000080006bdc <userinit>:
    80006bdc:	ff010113          	addi	sp,sp,-16
    80006be0:	00813423          	sd	s0,8(sp)
    80006be4:	01010413          	addi	s0,sp,16
    80006be8:	00813403          	ld	s0,8(sp)
    80006bec:	01010113          	addi	sp,sp,16
    80006bf0:	ffffb317          	auipc	t1,0xffffb
    80006bf4:	54430067          	jr	1348(t1) # 80002134 <main>

0000000080006bf8 <either_copyout>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813023          	sd	s0,0(sp)
    80006c00:	00113423          	sd	ra,8(sp)
    80006c04:	01010413          	addi	s0,sp,16
    80006c08:	02051663          	bnez	a0,80006c34 <either_copyout+0x3c>
    80006c0c:	00058513          	mv	a0,a1
    80006c10:	00060593          	mv	a1,a2
    80006c14:	0006861b          	sext.w	a2,a3
    80006c18:	00002097          	auipc	ra,0x2
    80006c1c:	c5c080e7          	jalr	-932(ra) # 80008874 <__memmove>
    80006c20:	00813083          	ld	ra,8(sp)
    80006c24:	00013403          	ld	s0,0(sp)
    80006c28:	00000513          	li	a0,0
    80006c2c:	01010113          	addi	sp,sp,16
    80006c30:	00008067          	ret
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	a4c50513          	addi	a0,a0,-1460 # 80009680 <_ZZ12printIntegermE6digits+0x430>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	930080e7          	jalr	-1744(ra) # 8000756c <panic>

0000000080006c44 <either_copyin>:
    80006c44:	ff010113          	addi	sp,sp,-16
    80006c48:	00813023          	sd	s0,0(sp)
    80006c4c:	00113423          	sd	ra,8(sp)
    80006c50:	01010413          	addi	s0,sp,16
    80006c54:	02059463          	bnez	a1,80006c7c <either_copyin+0x38>
    80006c58:	00060593          	mv	a1,a2
    80006c5c:	0006861b          	sext.w	a2,a3
    80006c60:	00002097          	auipc	ra,0x2
    80006c64:	c14080e7          	jalr	-1004(ra) # 80008874 <__memmove>
    80006c68:	00813083          	ld	ra,8(sp)
    80006c6c:	00013403          	ld	s0,0(sp)
    80006c70:	00000513          	li	a0,0
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00008067          	ret
    80006c7c:	00003517          	auipc	a0,0x3
    80006c80:	a2c50513          	addi	a0,a0,-1492 # 800096a8 <_ZZ12printIntegermE6digits+0x458>
    80006c84:	00001097          	auipc	ra,0x1
    80006c88:	8e8080e7          	jalr	-1816(ra) # 8000756c <panic>

0000000080006c8c <trapinit>:
    80006c8c:	ff010113          	addi	sp,sp,-16
    80006c90:	00813423          	sd	s0,8(sp)
    80006c94:	01010413          	addi	s0,sp,16
    80006c98:	00813403          	ld	s0,8(sp)
    80006c9c:	00003597          	auipc	a1,0x3
    80006ca0:	a3458593          	addi	a1,a1,-1484 # 800096d0 <_ZZ12printIntegermE6digits+0x480>
    80006ca4:	00006517          	auipc	a0,0x6
    80006ca8:	d1c50513          	addi	a0,a0,-740 # 8000c9c0 <tickslock>
    80006cac:	01010113          	addi	sp,sp,16
    80006cb0:	00001317          	auipc	t1,0x1
    80006cb4:	5c830067          	jr	1480(t1) # 80008278 <initlock>

0000000080006cb8 <trapinithart>:
    80006cb8:	ff010113          	addi	sp,sp,-16
    80006cbc:	00813423          	sd	s0,8(sp)
    80006cc0:	01010413          	addi	s0,sp,16
    80006cc4:	00000797          	auipc	a5,0x0
    80006cc8:	2fc78793          	addi	a5,a5,764 # 80006fc0 <kernelvec>
    80006ccc:	10579073          	csrw	stvec,a5
    80006cd0:	00813403          	ld	s0,8(sp)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <usertrap>:
    80006cdc:	ff010113          	addi	sp,sp,-16
    80006ce0:	00813423          	sd	s0,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	00813403          	ld	s0,8(sp)
    80006cec:	01010113          	addi	sp,sp,16
    80006cf0:	00008067          	ret

0000000080006cf4 <usertrapret>:
    80006cf4:	ff010113          	addi	sp,sp,-16
    80006cf8:	00813423          	sd	s0,8(sp)
    80006cfc:	01010413          	addi	s0,sp,16
    80006d00:	00813403          	ld	s0,8(sp)
    80006d04:	01010113          	addi	sp,sp,16
    80006d08:	00008067          	ret

0000000080006d0c <kerneltrap>:
    80006d0c:	fe010113          	addi	sp,sp,-32
    80006d10:	00813823          	sd	s0,16(sp)
    80006d14:	00113c23          	sd	ra,24(sp)
    80006d18:	00913423          	sd	s1,8(sp)
    80006d1c:	02010413          	addi	s0,sp,32
    80006d20:	142025f3          	csrr	a1,scause
    80006d24:	100027f3          	csrr	a5,sstatus
    80006d28:	0027f793          	andi	a5,a5,2
    80006d2c:	10079c63          	bnez	a5,80006e44 <kerneltrap+0x138>
    80006d30:	142027f3          	csrr	a5,scause
    80006d34:	0207ce63          	bltz	a5,80006d70 <kerneltrap+0x64>
    80006d38:	00003517          	auipc	a0,0x3
    80006d3c:	9e050513          	addi	a0,a0,-1568 # 80009718 <_ZZ12printIntegermE6digits+0x4c8>
    80006d40:	00001097          	auipc	ra,0x1
    80006d44:	888080e7          	jalr	-1912(ra) # 800075c8 <__printf>
    80006d48:	141025f3          	csrr	a1,sepc
    80006d4c:	14302673          	csrr	a2,stval
    80006d50:	00003517          	auipc	a0,0x3
    80006d54:	9d850513          	addi	a0,a0,-1576 # 80009728 <_ZZ12printIntegermE6digits+0x4d8>
    80006d58:	00001097          	auipc	ra,0x1
    80006d5c:	870080e7          	jalr	-1936(ra) # 800075c8 <__printf>
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	9e050513          	addi	a0,a0,-1568 # 80009740 <_ZZ12printIntegermE6digits+0x4f0>
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	804080e7          	jalr	-2044(ra) # 8000756c <panic>
    80006d70:	0ff7f713          	andi	a4,a5,255
    80006d74:	00900693          	li	a3,9
    80006d78:	04d70063          	beq	a4,a3,80006db8 <kerneltrap+0xac>
    80006d7c:	fff00713          	li	a4,-1
    80006d80:	03f71713          	slli	a4,a4,0x3f
    80006d84:	00170713          	addi	a4,a4,1
    80006d88:	fae798e3          	bne	a5,a4,80006d38 <kerneltrap+0x2c>
    80006d8c:	00000097          	auipc	ra,0x0
    80006d90:	e00080e7          	jalr	-512(ra) # 80006b8c <cpuid>
    80006d94:	06050663          	beqz	a0,80006e00 <kerneltrap+0xf4>
    80006d98:	144027f3          	csrr	a5,sip
    80006d9c:	ffd7f793          	andi	a5,a5,-3
    80006da0:	14479073          	csrw	sip,a5
    80006da4:	01813083          	ld	ra,24(sp)
    80006da8:	01013403          	ld	s0,16(sp)
    80006dac:	00813483          	ld	s1,8(sp)
    80006db0:	02010113          	addi	sp,sp,32
    80006db4:	00008067          	ret
    80006db8:	00000097          	auipc	ra,0x0
    80006dbc:	3cc080e7          	jalr	972(ra) # 80007184 <plic_claim>
    80006dc0:	00a00793          	li	a5,10
    80006dc4:	00050493          	mv	s1,a0
    80006dc8:	06f50863          	beq	a0,a5,80006e38 <kerneltrap+0x12c>
    80006dcc:	fc050ce3          	beqz	a0,80006da4 <kerneltrap+0x98>
    80006dd0:	00050593          	mv	a1,a0
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	92450513          	addi	a0,a0,-1756 # 800096f8 <_ZZ12printIntegermE6digits+0x4a8>
    80006ddc:	00000097          	auipc	ra,0x0
    80006de0:	7ec080e7          	jalr	2028(ra) # 800075c8 <__printf>
    80006de4:	01013403          	ld	s0,16(sp)
    80006de8:	01813083          	ld	ra,24(sp)
    80006dec:	00048513          	mv	a0,s1
    80006df0:	00813483          	ld	s1,8(sp)
    80006df4:	02010113          	addi	sp,sp,32
    80006df8:	00000317          	auipc	t1,0x0
    80006dfc:	3c430067          	jr	964(t1) # 800071bc <plic_complete>
    80006e00:	00006517          	auipc	a0,0x6
    80006e04:	bc050513          	addi	a0,a0,-1088 # 8000c9c0 <tickslock>
    80006e08:	00001097          	auipc	ra,0x1
    80006e0c:	494080e7          	jalr	1172(ra) # 8000829c <acquire>
    80006e10:	00005717          	auipc	a4,0x5
    80006e14:	a4470713          	addi	a4,a4,-1468 # 8000b854 <ticks>
    80006e18:	00072783          	lw	a5,0(a4)
    80006e1c:	00006517          	auipc	a0,0x6
    80006e20:	ba450513          	addi	a0,a0,-1116 # 8000c9c0 <tickslock>
    80006e24:	0017879b          	addiw	a5,a5,1
    80006e28:	00f72023          	sw	a5,0(a4)
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	53c080e7          	jalr	1340(ra) # 80008368 <release>
    80006e34:	f65ff06f          	j	80006d98 <kerneltrap+0x8c>
    80006e38:	00001097          	auipc	ra,0x1
    80006e3c:	098080e7          	jalr	152(ra) # 80007ed0 <uartintr>
    80006e40:	fa5ff06f          	j	80006de4 <kerneltrap+0xd8>
    80006e44:	00003517          	auipc	a0,0x3
    80006e48:	89450513          	addi	a0,a0,-1900 # 800096d8 <_ZZ12printIntegermE6digits+0x488>
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	720080e7          	jalr	1824(ra) # 8000756c <panic>

0000000080006e54 <clockintr>:
    80006e54:	fe010113          	addi	sp,sp,-32
    80006e58:	00813823          	sd	s0,16(sp)
    80006e5c:	00913423          	sd	s1,8(sp)
    80006e60:	00113c23          	sd	ra,24(sp)
    80006e64:	02010413          	addi	s0,sp,32
    80006e68:	00006497          	auipc	s1,0x6
    80006e6c:	b5848493          	addi	s1,s1,-1192 # 8000c9c0 <tickslock>
    80006e70:	00048513          	mv	a0,s1
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	428080e7          	jalr	1064(ra) # 8000829c <acquire>
    80006e7c:	00005717          	auipc	a4,0x5
    80006e80:	9d870713          	addi	a4,a4,-1576 # 8000b854 <ticks>
    80006e84:	00072783          	lw	a5,0(a4)
    80006e88:	01013403          	ld	s0,16(sp)
    80006e8c:	01813083          	ld	ra,24(sp)
    80006e90:	00048513          	mv	a0,s1
    80006e94:	0017879b          	addiw	a5,a5,1
    80006e98:	00813483          	ld	s1,8(sp)
    80006e9c:	00f72023          	sw	a5,0(a4)
    80006ea0:	02010113          	addi	sp,sp,32
    80006ea4:	00001317          	auipc	t1,0x1
    80006ea8:	4c430067          	jr	1220(t1) # 80008368 <release>

0000000080006eac <devintr>:
    80006eac:	142027f3          	csrr	a5,scause
    80006eb0:	00000513          	li	a0,0
    80006eb4:	0007c463          	bltz	a5,80006ebc <devintr+0x10>
    80006eb8:	00008067          	ret
    80006ebc:	fe010113          	addi	sp,sp,-32
    80006ec0:	00813823          	sd	s0,16(sp)
    80006ec4:	00113c23          	sd	ra,24(sp)
    80006ec8:	00913423          	sd	s1,8(sp)
    80006ecc:	02010413          	addi	s0,sp,32
    80006ed0:	0ff7f713          	andi	a4,a5,255
    80006ed4:	00900693          	li	a3,9
    80006ed8:	04d70c63          	beq	a4,a3,80006f30 <devintr+0x84>
    80006edc:	fff00713          	li	a4,-1
    80006ee0:	03f71713          	slli	a4,a4,0x3f
    80006ee4:	00170713          	addi	a4,a4,1
    80006ee8:	00e78c63          	beq	a5,a4,80006f00 <devintr+0x54>
    80006eec:	01813083          	ld	ra,24(sp)
    80006ef0:	01013403          	ld	s0,16(sp)
    80006ef4:	00813483          	ld	s1,8(sp)
    80006ef8:	02010113          	addi	sp,sp,32
    80006efc:	00008067          	ret
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	c8c080e7          	jalr	-884(ra) # 80006b8c <cpuid>
    80006f08:	06050663          	beqz	a0,80006f74 <devintr+0xc8>
    80006f0c:	144027f3          	csrr	a5,sip
    80006f10:	ffd7f793          	andi	a5,a5,-3
    80006f14:	14479073          	csrw	sip,a5
    80006f18:	01813083          	ld	ra,24(sp)
    80006f1c:	01013403          	ld	s0,16(sp)
    80006f20:	00813483          	ld	s1,8(sp)
    80006f24:	00200513          	li	a0,2
    80006f28:	02010113          	addi	sp,sp,32
    80006f2c:	00008067          	ret
    80006f30:	00000097          	auipc	ra,0x0
    80006f34:	254080e7          	jalr	596(ra) # 80007184 <plic_claim>
    80006f38:	00a00793          	li	a5,10
    80006f3c:	00050493          	mv	s1,a0
    80006f40:	06f50663          	beq	a0,a5,80006fac <devintr+0x100>
    80006f44:	00100513          	li	a0,1
    80006f48:	fa0482e3          	beqz	s1,80006eec <devintr+0x40>
    80006f4c:	00048593          	mv	a1,s1
    80006f50:	00002517          	auipc	a0,0x2
    80006f54:	7a850513          	addi	a0,a0,1960 # 800096f8 <_ZZ12printIntegermE6digits+0x4a8>
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	670080e7          	jalr	1648(ra) # 800075c8 <__printf>
    80006f60:	00048513          	mv	a0,s1
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	258080e7          	jalr	600(ra) # 800071bc <plic_complete>
    80006f6c:	00100513          	li	a0,1
    80006f70:	f7dff06f          	j	80006eec <devintr+0x40>
    80006f74:	00006517          	auipc	a0,0x6
    80006f78:	a4c50513          	addi	a0,a0,-1460 # 8000c9c0 <tickslock>
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	320080e7          	jalr	800(ra) # 8000829c <acquire>
    80006f84:	00005717          	auipc	a4,0x5
    80006f88:	8d070713          	addi	a4,a4,-1840 # 8000b854 <ticks>
    80006f8c:	00072783          	lw	a5,0(a4)
    80006f90:	00006517          	auipc	a0,0x6
    80006f94:	a3050513          	addi	a0,a0,-1488 # 8000c9c0 <tickslock>
    80006f98:	0017879b          	addiw	a5,a5,1
    80006f9c:	00f72023          	sw	a5,0(a4)
    80006fa0:	00001097          	auipc	ra,0x1
    80006fa4:	3c8080e7          	jalr	968(ra) # 80008368 <release>
    80006fa8:	f65ff06f          	j	80006f0c <devintr+0x60>
    80006fac:	00001097          	auipc	ra,0x1
    80006fb0:	f24080e7          	jalr	-220(ra) # 80007ed0 <uartintr>
    80006fb4:	fadff06f          	j	80006f60 <devintr+0xb4>
	...

0000000080006fc0 <kernelvec>:
    80006fc0:	f0010113          	addi	sp,sp,-256
    80006fc4:	00113023          	sd	ra,0(sp)
    80006fc8:	00213423          	sd	sp,8(sp)
    80006fcc:	00313823          	sd	gp,16(sp)
    80006fd0:	00413c23          	sd	tp,24(sp)
    80006fd4:	02513023          	sd	t0,32(sp)
    80006fd8:	02613423          	sd	t1,40(sp)
    80006fdc:	02713823          	sd	t2,48(sp)
    80006fe0:	02813c23          	sd	s0,56(sp)
    80006fe4:	04913023          	sd	s1,64(sp)
    80006fe8:	04a13423          	sd	a0,72(sp)
    80006fec:	04b13823          	sd	a1,80(sp)
    80006ff0:	04c13c23          	sd	a2,88(sp)
    80006ff4:	06d13023          	sd	a3,96(sp)
    80006ff8:	06e13423          	sd	a4,104(sp)
    80006ffc:	06f13823          	sd	a5,112(sp)
    80007000:	07013c23          	sd	a6,120(sp)
    80007004:	09113023          	sd	a7,128(sp)
    80007008:	09213423          	sd	s2,136(sp)
    8000700c:	09313823          	sd	s3,144(sp)
    80007010:	09413c23          	sd	s4,152(sp)
    80007014:	0b513023          	sd	s5,160(sp)
    80007018:	0b613423          	sd	s6,168(sp)
    8000701c:	0b713823          	sd	s7,176(sp)
    80007020:	0b813c23          	sd	s8,184(sp)
    80007024:	0d913023          	sd	s9,192(sp)
    80007028:	0da13423          	sd	s10,200(sp)
    8000702c:	0db13823          	sd	s11,208(sp)
    80007030:	0dc13c23          	sd	t3,216(sp)
    80007034:	0fd13023          	sd	t4,224(sp)
    80007038:	0fe13423          	sd	t5,232(sp)
    8000703c:	0ff13823          	sd	t6,240(sp)
    80007040:	ccdff0ef          	jal	ra,80006d0c <kerneltrap>
    80007044:	00013083          	ld	ra,0(sp)
    80007048:	00813103          	ld	sp,8(sp)
    8000704c:	01013183          	ld	gp,16(sp)
    80007050:	02013283          	ld	t0,32(sp)
    80007054:	02813303          	ld	t1,40(sp)
    80007058:	03013383          	ld	t2,48(sp)
    8000705c:	03813403          	ld	s0,56(sp)
    80007060:	04013483          	ld	s1,64(sp)
    80007064:	04813503          	ld	a0,72(sp)
    80007068:	05013583          	ld	a1,80(sp)
    8000706c:	05813603          	ld	a2,88(sp)
    80007070:	06013683          	ld	a3,96(sp)
    80007074:	06813703          	ld	a4,104(sp)
    80007078:	07013783          	ld	a5,112(sp)
    8000707c:	07813803          	ld	a6,120(sp)
    80007080:	08013883          	ld	a7,128(sp)
    80007084:	08813903          	ld	s2,136(sp)
    80007088:	09013983          	ld	s3,144(sp)
    8000708c:	09813a03          	ld	s4,152(sp)
    80007090:	0a013a83          	ld	s5,160(sp)
    80007094:	0a813b03          	ld	s6,168(sp)
    80007098:	0b013b83          	ld	s7,176(sp)
    8000709c:	0b813c03          	ld	s8,184(sp)
    800070a0:	0c013c83          	ld	s9,192(sp)
    800070a4:	0c813d03          	ld	s10,200(sp)
    800070a8:	0d013d83          	ld	s11,208(sp)
    800070ac:	0d813e03          	ld	t3,216(sp)
    800070b0:	0e013e83          	ld	t4,224(sp)
    800070b4:	0e813f03          	ld	t5,232(sp)
    800070b8:	0f013f83          	ld	t6,240(sp)
    800070bc:	10010113          	addi	sp,sp,256
    800070c0:	10200073          	sret
    800070c4:	00000013          	nop
    800070c8:	00000013          	nop
    800070cc:	00000013          	nop

00000000800070d0 <timervec>:
    800070d0:	34051573          	csrrw	a0,mscratch,a0
    800070d4:	00b53023          	sd	a1,0(a0)
    800070d8:	00c53423          	sd	a2,8(a0)
    800070dc:	00d53823          	sd	a3,16(a0)
    800070e0:	01853583          	ld	a1,24(a0)
    800070e4:	02053603          	ld	a2,32(a0)
    800070e8:	0005b683          	ld	a3,0(a1)
    800070ec:	00c686b3          	add	a3,a3,a2
    800070f0:	00d5b023          	sd	a3,0(a1)
    800070f4:	00200593          	li	a1,2
    800070f8:	14459073          	csrw	sip,a1
    800070fc:	01053683          	ld	a3,16(a0)
    80007100:	00853603          	ld	a2,8(a0)
    80007104:	00053583          	ld	a1,0(a0)
    80007108:	34051573          	csrrw	a0,mscratch,a0
    8000710c:	30200073          	mret

0000000080007110 <plicinit>:
    80007110:	ff010113          	addi	sp,sp,-16
    80007114:	00813423          	sd	s0,8(sp)
    80007118:	01010413          	addi	s0,sp,16
    8000711c:	00813403          	ld	s0,8(sp)
    80007120:	0c0007b7          	lui	a5,0xc000
    80007124:	00100713          	li	a4,1
    80007128:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000712c:	00e7a223          	sw	a4,4(a5)
    80007130:	01010113          	addi	sp,sp,16
    80007134:	00008067          	ret

0000000080007138 <plicinithart>:
    80007138:	ff010113          	addi	sp,sp,-16
    8000713c:	00813023          	sd	s0,0(sp)
    80007140:	00113423          	sd	ra,8(sp)
    80007144:	01010413          	addi	s0,sp,16
    80007148:	00000097          	auipc	ra,0x0
    8000714c:	a44080e7          	jalr	-1468(ra) # 80006b8c <cpuid>
    80007150:	0085171b          	slliw	a4,a0,0x8
    80007154:	0c0027b7          	lui	a5,0xc002
    80007158:	00e787b3          	add	a5,a5,a4
    8000715c:	40200713          	li	a4,1026
    80007160:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007164:	00813083          	ld	ra,8(sp)
    80007168:	00013403          	ld	s0,0(sp)
    8000716c:	00d5151b          	slliw	a0,a0,0xd
    80007170:	0c2017b7          	lui	a5,0xc201
    80007174:	00a78533          	add	a0,a5,a0
    80007178:	00052023          	sw	zero,0(a0)
    8000717c:	01010113          	addi	sp,sp,16
    80007180:	00008067          	ret

0000000080007184 <plic_claim>:
    80007184:	ff010113          	addi	sp,sp,-16
    80007188:	00813023          	sd	s0,0(sp)
    8000718c:	00113423          	sd	ra,8(sp)
    80007190:	01010413          	addi	s0,sp,16
    80007194:	00000097          	auipc	ra,0x0
    80007198:	9f8080e7          	jalr	-1544(ra) # 80006b8c <cpuid>
    8000719c:	00813083          	ld	ra,8(sp)
    800071a0:	00013403          	ld	s0,0(sp)
    800071a4:	00d5151b          	slliw	a0,a0,0xd
    800071a8:	0c2017b7          	lui	a5,0xc201
    800071ac:	00a78533          	add	a0,a5,a0
    800071b0:	00452503          	lw	a0,4(a0)
    800071b4:	01010113          	addi	sp,sp,16
    800071b8:	00008067          	ret

00000000800071bc <plic_complete>:
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00913423          	sd	s1,8(sp)
    800071c8:	00113c23          	sd	ra,24(sp)
    800071cc:	02010413          	addi	s0,sp,32
    800071d0:	00050493          	mv	s1,a0
    800071d4:	00000097          	auipc	ra,0x0
    800071d8:	9b8080e7          	jalr	-1608(ra) # 80006b8c <cpuid>
    800071dc:	01813083          	ld	ra,24(sp)
    800071e0:	01013403          	ld	s0,16(sp)
    800071e4:	00d5179b          	slliw	a5,a0,0xd
    800071e8:	0c201737          	lui	a4,0xc201
    800071ec:	00f707b3          	add	a5,a4,a5
    800071f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800071f4:	00813483          	ld	s1,8(sp)
    800071f8:	02010113          	addi	sp,sp,32
    800071fc:	00008067          	ret

0000000080007200 <consolewrite>:
    80007200:	fb010113          	addi	sp,sp,-80
    80007204:	04813023          	sd	s0,64(sp)
    80007208:	04113423          	sd	ra,72(sp)
    8000720c:	02913c23          	sd	s1,56(sp)
    80007210:	03213823          	sd	s2,48(sp)
    80007214:	03313423          	sd	s3,40(sp)
    80007218:	03413023          	sd	s4,32(sp)
    8000721c:	01513c23          	sd	s5,24(sp)
    80007220:	05010413          	addi	s0,sp,80
    80007224:	06c05c63          	blez	a2,8000729c <consolewrite+0x9c>
    80007228:	00060993          	mv	s3,a2
    8000722c:	00050a13          	mv	s4,a0
    80007230:	00058493          	mv	s1,a1
    80007234:	00000913          	li	s2,0
    80007238:	fff00a93          	li	s5,-1
    8000723c:	01c0006f          	j	80007258 <consolewrite+0x58>
    80007240:	fbf44503          	lbu	a0,-65(s0)
    80007244:	0019091b          	addiw	s2,s2,1
    80007248:	00148493          	addi	s1,s1,1
    8000724c:	00001097          	auipc	ra,0x1
    80007250:	a9c080e7          	jalr	-1380(ra) # 80007ce8 <uartputc>
    80007254:	03298063          	beq	s3,s2,80007274 <consolewrite+0x74>
    80007258:	00048613          	mv	a2,s1
    8000725c:	00100693          	li	a3,1
    80007260:	000a0593          	mv	a1,s4
    80007264:	fbf40513          	addi	a0,s0,-65
    80007268:	00000097          	auipc	ra,0x0
    8000726c:	9dc080e7          	jalr	-1572(ra) # 80006c44 <either_copyin>
    80007270:	fd5518e3          	bne	a0,s5,80007240 <consolewrite+0x40>
    80007274:	04813083          	ld	ra,72(sp)
    80007278:	04013403          	ld	s0,64(sp)
    8000727c:	03813483          	ld	s1,56(sp)
    80007280:	02813983          	ld	s3,40(sp)
    80007284:	02013a03          	ld	s4,32(sp)
    80007288:	01813a83          	ld	s5,24(sp)
    8000728c:	00090513          	mv	a0,s2
    80007290:	03013903          	ld	s2,48(sp)
    80007294:	05010113          	addi	sp,sp,80
    80007298:	00008067          	ret
    8000729c:	00000913          	li	s2,0
    800072a0:	fd5ff06f          	j	80007274 <consolewrite+0x74>

00000000800072a4 <consoleread>:
    800072a4:	f9010113          	addi	sp,sp,-112
    800072a8:	06813023          	sd	s0,96(sp)
    800072ac:	04913c23          	sd	s1,88(sp)
    800072b0:	05213823          	sd	s2,80(sp)
    800072b4:	05313423          	sd	s3,72(sp)
    800072b8:	05413023          	sd	s4,64(sp)
    800072bc:	03513c23          	sd	s5,56(sp)
    800072c0:	03613823          	sd	s6,48(sp)
    800072c4:	03713423          	sd	s7,40(sp)
    800072c8:	03813023          	sd	s8,32(sp)
    800072cc:	06113423          	sd	ra,104(sp)
    800072d0:	01913c23          	sd	s9,24(sp)
    800072d4:	07010413          	addi	s0,sp,112
    800072d8:	00060b93          	mv	s7,a2
    800072dc:	00050913          	mv	s2,a0
    800072e0:	00058c13          	mv	s8,a1
    800072e4:	00060b1b          	sext.w	s6,a2
    800072e8:	00005497          	auipc	s1,0x5
    800072ec:	70048493          	addi	s1,s1,1792 # 8000c9e8 <cons>
    800072f0:	00400993          	li	s3,4
    800072f4:	fff00a13          	li	s4,-1
    800072f8:	00a00a93          	li	s5,10
    800072fc:	05705e63          	blez	s7,80007358 <consoleread+0xb4>
    80007300:	09c4a703          	lw	a4,156(s1)
    80007304:	0984a783          	lw	a5,152(s1)
    80007308:	0007071b          	sext.w	a4,a4
    8000730c:	08e78463          	beq	a5,a4,80007394 <consoleread+0xf0>
    80007310:	07f7f713          	andi	a4,a5,127
    80007314:	00e48733          	add	a4,s1,a4
    80007318:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000731c:	0017869b          	addiw	a3,a5,1
    80007320:	08d4ac23          	sw	a3,152(s1)
    80007324:	00070c9b          	sext.w	s9,a4
    80007328:	0b370663          	beq	a4,s3,800073d4 <consoleread+0x130>
    8000732c:	00100693          	li	a3,1
    80007330:	f9f40613          	addi	a2,s0,-97
    80007334:	000c0593          	mv	a1,s8
    80007338:	00090513          	mv	a0,s2
    8000733c:	f8e40fa3          	sb	a4,-97(s0)
    80007340:	00000097          	auipc	ra,0x0
    80007344:	8b8080e7          	jalr	-1864(ra) # 80006bf8 <either_copyout>
    80007348:	01450863          	beq	a0,s4,80007358 <consoleread+0xb4>
    8000734c:	001c0c13          	addi	s8,s8,1
    80007350:	fffb8b9b          	addiw	s7,s7,-1
    80007354:	fb5c94e3          	bne	s9,s5,800072fc <consoleread+0x58>
    80007358:	000b851b          	sext.w	a0,s7
    8000735c:	06813083          	ld	ra,104(sp)
    80007360:	06013403          	ld	s0,96(sp)
    80007364:	05813483          	ld	s1,88(sp)
    80007368:	05013903          	ld	s2,80(sp)
    8000736c:	04813983          	ld	s3,72(sp)
    80007370:	04013a03          	ld	s4,64(sp)
    80007374:	03813a83          	ld	s5,56(sp)
    80007378:	02813b83          	ld	s7,40(sp)
    8000737c:	02013c03          	ld	s8,32(sp)
    80007380:	01813c83          	ld	s9,24(sp)
    80007384:	40ab053b          	subw	a0,s6,a0
    80007388:	03013b03          	ld	s6,48(sp)
    8000738c:	07010113          	addi	sp,sp,112
    80007390:	00008067          	ret
    80007394:	00001097          	auipc	ra,0x1
    80007398:	1d8080e7          	jalr	472(ra) # 8000856c <push_on>
    8000739c:	0984a703          	lw	a4,152(s1)
    800073a0:	09c4a783          	lw	a5,156(s1)
    800073a4:	0007879b          	sext.w	a5,a5
    800073a8:	fef70ce3          	beq	a4,a5,800073a0 <consoleread+0xfc>
    800073ac:	00001097          	auipc	ra,0x1
    800073b0:	234080e7          	jalr	564(ra) # 800085e0 <pop_on>
    800073b4:	0984a783          	lw	a5,152(s1)
    800073b8:	07f7f713          	andi	a4,a5,127
    800073bc:	00e48733          	add	a4,s1,a4
    800073c0:	01874703          	lbu	a4,24(a4)
    800073c4:	0017869b          	addiw	a3,a5,1
    800073c8:	08d4ac23          	sw	a3,152(s1)
    800073cc:	00070c9b          	sext.w	s9,a4
    800073d0:	f5371ee3          	bne	a4,s3,8000732c <consoleread+0x88>
    800073d4:	000b851b          	sext.w	a0,s7
    800073d8:	f96bf2e3          	bgeu	s7,s6,8000735c <consoleread+0xb8>
    800073dc:	08f4ac23          	sw	a5,152(s1)
    800073e0:	f7dff06f          	j	8000735c <consoleread+0xb8>

00000000800073e4 <consputc>:
    800073e4:	10000793          	li	a5,256
    800073e8:	00f50663          	beq	a0,a5,800073f4 <consputc+0x10>
    800073ec:	00001317          	auipc	t1,0x1
    800073f0:	9f430067          	jr	-1548(t1) # 80007de0 <uartputc_sync>
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00113423          	sd	ra,8(sp)
    800073fc:	00813023          	sd	s0,0(sp)
    80007400:	01010413          	addi	s0,sp,16
    80007404:	00800513          	li	a0,8
    80007408:	00001097          	auipc	ra,0x1
    8000740c:	9d8080e7          	jalr	-1576(ra) # 80007de0 <uartputc_sync>
    80007410:	02000513          	li	a0,32
    80007414:	00001097          	auipc	ra,0x1
    80007418:	9cc080e7          	jalr	-1588(ra) # 80007de0 <uartputc_sync>
    8000741c:	00013403          	ld	s0,0(sp)
    80007420:	00813083          	ld	ra,8(sp)
    80007424:	00800513          	li	a0,8
    80007428:	01010113          	addi	sp,sp,16
    8000742c:	00001317          	auipc	t1,0x1
    80007430:	9b430067          	jr	-1612(t1) # 80007de0 <uartputc_sync>

0000000080007434 <consoleintr>:
    80007434:	fe010113          	addi	sp,sp,-32
    80007438:	00813823          	sd	s0,16(sp)
    8000743c:	00913423          	sd	s1,8(sp)
    80007440:	01213023          	sd	s2,0(sp)
    80007444:	00113c23          	sd	ra,24(sp)
    80007448:	02010413          	addi	s0,sp,32
    8000744c:	00005917          	auipc	s2,0x5
    80007450:	59c90913          	addi	s2,s2,1436 # 8000c9e8 <cons>
    80007454:	00050493          	mv	s1,a0
    80007458:	00090513          	mv	a0,s2
    8000745c:	00001097          	auipc	ra,0x1
    80007460:	e40080e7          	jalr	-448(ra) # 8000829c <acquire>
    80007464:	02048c63          	beqz	s1,8000749c <consoleintr+0x68>
    80007468:	0a092783          	lw	a5,160(s2)
    8000746c:	09892703          	lw	a4,152(s2)
    80007470:	07f00693          	li	a3,127
    80007474:	40e7873b          	subw	a4,a5,a4
    80007478:	02e6e263          	bltu	a3,a4,8000749c <consoleintr+0x68>
    8000747c:	00d00713          	li	a4,13
    80007480:	04e48063          	beq	s1,a4,800074c0 <consoleintr+0x8c>
    80007484:	07f7f713          	andi	a4,a5,127
    80007488:	00e90733          	add	a4,s2,a4
    8000748c:	0017879b          	addiw	a5,a5,1
    80007490:	0af92023          	sw	a5,160(s2)
    80007494:	00970c23          	sb	s1,24(a4)
    80007498:	08f92e23          	sw	a5,156(s2)
    8000749c:	01013403          	ld	s0,16(sp)
    800074a0:	01813083          	ld	ra,24(sp)
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	00013903          	ld	s2,0(sp)
    800074ac:	00005517          	auipc	a0,0x5
    800074b0:	53c50513          	addi	a0,a0,1340 # 8000c9e8 <cons>
    800074b4:	02010113          	addi	sp,sp,32
    800074b8:	00001317          	auipc	t1,0x1
    800074bc:	eb030067          	jr	-336(t1) # 80008368 <release>
    800074c0:	00a00493          	li	s1,10
    800074c4:	fc1ff06f          	j	80007484 <consoleintr+0x50>

00000000800074c8 <consoleinit>:
    800074c8:	fe010113          	addi	sp,sp,-32
    800074cc:	00113c23          	sd	ra,24(sp)
    800074d0:	00813823          	sd	s0,16(sp)
    800074d4:	00913423          	sd	s1,8(sp)
    800074d8:	02010413          	addi	s0,sp,32
    800074dc:	00005497          	auipc	s1,0x5
    800074e0:	50c48493          	addi	s1,s1,1292 # 8000c9e8 <cons>
    800074e4:	00048513          	mv	a0,s1
    800074e8:	00002597          	auipc	a1,0x2
    800074ec:	26858593          	addi	a1,a1,616 # 80009750 <_ZZ12printIntegermE6digits+0x500>
    800074f0:	00001097          	auipc	ra,0x1
    800074f4:	d88080e7          	jalr	-632(ra) # 80008278 <initlock>
    800074f8:	00000097          	auipc	ra,0x0
    800074fc:	7ac080e7          	jalr	1964(ra) # 80007ca4 <uartinit>
    80007500:	01813083          	ld	ra,24(sp)
    80007504:	01013403          	ld	s0,16(sp)
    80007508:	00000797          	auipc	a5,0x0
    8000750c:	d9c78793          	addi	a5,a5,-612 # 800072a4 <consoleread>
    80007510:	0af4bc23          	sd	a5,184(s1)
    80007514:	00000797          	auipc	a5,0x0
    80007518:	cec78793          	addi	a5,a5,-788 # 80007200 <consolewrite>
    8000751c:	0cf4b023          	sd	a5,192(s1)
    80007520:	00813483          	ld	s1,8(sp)
    80007524:	02010113          	addi	sp,sp,32
    80007528:	00008067          	ret

000000008000752c <console_read>:
    8000752c:	ff010113          	addi	sp,sp,-16
    80007530:	00813423          	sd	s0,8(sp)
    80007534:	01010413          	addi	s0,sp,16
    80007538:	00813403          	ld	s0,8(sp)
    8000753c:	00005317          	auipc	t1,0x5
    80007540:	56433303          	ld	t1,1380(t1) # 8000caa0 <devsw+0x10>
    80007544:	01010113          	addi	sp,sp,16
    80007548:	00030067          	jr	t1

000000008000754c <console_write>:
    8000754c:	ff010113          	addi	sp,sp,-16
    80007550:	00813423          	sd	s0,8(sp)
    80007554:	01010413          	addi	s0,sp,16
    80007558:	00813403          	ld	s0,8(sp)
    8000755c:	00005317          	auipc	t1,0x5
    80007560:	54c33303          	ld	t1,1356(t1) # 8000caa8 <devsw+0x18>
    80007564:	01010113          	addi	sp,sp,16
    80007568:	00030067          	jr	t1

000000008000756c <panic>:
    8000756c:	fe010113          	addi	sp,sp,-32
    80007570:	00113c23          	sd	ra,24(sp)
    80007574:	00813823          	sd	s0,16(sp)
    80007578:	00913423          	sd	s1,8(sp)
    8000757c:	02010413          	addi	s0,sp,32
    80007580:	00050493          	mv	s1,a0
    80007584:	00002517          	auipc	a0,0x2
    80007588:	1d450513          	addi	a0,a0,468 # 80009758 <_ZZ12printIntegermE6digits+0x508>
    8000758c:	00005797          	auipc	a5,0x5
    80007590:	5a07ae23          	sw	zero,1468(a5) # 8000cb48 <pr+0x18>
    80007594:	00000097          	auipc	ra,0x0
    80007598:	034080e7          	jalr	52(ra) # 800075c8 <__printf>
    8000759c:	00048513          	mv	a0,s1
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	028080e7          	jalr	40(ra) # 800075c8 <__printf>
    800075a8:	00002517          	auipc	a0,0x2
    800075ac:	c0050513          	addi	a0,a0,-1024 # 800091a8 <CONSOLE_STATUS+0x198>
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	018080e7          	jalr	24(ra) # 800075c8 <__printf>
    800075b8:	00100793          	li	a5,1
    800075bc:	00004717          	auipc	a4,0x4
    800075c0:	28f72e23          	sw	a5,668(a4) # 8000b858 <panicked>
    800075c4:	0000006f          	j	800075c4 <panic+0x58>

00000000800075c8 <__printf>:
    800075c8:	f3010113          	addi	sp,sp,-208
    800075cc:	08813023          	sd	s0,128(sp)
    800075d0:	07313423          	sd	s3,104(sp)
    800075d4:	09010413          	addi	s0,sp,144
    800075d8:	05813023          	sd	s8,64(sp)
    800075dc:	08113423          	sd	ra,136(sp)
    800075e0:	06913c23          	sd	s1,120(sp)
    800075e4:	07213823          	sd	s2,112(sp)
    800075e8:	07413023          	sd	s4,96(sp)
    800075ec:	05513c23          	sd	s5,88(sp)
    800075f0:	05613823          	sd	s6,80(sp)
    800075f4:	05713423          	sd	s7,72(sp)
    800075f8:	03913c23          	sd	s9,56(sp)
    800075fc:	03a13823          	sd	s10,48(sp)
    80007600:	03b13423          	sd	s11,40(sp)
    80007604:	00005317          	auipc	t1,0x5
    80007608:	52c30313          	addi	t1,t1,1324 # 8000cb30 <pr>
    8000760c:	01832c03          	lw	s8,24(t1)
    80007610:	00b43423          	sd	a1,8(s0)
    80007614:	00c43823          	sd	a2,16(s0)
    80007618:	00d43c23          	sd	a3,24(s0)
    8000761c:	02e43023          	sd	a4,32(s0)
    80007620:	02f43423          	sd	a5,40(s0)
    80007624:	03043823          	sd	a6,48(s0)
    80007628:	03143c23          	sd	a7,56(s0)
    8000762c:	00050993          	mv	s3,a0
    80007630:	4a0c1663          	bnez	s8,80007adc <__printf+0x514>
    80007634:	60098c63          	beqz	s3,80007c4c <__printf+0x684>
    80007638:	0009c503          	lbu	a0,0(s3)
    8000763c:	00840793          	addi	a5,s0,8
    80007640:	f6f43c23          	sd	a5,-136(s0)
    80007644:	00000493          	li	s1,0
    80007648:	22050063          	beqz	a0,80007868 <__printf+0x2a0>
    8000764c:	00002a37          	lui	s4,0x2
    80007650:	00018ab7          	lui	s5,0x18
    80007654:	000f4b37          	lui	s6,0xf4
    80007658:	00989bb7          	lui	s7,0x989
    8000765c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007660:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007664:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007668:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000766c:	00148c9b          	addiw	s9,s1,1
    80007670:	02500793          	li	a5,37
    80007674:	01998933          	add	s2,s3,s9
    80007678:	38f51263          	bne	a0,a5,800079fc <__printf+0x434>
    8000767c:	00094783          	lbu	a5,0(s2)
    80007680:	00078c9b          	sext.w	s9,a5
    80007684:	1e078263          	beqz	a5,80007868 <__printf+0x2a0>
    80007688:	0024849b          	addiw	s1,s1,2
    8000768c:	07000713          	li	a4,112
    80007690:	00998933          	add	s2,s3,s1
    80007694:	38e78a63          	beq	a5,a4,80007a28 <__printf+0x460>
    80007698:	20f76863          	bltu	a4,a5,800078a8 <__printf+0x2e0>
    8000769c:	42a78863          	beq	a5,a0,80007acc <__printf+0x504>
    800076a0:	06400713          	li	a4,100
    800076a4:	40e79663          	bne	a5,a4,80007ab0 <__printf+0x4e8>
    800076a8:	f7843783          	ld	a5,-136(s0)
    800076ac:	0007a603          	lw	a2,0(a5)
    800076b0:	00878793          	addi	a5,a5,8
    800076b4:	f6f43c23          	sd	a5,-136(s0)
    800076b8:	42064a63          	bltz	a2,80007aec <__printf+0x524>
    800076bc:	00a00713          	li	a4,10
    800076c0:	02e677bb          	remuw	a5,a2,a4
    800076c4:	00002d97          	auipc	s11,0x2
    800076c8:	0bcd8d93          	addi	s11,s11,188 # 80009780 <digits>
    800076cc:	00900593          	li	a1,9
    800076d0:	0006051b          	sext.w	a0,a2
    800076d4:	00000c93          	li	s9,0
    800076d8:	02079793          	slli	a5,a5,0x20
    800076dc:	0207d793          	srli	a5,a5,0x20
    800076e0:	00fd87b3          	add	a5,s11,a5
    800076e4:	0007c783          	lbu	a5,0(a5)
    800076e8:	02e656bb          	divuw	a3,a2,a4
    800076ec:	f8f40023          	sb	a5,-128(s0)
    800076f0:	14c5d863          	bge	a1,a2,80007840 <__printf+0x278>
    800076f4:	06300593          	li	a1,99
    800076f8:	00100c93          	li	s9,1
    800076fc:	02e6f7bb          	remuw	a5,a3,a4
    80007700:	02079793          	slli	a5,a5,0x20
    80007704:	0207d793          	srli	a5,a5,0x20
    80007708:	00fd87b3          	add	a5,s11,a5
    8000770c:	0007c783          	lbu	a5,0(a5)
    80007710:	02e6d73b          	divuw	a4,a3,a4
    80007714:	f8f400a3          	sb	a5,-127(s0)
    80007718:	12a5f463          	bgeu	a1,a0,80007840 <__printf+0x278>
    8000771c:	00a00693          	li	a3,10
    80007720:	00900593          	li	a1,9
    80007724:	02d777bb          	remuw	a5,a4,a3
    80007728:	02079793          	slli	a5,a5,0x20
    8000772c:	0207d793          	srli	a5,a5,0x20
    80007730:	00fd87b3          	add	a5,s11,a5
    80007734:	0007c503          	lbu	a0,0(a5)
    80007738:	02d757bb          	divuw	a5,a4,a3
    8000773c:	f8a40123          	sb	a0,-126(s0)
    80007740:	48e5f263          	bgeu	a1,a4,80007bc4 <__printf+0x5fc>
    80007744:	06300513          	li	a0,99
    80007748:	02d7f5bb          	remuw	a1,a5,a3
    8000774c:	02059593          	slli	a1,a1,0x20
    80007750:	0205d593          	srli	a1,a1,0x20
    80007754:	00bd85b3          	add	a1,s11,a1
    80007758:	0005c583          	lbu	a1,0(a1)
    8000775c:	02d7d7bb          	divuw	a5,a5,a3
    80007760:	f8b401a3          	sb	a1,-125(s0)
    80007764:	48e57263          	bgeu	a0,a4,80007be8 <__printf+0x620>
    80007768:	3e700513          	li	a0,999
    8000776c:	02d7f5bb          	remuw	a1,a5,a3
    80007770:	02059593          	slli	a1,a1,0x20
    80007774:	0205d593          	srli	a1,a1,0x20
    80007778:	00bd85b3          	add	a1,s11,a1
    8000777c:	0005c583          	lbu	a1,0(a1)
    80007780:	02d7d7bb          	divuw	a5,a5,a3
    80007784:	f8b40223          	sb	a1,-124(s0)
    80007788:	46e57663          	bgeu	a0,a4,80007bf4 <__printf+0x62c>
    8000778c:	02d7f5bb          	remuw	a1,a5,a3
    80007790:	02059593          	slli	a1,a1,0x20
    80007794:	0205d593          	srli	a1,a1,0x20
    80007798:	00bd85b3          	add	a1,s11,a1
    8000779c:	0005c583          	lbu	a1,0(a1)
    800077a0:	02d7d7bb          	divuw	a5,a5,a3
    800077a4:	f8b402a3          	sb	a1,-123(s0)
    800077a8:	46ea7863          	bgeu	s4,a4,80007c18 <__printf+0x650>
    800077ac:	02d7f5bb          	remuw	a1,a5,a3
    800077b0:	02059593          	slli	a1,a1,0x20
    800077b4:	0205d593          	srli	a1,a1,0x20
    800077b8:	00bd85b3          	add	a1,s11,a1
    800077bc:	0005c583          	lbu	a1,0(a1)
    800077c0:	02d7d7bb          	divuw	a5,a5,a3
    800077c4:	f8b40323          	sb	a1,-122(s0)
    800077c8:	3eeaf863          	bgeu	s5,a4,80007bb8 <__printf+0x5f0>
    800077cc:	02d7f5bb          	remuw	a1,a5,a3
    800077d0:	02059593          	slli	a1,a1,0x20
    800077d4:	0205d593          	srli	a1,a1,0x20
    800077d8:	00bd85b3          	add	a1,s11,a1
    800077dc:	0005c583          	lbu	a1,0(a1)
    800077e0:	02d7d7bb          	divuw	a5,a5,a3
    800077e4:	f8b403a3          	sb	a1,-121(s0)
    800077e8:	42eb7e63          	bgeu	s6,a4,80007c24 <__printf+0x65c>
    800077ec:	02d7f5bb          	remuw	a1,a5,a3
    800077f0:	02059593          	slli	a1,a1,0x20
    800077f4:	0205d593          	srli	a1,a1,0x20
    800077f8:	00bd85b3          	add	a1,s11,a1
    800077fc:	0005c583          	lbu	a1,0(a1)
    80007800:	02d7d7bb          	divuw	a5,a5,a3
    80007804:	f8b40423          	sb	a1,-120(s0)
    80007808:	42ebfc63          	bgeu	s7,a4,80007c40 <__printf+0x678>
    8000780c:	02079793          	slli	a5,a5,0x20
    80007810:	0207d793          	srli	a5,a5,0x20
    80007814:	00fd8db3          	add	s11,s11,a5
    80007818:	000dc703          	lbu	a4,0(s11)
    8000781c:	00a00793          	li	a5,10
    80007820:	00900c93          	li	s9,9
    80007824:	f8e404a3          	sb	a4,-119(s0)
    80007828:	00065c63          	bgez	a2,80007840 <__printf+0x278>
    8000782c:	f9040713          	addi	a4,s0,-112
    80007830:	00f70733          	add	a4,a4,a5
    80007834:	02d00693          	li	a3,45
    80007838:	fed70823          	sb	a3,-16(a4)
    8000783c:	00078c93          	mv	s9,a5
    80007840:	f8040793          	addi	a5,s0,-128
    80007844:	01978cb3          	add	s9,a5,s9
    80007848:	f7f40d13          	addi	s10,s0,-129
    8000784c:	000cc503          	lbu	a0,0(s9)
    80007850:	fffc8c93          	addi	s9,s9,-1
    80007854:	00000097          	auipc	ra,0x0
    80007858:	b90080e7          	jalr	-1136(ra) # 800073e4 <consputc>
    8000785c:	ffac98e3          	bne	s9,s10,8000784c <__printf+0x284>
    80007860:	00094503          	lbu	a0,0(s2)
    80007864:	e00514e3          	bnez	a0,8000766c <__printf+0xa4>
    80007868:	1a0c1663          	bnez	s8,80007a14 <__printf+0x44c>
    8000786c:	08813083          	ld	ra,136(sp)
    80007870:	08013403          	ld	s0,128(sp)
    80007874:	07813483          	ld	s1,120(sp)
    80007878:	07013903          	ld	s2,112(sp)
    8000787c:	06813983          	ld	s3,104(sp)
    80007880:	06013a03          	ld	s4,96(sp)
    80007884:	05813a83          	ld	s5,88(sp)
    80007888:	05013b03          	ld	s6,80(sp)
    8000788c:	04813b83          	ld	s7,72(sp)
    80007890:	04013c03          	ld	s8,64(sp)
    80007894:	03813c83          	ld	s9,56(sp)
    80007898:	03013d03          	ld	s10,48(sp)
    8000789c:	02813d83          	ld	s11,40(sp)
    800078a0:	0d010113          	addi	sp,sp,208
    800078a4:	00008067          	ret
    800078a8:	07300713          	li	a4,115
    800078ac:	1ce78a63          	beq	a5,a4,80007a80 <__printf+0x4b8>
    800078b0:	07800713          	li	a4,120
    800078b4:	1ee79e63          	bne	a5,a4,80007ab0 <__printf+0x4e8>
    800078b8:	f7843783          	ld	a5,-136(s0)
    800078bc:	0007a703          	lw	a4,0(a5)
    800078c0:	00878793          	addi	a5,a5,8
    800078c4:	f6f43c23          	sd	a5,-136(s0)
    800078c8:	28074263          	bltz	a4,80007b4c <__printf+0x584>
    800078cc:	00002d97          	auipc	s11,0x2
    800078d0:	eb4d8d93          	addi	s11,s11,-332 # 80009780 <digits>
    800078d4:	00f77793          	andi	a5,a4,15
    800078d8:	00fd87b3          	add	a5,s11,a5
    800078dc:	0007c683          	lbu	a3,0(a5)
    800078e0:	00f00613          	li	a2,15
    800078e4:	0007079b          	sext.w	a5,a4
    800078e8:	f8d40023          	sb	a3,-128(s0)
    800078ec:	0047559b          	srliw	a1,a4,0x4
    800078f0:	0047569b          	srliw	a3,a4,0x4
    800078f4:	00000c93          	li	s9,0
    800078f8:	0ee65063          	bge	a2,a4,800079d8 <__printf+0x410>
    800078fc:	00f6f693          	andi	a3,a3,15
    80007900:	00dd86b3          	add	a3,s11,a3
    80007904:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007908:	0087d79b          	srliw	a5,a5,0x8
    8000790c:	00100c93          	li	s9,1
    80007910:	f8d400a3          	sb	a3,-127(s0)
    80007914:	0cb67263          	bgeu	a2,a1,800079d8 <__printf+0x410>
    80007918:	00f7f693          	andi	a3,a5,15
    8000791c:	00dd86b3          	add	a3,s11,a3
    80007920:	0006c583          	lbu	a1,0(a3)
    80007924:	00f00613          	li	a2,15
    80007928:	0047d69b          	srliw	a3,a5,0x4
    8000792c:	f8b40123          	sb	a1,-126(s0)
    80007930:	0047d593          	srli	a1,a5,0x4
    80007934:	28f67e63          	bgeu	a2,a5,80007bd0 <__printf+0x608>
    80007938:	00f6f693          	andi	a3,a3,15
    8000793c:	00dd86b3          	add	a3,s11,a3
    80007940:	0006c503          	lbu	a0,0(a3)
    80007944:	0087d813          	srli	a6,a5,0x8
    80007948:	0087d69b          	srliw	a3,a5,0x8
    8000794c:	f8a401a3          	sb	a0,-125(s0)
    80007950:	28b67663          	bgeu	a2,a1,80007bdc <__printf+0x614>
    80007954:	00f6f693          	andi	a3,a3,15
    80007958:	00dd86b3          	add	a3,s11,a3
    8000795c:	0006c583          	lbu	a1,0(a3)
    80007960:	00c7d513          	srli	a0,a5,0xc
    80007964:	00c7d69b          	srliw	a3,a5,0xc
    80007968:	f8b40223          	sb	a1,-124(s0)
    8000796c:	29067a63          	bgeu	a2,a6,80007c00 <__printf+0x638>
    80007970:	00f6f693          	andi	a3,a3,15
    80007974:	00dd86b3          	add	a3,s11,a3
    80007978:	0006c583          	lbu	a1,0(a3)
    8000797c:	0107d813          	srli	a6,a5,0x10
    80007980:	0107d69b          	srliw	a3,a5,0x10
    80007984:	f8b402a3          	sb	a1,-123(s0)
    80007988:	28a67263          	bgeu	a2,a0,80007c0c <__printf+0x644>
    8000798c:	00f6f693          	andi	a3,a3,15
    80007990:	00dd86b3          	add	a3,s11,a3
    80007994:	0006c683          	lbu	a3,0(a3)
    80007998:	0147d79b          	srliw	a5,a5,0x14
    8000799c:	f8d40323          	sb	a3,-122(s0)
    800079a0:	21067663          	bgeu	a2,a6,80007bac <__printf+0x5e4>
    800079a4:	02079793          	slli	a5,a5,0x20
    800079a8:	0207d793          	srli	a5,a5,0x20
    800079ac:	00fd8db3          	add	s11,s11,a5
    800079b0:	000dc683          	lbu	a3,0(s11)
    800079b4:	00800793          	li	a5,8
    800079b8:	00700c93          	li	s9,7
    800079bc:	f8d403a3          	sb	a3,-121(s0)
    800079c0:	00075c63          	bgez	a4,800079d8 <__printf+0x410>
    800079c4:	f9040713          	addi	a4,s0,-112
    800079c8:	00f70733          	add	a4,a4,a5
    800079cc:	02d00693          	li	a3,45
    800079d0:	fed70823          	sb	a3,-16(a4)
    800079d4:	00078c93          	mv	s9,a5
    800079d8:	f8040793          	addi	a5,s0,-128
    800079dc:	01978cb3          	add	s9,a5,s9
    800079e0:	f7f40d13          	addi	s10,s0,-129
    800079e4:	000cc503          	lbu	a0,0(s9)
    800079e8:	fffc8c93          	addi	s9,s9,-1
    800079ec:	00000097          	auipc	ra,0x0
    800079f0:	9f8080e7          	jalr	-1544(ra) # 800073e4 <consputc>
    800079f4:	ff9d18e3          	bne	s10,s9,800079e4 <__printf+0x41c>
    800079f8:	0100006f          	j	80007a08 <__printf+0x440>
    800079fc:	00000097          	auipc	ra,0x0
    80007a00:	9e8080e7          	jalr	-1560(ra) # 800073e4 <consputc>
    80007a04:	000c8493          	mv	s1,s9
    80007a08:	00094503          	lbu	a0,0(s2)
    80007a0c:	c60510e3          	bnez	a0,8000766c <__printf+0xa4>
    80007a10:	e40c0ee3          	beqz	s8,8000786c <__printf+0x2a4>
    80007a14:	00005517          	auipc	a0,0x5
    80007a18:	11c50513          	addi	a0,a0,284 # 8000cb30 <pr>
    80007a1c:	00001097          	auipc	ra,0x1
    80007a20:	94c080e7          	jalr	-1716(ra) # 80008368 <release>
    80007a24:	e49ff06f          	j	8000786c <__printf+0x2a4>
    80007a28:	f7843783          	ld	a5,-136(s0)
    80007a2c:	03000513          	li	a0,48
    80007a30:	01000d13          	li	s10,16
    80007a34:	00878713          	addi	a4,a5,8
    80007a38:	0007bc83          	ld	s9,0(a5)
    80007a3c:	f6e43c23          	sd	a4,-136(s0)
    80007a40:	00000097          	auipc	ra,0x0
    80007a44:	9a4080e7          	jalr	-1628(ra) # 800073e4 <consputc>
    80007a48:	07800513          	li	a0,120
    80007a4c:	00000097          	auipc	ra,0x0
    80007a50:	998080e7          	jalr	-1640(ra) # 800073e4 <consputc>
    80007a54:	00002d97          	auipc	s11,0x2
    80007a58:	d2cd8d93          	addi	s11,s11,-724 # 80009780 <digits>
    80007a5c:	03ccd793          	srli	a5,s9,0x3c
    80007a60:	00fd87b3          	add	a5,s11,a5
    80007a64:	0007c503          	lbu	a0,0(a5)
    80007a68:	fffd0d1b          	addiw	s10,s10,-1
    80007a6c:	004c9c93          	slli	s9,s9,0x4
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	974080e7          	jalr	-1676(ra) # 800073e4 <consputc>
    80007a78:	fe0d12e3          	bnez	s10,80007a5c <__printf+0x494>
    80007a7c:	f8dff06f          	j	80007a08 <__printf+0x440>
    80007a80:	f7843783          	ld	a5,-136(s0)
    80007a84:	0007bc83          	ld	s9,0(a5)
    80007a88:	00878793          	addi	a5,a5,8
    80007a8c:	f6f43c23          	sd	a5,-136(s0)
    80007a90:	000c9a63          	bnez	s9,80007aa4 <__printf+0x4dc>
    80007a94:	1080006f          	j	80007b9c <__printf+0x5d4>
    80007a98:	001c8c93          	addi	s9,s9,1
    80007a9c:	00000097          	auipc	ra,0x0
    80007aa0:	948080e7          	jalr	-1720(ra) # 800073e4 <consputc>
    80007aa4:	000cc503          	lbu	a0,0(s9)
    80007aa8:	fe0518e3          	bnez	a0,80007a98 <__printf+0x4d0>
    80007aac:	f5dff06f          	j	80007a08 <__printf+0x440>
    80007ab0:	02500513          	li	a0,37
    80007ab4:	00000097          	auipc	ra,0x0
    80007ab8:	930080e7          	jalr	-1744(ra) # 800073e4 <consputc>
    80007abc:	000c8513          	mv	a0,s9
    80007ac0:	00000097          	auipc	ra,0x0
    80007ac4:	924080e7          	jalr	-1756(ra) # 800073e4 <consputc>
    80007ac8:	f41ff06f          	j	80007a08 <__printf+0x440>
    80007acc:	02500513          	li	a0,37
    80007ad0:	00000097          	auipc	ra,0x0
    80007ad4:	914080e7          	jalr	-1772(ra) # 800073e4 <consputc>
    80007ad8:	f31ff06f          	j	80007a08 <__printf+0x440>
    80007adc:	00030513          	mv	a0,t1
    80007ae0:	00000097          	auipc	ra,0x0
    80007ae4:	7bc080e7          	jalr	1980(ra) # 8000829c <acquire>
    80007ae8:	b4dff06f          	j	80007634 <__printf+0x6c>
    80007aec:	40c0053b          	negw	a0,a2
    80007af0:	00a00713          	li	a4,10
    80007af4:	02e576bb          	remuw	a3,a0,a4
    80007af8:	00002d97          	auipc	s11,0x2
    80007afc:	c88d8d93          	addi	s11,s11,-888 # 80009780 <digits>
    80007b00:	ff700593          	li	a1,-9
    80007b04:	02069693          	slli	a3,a3,0x20
    80007b08:	0206d693          	srli	a3,a3,0x20
    80007b0c:	00dd86b3          	add	a3,s11,a3
    80007b10:	0006c683          	lbu	a3,0(a3)
    80007b14:	02e557bb          	divuw	a5,a0,a4
    80007b18:	f8d40023          	sb	a3,-128(s0)
    80007b1c:	10b65e63          	bge	a2,a1,80007c38 <__printf+0x670>
    80007b20:	06300593          	li	a1,99
    80007b24:	02e7f6bb          	remuw	a3,a5,a4
    80007b28:	02069693          	slli	a3,a3,0x20
    80007b2c:	0206d693          	srli	a3,a3,0x20
    80007b30:	00dd86b3          	add	a3,s11,a3
    80007b34:	0006c683          	lbu	a3,0(a3)
    80007b38:	02e7d73b          	divuw	a4,a5,a4
    80007b3c:	00200793          	li	a5,2
    80007b40:	f8d400a3          	sb	a3,-127(s0)
    80007b44:	bca5ece3          	bltu	a1,a0,8000771c <__printf+0x154>
    80007b48:	ce5ff06f          	j	8000782c <__printf+0x264>
    80007b4c:	40e007bb          	negw	a5,a4
    80007b50:	00002d97          	auipc	s11,0x2
    80007b54:	c30d8d93          	addi	s11,s11,-976 # 80009780 <digits>
    80007b58:	00f7f693          	andi	a3,a5,15
    80007b5c:	00dd86b3          	add	a3,s11,a3
    80007b60:	0006c583          	lbu	a1,0(a3)
    80007b64:	ff100613          	li	a2,-15
    80007b68:	0047d69b          	srliw	a3,a5,0x4
    80007b6c:	f8b40023          	sb	a1,-128(s0)
    80007b70:	0047d59b          	srliw	a1,a5,0x4
    80007b74:	0ac75e63          	bge	a4,a2,80007c30 <__printf+0x668>
    80007b78:	00f6f693          	andi	a3,a3,15
    80007b7c:	00dd86b3          	add	a3,s11,a3
    80007b80:	0006c603          	lbu	a2,0(a3)
    80007b84:	00f00693          	li	a3,15
    80007b88:	0087d79b          	srliw	a5,a5,0x8
    80007b8c:	f8c400a3          	sb	a2,-127(s0)
    80007b90:	d8b6e4e3          	bltu	a3,a1,80007918 <__printf+0x350>
    80007b94:	00200793          	li	a5,2
    80007b98:	e2dff06f          	j	800079c4 <__printf+0x3fc>
    80007b9c:	00002c97          	auipc	s9,0x2
    80007ba0:	bc4c8c93          	addi	s9,s9,-1084 # 80009760 <_ZZ12printIntegermE6digits+0x510>
    80007ba4:	02800513          	li	a0,40
    80007ba8:	ef1ff06f          	j	80007a98 <__printf+0x4d0>
    80007bac:	00700793          	li	a5,7
    80007bb0:	00600c93          	li	s9,6
    80007bb4:	e0dff06f          	j	800079c0 <__printf+0x3f8>
    80007bb8:	00700793          	li	a5,7
    80007bbc:	00600c93          	li	s9,6
    80007bc0:	c69ff06f          	j	80007828 <__printf+0x260>
    80007bc4:	00300793          	li	a5,3
    80007bc8:	00200c93          	li	s9,2
    80007bcc:	c5dff06f          	j	80007828 <__printf+0x260>
    80007bd0:	00300793          	li	a5,3
    80007bd4:	00200c93          	li	s9,2
    80007bd8:	de9ff06f          	j	800079c0 <__printf+0x3f8>
    80007bdc:	00400793          	li	a5,4
    80007be0:	00300c93          	li	s9,3
    80007be4:	dddff06f          	j	800079c0 <__printf+0x3f8>
    80007be8:	00400793          	li	a5,4
    80007bec:	00300c93          	li	s9,3
    80007bf0:	c39ff06f          	j	80007828 <__printf+0x260>
    80007bf4:	00500793          	li	a5,5
    80007bf8:	00400c93          	li	s9,4
    80007bfc:	c2dff06f          	j	80007828 <__printf+0x260>
    80007c00:	00500793          	li	a5,5
    80007c04:	00400c93          	li	s9,4
    80007c08:	db9ff06f          	j	800079c0 <__printf+0x3f8>
    80007c0c:	00600793          	li	a5,6
    80007c10:	00500c93          	li	s9,5
    80007c14:	dadff06f          	j	800079c0 <__printf+0x3f8>
    80007c18:	00600793          	li	a5,6
    80007c1c:	00500c93          	li	s9,5
    80007c20:	c09ff06f          	j	80007828 <__printf+0x260>
    80007c24:	00800793          	li	a5,8
    80007c28:	00700c93          	li	s9,7
    80007c2c:	bfdff06f          	j	80007828 <__printf+0x260>
    80007c30:	00100793          	li	a5,1
    80007c34:	d91ff06f          	j	800079c4 <__printf+0x3fc>
    80007c38:	00100793          	li	a5,1
    80007c3c:	bf1ff06f          	j	8000782c <__printf+0x264>
    80007c40:	00900793          	li	a5,9
    80007c44:	00800c93          	li	s9,8
    80007c48:	be1ff06f          	j	80007828 <__printf+0x260>
    80007c4c:	00002517          	auipc	a0,0x2
    80007c50:	b1c50513          	addi	a0,a0,-1252 # 80009768 <_ZZ12printIntegermE6digits+0x518>
    80007c54:	00000097          	auipc	ra,0x0
    80007c58:	918080e7          	jalr	-1768(ra) # 8000756c <panic>

0000000080007c5c <printfinit>:
    80007c5c:	fe010113          	addi	sp,sp,-32
    80007c60:	00813823          	sd	s0,16(sp)
    80007c64:	00913423          	sd	s1,8(sp)
    80007c68:	00113c23          	sd	ra,24(sp)
    80007c6c:	02010413          	addi	s0,sp,32
    80007c70:	00005497          	auipc	s1,0x5
    80007c74:	ec048493          	addi	s1,s1,-320 # 8000cb30 <pr>
    80007c78:	00048513          	mv	a0,s1
    80007c7c:	00002597          	auipc	a1,0x2
    80007c80:	afc58593          	addi	a1,a1,-1284 # 80009778 <_ZZ12printIntegermE6digits+0x528>
    80007c84:	00000097          	auipc	ra,0x0
    80007c88:	5f4080e7          	jalr	1524(ra) # 80008278 <initlock>
    80007c8c:	01813083          	ld	ra,24(sp)
    80007c90:	01013403          	ld	s0,16(sp)
    80007c94:	0004ac23          	sw	zero,24(s1)
    80007c98:	00813483          	ld	s1,8(sp)
    80007c9c:	02010113          	addi	sp,sp,32
    80007ca0:	00008067          	ret

0000000080007ca4 <uartinit>:
    80007ca4:	ff010113          	addi	sp,sp,-16
    80007ca8:	00813423          	sd	s0,8(sp)
    80007cac:	01010413          	addi	s0,sp,16
    80007cb0:	100007b7          	lui	a5,0x10000
    80007cb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007cb8:	f8000713          	li	a4,-128
    80007cbc:	00e781a3          	sb	a4,3(a5)
    80007cc0:	00300713          	li	a4,3
    80007cc4:	00e78023          	sb	a4,0(a5)
    80007cc8:	000780a3          	sb	zero,1(a5)
    80007ccc:	00e781a3          	sb	a4,3(a5)
    80007cd0:	00700693          	li	a3,7
    80007cd4:	00d78123          	sb	a3,2(a5)
    80007cd8:	00e780a3          	sb	a4,1(a5)
    80007cdc:	00813403          	ld	s0,8(sp)
    80007ce0:	01010113          	addi	sp,sp,16
    80007ce4:	00008067          	ret

0000000080007ce8 <uartputc>:
    80007ce8:	00004797          	auipc	a5,0x4
    80007cec:	b707a783          	lw	a5,-1168(a5) # 8000b858 <panicked>
    80007cf0:	00078463          	beqz	a5,80007cf8 <uartputc+0x10>
    80007cf4:	0000006f          	j	80007cf4 <uartputc+0xc>
    80007cf8:	fd010113          	addi	sp,sp,-48
    80007cfc:	02813023          	sd	s0,32(sp)
    80007d00:	00913c23          	sd	s1,24(sp)
    80007d04:	01213823          	sd	s2,16(sp)
    80007d08:	01313423          	sd	s3,8(sp)
    80007d0c:	02113423          	sd	ra,40(sp)
    80007d10:	03010413          	addi	s0,sp,48
    80007d14:	00004917          	auipc	s2,0x4
    80007d18:	b4c90913          	addi	s2,s2,-1204 # 8000b860 <uart_tx_r>
    80007d1c:	00093783          	ld	a5,0(s2)
    80007d20:	00004497          	auipc	s1,0x4
    80007d24:	b4848493          	addi	s1,s1,-1208 # 8000b868 <uart_tx_w>
    80007d28:	0004b703          	ld	a4,0(s1)
    80007d2c:	02078693          	addi	a3,a5,32
    80007d30:	00050993          	mv	s3,a0
    80007d34:	02e69c63          	bne	a3,a4,80007d6c <uartputc+0x84>
    80007d38:	00001097          	auipc	ra,0x1
    80007d3c:	834080e7          	jalr	-1996(ra) # 8000856c <push_on>
    80007d40:	00093783          	ld	a5,0(s2)
    80007d44:	0004b703          	ld	a4,0(s1)
    80007d48:	02078793          	addi	a5,a5,32
    80007d4c:	00e79463          	bne	a5,a4,80007d54 <uartputc+0x6c>
    80007d50:	0000006f          	j	80007d50 <uartputc+0x68>
    80007d54:	00001097          	auipc	ra,0x1
    80007d58:	88c080e7          	jalr	-1908(ra) # 800085e0 <pop_on>
    80007d5c:	00093783          	ld	a5,0(s2)
    80007d60:	0004b703          	ld	a4,0(s1)
    80007d64:	02078693          	addi	a3,a5,32
    80007d68:	fce688e3          	beq	a3,a4,80007d38 <uartputc+0x50>
    80007d6c:	01f77693          	andi	a3,a4,31
    80007d70:	00005597          	auipc	a1,0x5
    80007d74:	de058593          	addi	a1,a1,-544 # 8000cb50 <uart_tx_buf>
    80007d78:	00d586b3          	add	a3,a1,a3
    80007d7c:	00170713          	addi	a4,a4,1
    80007d80:	01368023          	sb	s3,0(a3)
    80007d84:	00e4b023          	sd	a4,0(s1)
    80007d88:	10000637          	lui	a2,0x10000
    80007d8c:	02f71063          	bne	a4,a5,80007dac <uartputc+0xc4>
    80007d90:	0340006f          	j	80007dc4 <uartputc+0xdc>
    80007d94:	00074703          	lbu	a4,0(a4)
    80007d98:	00f93023          	sd	a5,0(s2)
    80007d9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007da0:	00093783          	ld	a5,0(s2)
    80007da4:	0004b703          	ld	a4,0(s1)
    80007da8:	00f70e63          	beq	a4,a5,80007dc4 <uartputc+0xdc>
    80007dac:	00564683          	lbu	a3,5(a2)
    80007db0:	01f7f713          	andi	a4,a5,31
    80007db4:	00e58733          	add	a4,a1,a4
    80007db8:	0206f693          	andi	a3,a3,32
    80007dbc:	00178793          	addi	a5,a5,1
    80007dc0:	fc069ae3          	bnez	a3,80007d94 <uartputc+0xac>
    80007dc4:	02813083          	ld	ra,40(sp)
    80007dc8:	02013403          	ld	s0,32(sp)
    80007dcc:	01813483          	ld	s1,24(sp)
    80007dd0:	01013903          	ld	s2,16(sp)
    80007dd4:	00813983          	ld	s3,8(sp)
    80007dd8:	03010113          	addi	sp,sp,48
    80007ddc:	00008067          	ret

0000000080007de0 <uartputc_sync>:
    80007de0:	ff010113          	addi	sp,sp,-16
    80007de4:	00813423          	sd	s0,8(sp)
    80007de8:	01010413          	addi	s0,sp,16
    80007dec:	00004717          	auipc	a4,0x4
    80007df0:	a6c72703          	lw	a4,-1428(a4) # 8000b858 <panicked>
    80007df4:	02071663          	bnez	a4,80007e20 <uartputc_sync+0x40>
    80007df8:	00050793          	mv	a5,a0
    80007dfc:	100006b7          	lui	a3,0x10000
    80007e00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007e04:	02077713          	andi	a4,a4,32
    80007e08:	fe070ce3          	beqz	a4,80007e00 <uartputc_sync+0x20>
    80007e0c:	0ff7f793          	andi	a5,a5,255
    80007e10:	00f68023          	sb	a5,0(a3)
    80007e14:	00813403          	ld	s0,8(sp)
    80007e18:	01010113          	addi	sp,sp,16
    80007e1c:	00008067          	ret
    80007e20:	0000006f          	j	80007e20 <uartputc_sync+0x40>

0000000080007e24 <uartstart>:
    80007e24:	ff010113          	addi	sp,sp,-16
    80007e28:	00813423          	sd	s0,8(sp)
    80007e2c:	01010413          	addi	s0,sp,16
    80007e30:	00004617          	auipc	a2,0x4
    80007e34:	a3060613          	addi	a2,a2,-1488 # 8000b860 <uart_tx_r>
    80007e38:	00004517          	auipc	a0,0x4
    80007e3c:	a3050513          	addi	a0,a0,-1488 # 8000b868 <uart_tx_w>
    80007e40:	00063783          	ld	a5,0(a2)
    80007e44:	00053703          	ld	a4,0(a0)
    80007e48:	04f70263          	beq	a4,a5,80007e8c <uartstart+0x68>
    80007e4c:	100005b7          	lui	a1,0x10000
    80007e50:	00005817          	auipc	a6,0x5
    80007e54:	d0080813          	addi	a6,a6,-768 # 8000cb50 <uart_tx_buf>
    80007e58:	01c0006f          	j	80007e74 <uartstart+0x50>
    80007e5c:	0006c703          	lbu	a4,0(a3)
    80007e60:	00f63023          	sd	a5,0(a2)
    80007e64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e68:	00063783          	ld	a5,0(a2)
    80007e6c:	00053703          	ld	a4,0(a0)
    80007e70:	00f70e63          	beq	a4,a5,80007e8c <uartstart+0x68>
    80007e74:	01f7f713          	andi	a4,a5,31
    80007e78:	00e806b3          	add	a3,a6,a4
    80007e7c:	0055c703          	lbu	a4,5(a1)
    80007e80:	00178793          	addi	a5,a5,1
    80007e84:	02077713          	andi	a4,a4,32
    80007e88:	fc071ae3          	bnez	a4,80007e5c <uartstart+0x38>
    80007e8c:	00813403          	ld	s0,8(sp)
    80007e90:	01010113          	addi	sp,sp,16
    80007e94:	00008067          	ret

0000000080007e98 <uartgetc>:
    80007e98:	ff010113          	addi	sp,sp,-16
    80007e9c:	00813423          	sd	s0,8(sp)
    80007ea0:	01010413          	addi	s0,sp,16
    80007ea4:	10000737          	lui	a4,0x10000
    80007ea8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007eac:	0017f793          	andi	a5,a5,1
    80007eb0:	00078c63          	beqz	a5,80007ec8 <uartgetc+0x30>
    80007eb4:	00074503          	lbu	a0,0(a4)
    80007eb8:	0ff57513          	andi	a0,a0,255
    80007ebc:	00813403          	ld	s0,8(sp)
    80007ec0:	01010113          	addi	sp,sp,16
    80007ec4:	00008067          	ret
    80007ec8:	fff00513          	li	a0,-1
    80007ecc:	ff1ff06f          	j	80007ebc <uartgetc+0x24>

0000000080007ed0 <uartintr>:
    80007ed0:	100007b7          	lui	a5,0x10000
    80007ed4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ed8:	0017f793          	andi	a5,a5,1
    80007edc:	0a078463          	beqz	a5,80007f84 <uartintr+0xb4>
    80007ee0:	fe010113          	addi	sp,sp,-32
    80007ee4:	00813823          	sd	s0,16(sp)
    80007ee8:	00913423          	sd	s1,8(sp)
    80007eec:	00113c23          	sd	ra,24(sp)
    80007ef0:	02010413          	addi	s0,sp,32
    80007ef4:	100004b7          	lui	s1,0x10000
    80007ef8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007efc:	0ff57513          	andi	a0,a0,255
    80007f00:	fffff097          	auipc	ra,0xfffff
    80007f04:	534080e7          	jalr	1332(ra) # 80007434 <consoleintr>
    80007f08:	0054c783          	lbu	a5,5(s1)
    80007f0c:	0017f793          	andi	a5,a5,1
    80007f10:	fe0794e3          	bnez	a5,80007ef8 <uartintr+0x28>
    80007f14:	00004617          	auipc	a2,0x4
    80007f18:	94c60613          	addi	a2,a2,-1716 # 8000b860 <uart_tx_r>
    80007f1c:	00004517          	auipc	a0,0x4
    80007f20:	94c50513          	addi	a0,a0,-1716 # 8000b868 <uart_tx_w>
    80007f24:	00063783          	ld	a5,0(a2)
    80007f28:	00053703          	ld	a4,0(a0)
    80007f2c:	04f70263          	beq	a4,a5,80007f70 <uartintr+0xa0>
    80007f30:	100005b7          	lui	a1,0x10000
    80007f34:	00005817          	auipc	a6,0x5
    80007f38:	c1c80813          	addi	a6,a6,-996 # 8000cb50 <uart_tx_buf>
    80007f3c:	01c0006f          	j	80007f58 <uartintr+0x88>
    80007f40:	0006c703          	lbu	a4,0(a3)
    80007f44:	00f63023          	sd	a5,0(a2)
    80007f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f4c:	00063783          	ld	a5,0(a2)
    80007f50:	00053703          	ld	a4,0(a0)
    80007f54:	00f70e63          	beq	a4,a5,80007f70 <uartintr+0xa0>
    80007f58:	01f7f713          	andi	a4,a5,31
    80007f5c:	00e806b3          	add	a3,a6,a4
    80007f60:	0055c703          	lbu	a4,5(a1)
    80007f64:	00178793          	addi	a5,a5,1
    80007f68:	02077713          	andi	a4,a4,32
    80007f6c:	fc071ae3          	bnez	a4,80007f40 <uartintr+0x70>
    80007f70:	01813083          	ld	ra,24(sp)
    80007f74:	01013403          	ld	s0,16(sp)
    80007f78:	00813483          	ld	s1,8(sp)
    80007f7c:	02010113          	addi	sp,sp,32
    80007f80:	00008067          	ret
    80007f84:	00004617          	auipc	a2,0x4
    80007f88:	8dc60613          	addi	a2,a2,-1828 # 8000b860 <uart_tx_r>
    80007f8c:	00004517          	auipc	a0,0x4
    80007f90:	8dc50513          	addi	a0,a0,-1828 # 8000b868 <uart_tx_w>
    80007f94:	00063783          	ld	a5,0(a2)
    80007f98:	00053703          	ld	a4,0(a0)
    80007f9c:	04f70263          	beq	a4,a5,80007fe0 <uartintr+0x110>
    80007fa0:	100005b7          	lui	a1,0x10000
    80007fa4:	00005817          	auipc	a6,0x5
    80007fa8:	bac80813          	addi	a6,a6,-1108 # 8000cb50 <uart_tx_buf>
    80007fac:	01c0006f          	j	80007fc8 <uartintr+0xf8>
    80007fb0:	0006c703          	lbu	a4,0(a3)
    80007fb4:	00f63023          	sd	a5,0(a2)
    80007fb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fbc:	00063783          	ld	a5,0(a2)
    80007fc0:	00053703          	ld	a4,0(a0)
    80007fc4:	02f70063          	beq	a4,a5,80007fe4 <uartintr+0x114>
    80007fc8:	01f7f713          	andi	a4,a5,31
    80007fcc:	00e806b3          	add	a3,a6,a4
    80007fd0:	0055c703          	lbu	a4,5(a1)
    80007fd4:	00178793          	addi	a5,a5,1
    80007fd8:	02077713          	andi	a4,a4,32
    80007fdc:	fc071ae3          	bnez	a4,80007fb0 <uartintr+0xe0>
    80007fe0:	00008067          	ret
    80007fe4:	00008067          	ret

0000000080007fe8 <kinit>:
    80007fe8:	fc010113          	addi	sp,sp,-64
    80007fec:	02913423          	sd	s1,40(sp)
    80007ff0:	fffff7b7          	lui	a5,0xfffff
    80007ff4:	00006497          	auipc	s1,0x6
    80007ff8:	b7b48493          	addi	s1,s1,-1157 # 8000db6f <end+0xfff>
    80007ffc:	02813823          	sd	s0,48(sp)
    80008000:	01313c23          	sd	s3,24(sp)
    80008004:	00f4f4b3          	and	s1,s1,a5
    80008008:	02113c23          	sd	ra,56(sp)
    8000800c:	03213023          	sd	s2,32(sp)
    80008010:	01413823          	sd	s4,16(sp)
    80008014:	01513423          	sd	s5,8(sp)
    80008018:	04010413          	addi	s0,sp,64
    8000801c:	000017b7          	lui	a5,0x1
    80008020:	01100993          	li	s3,17
    80008024:	00f487b3          	add	a5,s1,a5
    80008028:	01b99993          	slli	s3,s3,0x1b
    8000802c:	06f9e063          	bltu	s3,a5,8000808c <kinit+0xa4>
    80008030:	00005a97          	auipc	s5,0x5
    80008034:	b40a8a93          	addi	s5,s5,-1216 # 8000cb70 <end>
    80008038:	0754ec63          	bltu	s1,s5,800080b0 <kinit+0xc8>
    8000803c:	0734fa63          	bgeu	s1,s3,800080b0 <kinit+0xc8>
    80008040:	00088a37          	lui	s4,0x88
    80008044:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008048:	00004917          	auipc	s2,0x4
    8000804c:	82890913          	addi	s2,s2,-2008 # 8000b870 <kmem>
    80008050:	00ca1a13          	slli	s4,s4,0xc
    80008054:	0140006f          	j	80008068 <kinit+0x80>
    80008058:	000017b7          	lui	a5,0x1
    8000805c:	00f484b3          	add	s1,s1,a5
    80008060:	0554e863          	bltu	s1,s5,800080b0 <kinit+0xc8>
    80008064:	0534f663          	bgeu	s1,s3,800080b0 <kinit+0xc8>
    80008068:	00001637          	lui	a2,0x1
    8000806c:	00100593          	li	a1,1
    80008070:	00048513          	mv	a0,s1
    80008074:	00000097          	auipc	ra,0x0
    80008078:	5e4080e7          	jalr	1508(ra) # 80008658 <__memset>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	00f4b023          	sd	a5,0(s1)
    80008084:	00993023          	sd	s1,0(s2)
    80008088:	fd4498e3          	bne	s1,s4,80008058 <kinit+0x70>
    8000808c:	03813083          	ld	ra,56(sp)
    80008090:	03013403          	ld	s0,48(sp)
    80008094:	02813483          	ld	s1,40(sp)
    80008098:	02013903          	ld	s2,32(sp)
    8000809c:	01813983          	ld	s3,24(sp)
    800080a0:	01013a03          	ld	s4,16(sp)
    800080a4:	00813a83          	ld	s5,8(sp)
    800080a8:	04010113          	addi	sp,sp,64
    800080ac:	00008067          	ret
    800080b0:	00001517          	auipc	a0,0x1
    800080b4:	6e850513          	addi	a0,a0,1768 # 80009798 <digits+0x18>
    800080b8:	fffff097          	auipc	ra,0xfffff
    800080bc:	4b4080e7          	jalr	1204(ra) # 8000756c <panic>

00000000800080c0 <freerange>:
    800080c0:	fc010113          	addi	sp,sp,-64
    800080c4:	000017b7          	lui	a5,0x1
    800080c8:	02913423          	sd	s1,40(sp)
    800080cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800080d0:	009504b3          	add	s1,a0,s1
    800080d4:	fffff537          	lui	a0,0xfffff
    800080d8:	02813823          	sd	s0,48(sp)
    800080dc:	02113c23          	sd	ra,56(sp)
    800080e0:	03213023          	sd	s2,32(sp)
    800080e4:	01313c23          	sd	s3,24(sp)
    800080e8:	01413823          	sd	s4,16(sp)
    800080ec:	01513423          	sd	s5,8(sp)
    800080f0:	01613023          	sd	s6,0(sp)
    800080f4:	04010413          	addi	s0,sp,64
    800080f8:	00a4f4b3          	and	s1,s1,a0
    800080fc:	00f487b3          	add	a5,s1,a5
    80008100:	06f5e463          	bltu	a1,a5,80008168 <freerange+0xa8>
    80008104:	00005a97          	auipc	s5,0x5
    80008108:	a6ca8a93          	addi	s5,s5,-1428 # 8000cb70 <end>
    8000810c:	0954e263          	bltu	s1,s5,80008190 <freerange+0xd0>
    80008110:	01100993          	li	s3,17
    80008114:	01b99993          	slli	s3,s3,0x1b
    80008118:	0734fc63          	bgeu	s1,s3,80008190 <freerange+0xd0>
    8000811c:	00058a13          	mv	s4,a1
    80008120:	00003917          	auipc	s2,0x3
    80008124:	75090913          	addi	s2,s2,1872 # 8000b870 <kmem>
    80008128:	00002b37          	lui	s6,0x2
    8000812c:	0140006f          	j	80008140 <freerange+0x80>
    80008130:	000017b7          	lui	a5,0x1
    80008134:	00f484b3          	add	s1,s1,a5
    80008138:	0554ec63          	bltu	s1,s5,80008190 <freerange+0xd0>
    8000813c:	0534fa63          	bgeu	s1,s3,80008190 <freerange+0xd0>
    80008140:	00001637          	lui	a2,0x1
    80008144:	00100593          	li	a1,1
    80008148:	00048513          	mv	a0,s1
    8000814c:	00000097          	auipc	ra,0x0
    80008150:	50c080e7          	jalr	1292(ra) # 80008658 <__memset>
    80008154:	00093703          	ld	a4,0(s2)
    80008158:	016487b3          	add	a5,s1,s6
    8000815c:	00e4b023          	sd	a4,0(s1)
    80008160:	00993023          	sd	s1,0(s2)
    80008164:	fcfa76e3          	bgeu	s4,a5,80008130 <freerange+0x70>
    80008168:	03813083          	ld	ra,56(sp)
    8000816c:	03013403          	ld	s0,48(sp)
    80008170:	02813483          	ld	s1,40(sp)
    80008174:	02013903          	ld	s2,32(sp)
    80008178:	01813983          	ld	s3,24(sp)
    8000817c:	01013a03          	ld	s4,16(sp)
    80008180:	00813a83          	ld	s5,8(sp)
    80008184:	00013b03          	ld	s6,0(sp)
    80008188:	04010113          	addi	sp,sp,64
    8000818c:	00008067          	ret
    80008190:	00001517          	auipc	a0,0x1
    80008194:	60850513          	addi	a0,a0,1544 # 80009798 <digits+0x18>
    80008198:	fffff097          	auipc	ra,0xfffff
    8000819c:	3d4080e7          	jalr	980(ra) # 8000756c <panic>

00000000800081a0 <kfree>:
    800081a0:	fe010113          	addi	sp,sp,-32
    800081a4:	00813823          	sd	s0,16(sp)
    800081a8:	00113c23          	sd	ra,24(sp)
    800081ac:	00913423          	sd	s1,8(sp)
    800081b0:	02010413          	addi	s0,sp,32
    800081b4:	03451793          	slli	a5,a0,0x34
    800081b8:	04079c63          	bnez	a5,80008210 <kfree+0x70>
    800081bc:	00005797          	auipc	a5,0x5
    800081c0:	9b478793          	addi	a5,a5,-1612 # 8000cb70 <end>
    800081c4:	00050493          	mv	s1,a0
    800081c8:	04f56463          	bltu	a0,a5,80008210 <kfree+0x70>
    800081cc:	01100793          	li	a5,17
    800081d0:	01b79793          	slli	a5,a5,0x1b
    800081d4:	02f57e63          	bgeu	a0,a5,80008210 <kfree+0x70>
    800081d8:	00001637          	lui	a2,0x1
    800081dc:	00100593          	li	a1,1
    800081e0:	00000097          	auipc	ra,0x0
    800081e4:	478080e7          	jalr	1144(ra) # 80008658 <__memset>
    800081e8:	00003797          	auipc	a5,0x3
    800081ec:	68878793          	addi	a5,a5,1672 # 8000b870 <kmem>
    800081f0:	0007b703          	ld	a4,0(a5)
    800081f4:	01813083          	ld	ra,24(sp)
    800081f8:	01013403          	ld	s0,16(sp)
    800081fc:	00e4b023          	sd	a4,0(s1)
    80008200:	0097b023          	sd	s1,0(a5)
    80008204:	00813483          	ld	s1,8(sp)
    80008208:	02010113          	addi	sp,sp,32
    8000820c:	00008067          	ret
    80008210:	00001517          	auipc	a0,0x1
    80008214:	58850513          	addi	a0,a0,1416 # 80009798 <digits+0x18>
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	354080e7          	jalr	852(ra) # 8000756c <panic>

0000000080008220 <kalloc>:
    80008220:	fe010113          	addi	sp,sp,-32
    80008224:	00813823          	sd	s0,16(sp)
    80008228:	00913423          	sd	s1,8(sp)
    8000822c:	00113c23          	sd	ra,24(sp)
    80008230:	02010413          	addi	s0,sp,32
    80008234:	00003797          	auipc	a5,0x3
    80008238:	63c78793          	addi	a5,a5,1596 # 8000b870 <kmem>
    8000823c:	0007b483          	ld	s1,0(a5)
    80008240:	02048063          	beqz	s1,80008260 <kalloc+0x40>
    80008244:	0004b703          	ld	a4,0(s1)
    80008248:	00001637          	lui	a2,0x1
    8000824c:	00500593          	li	a1,5
    80008250:	00048513          	mv	a0,s1
    80008254:	00e7b023          	sd	a4,0(a5)
    80008258:	00000097          	auipc	ra,0x0
    8000825c:	400080e7          	jalr	1024(ra) # 80008658 <__memset>
    80008260:	01813083          	ld	ra,24(sp)
    80008264:	01013403          	ld	s0,16(sp)
    80008268:	00048513          	mv	a0,s1
    8000826c:	00813483          	ld	s1,8(sp)
    80008270:	02010113          	addi	sp,sp,32
    80008274:	00008067          	ret

0000000080008278 <initlock>:
    80008278:	ff010113          	addi	sp,sp,-16
    8000827c:	00813423          	sd	s0,8(sp)
    80008280:	01010413          	addi	s0,sp,16
    80008284:	00813403          	ld	s0,8(sp)
    80008288:	00b53423          	sd	a1,8(a0)
    8000828c:	00052023          	sw	zero,0(a0)
    80008290:	00053823          	sd	zero,16(a0)
    80008294:	01010113          	addi	sp,sp,16
    80008298:	00008067          	ret

000000008000829c <acquire>:
    8000829c:	fe010113          	addi	sp,sp,-32
    800082a0:	00813823          	sd	s0,16(sp)
    800082a4:	00913423          	sd	s1,8(sp)
    800082a8:	00113c23          	sd	ra,24(sp)
    800082ac:	01213023          	sd	s2,0(sp)
    800082b0:	02010413          	addi	s0,sp,32
    800082b4:	00050493          	mv	s1,a0
    800082b8:	10002973          	csrr	s2,sstatus
    800082bc:	100027f3          	csrr	a5,sstatus
    800082c0:	ffd7f793          	andi	a5,a5,-3
    800082c4:	10079073          	csrw	sstatus,a5
    800082c8:	fffff097          	auipc	ra,0xfffff
    800082cc:	8e4080e7          	jalr	-1820(ra) # 80006bac <mycpu>
    800082d0:	07852783          	lw	a5,120(a0)
    800082d4:	06078e63          	beqz	a5,80008350 <acquire+0xb4>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	8d4080e7          	jalr	-1836(ra) # 80006bac <mycpu>
    800082e0:	07852783          	lw	a5,120(a0)
    800082e4:	0004a703          	lw	a4,0(s1)
    800082e8:	0017879b          	addiw	a5,a5,1
    800082ec:	06f52c23          	sw	a5,120(a0)
    800082f0:	04071063          	bnez	a4,80008330 <acquire+0x94>
    800082f4:	00100713          	li	a4,1
    800082f8:	00070793          	mv	a5,a4
    800082fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008300:	0007879b          	sext.w	a5,a5
    80008304:	fe079ae3          	bnez	a5,800082f8 <acquire+0x5c>
    80008308:	0ff0000f          	fence
    8000830c:	fffff097          	auipc	ra,0xfffff
    80008310:	8a0080e7          	jalr	-1888(ra) # 80006bac <mycpu>
    80008314:	01813083          	ld	ra,24(sp)
    80008318:	01013403          	ld	s0,16(sp)
    8000831c:	00a4b823          	sd	a0,16(s1)
    80008320:	00013903          	ld	s2,0(sp)
    80008324:	00813483          	ld	s1,8(sp)
    80008328:	02010113          	addi	sp,sp,32
    8000832c:	00008067          	ret
    80008330:	0104b903          	ld	s2,16(s1)
    80008334:	fffff097          	auipc	ra,0xfffff
    80008338:	878080e7          	jalr	-1928(ra) # 80006bac <mycpu>
    8000833c:	faa91ce3          	bne	s2,a0,800082f4 <acquire+0x58>
    80008340:	00001517          	auipc	a0,0x1
    80008344:	46050513          	addi	a0,a0,1120 # 800097a0 <digits+0x20>
    80008348:	fffff097          	auipc	ra,0xfffff
    8000834c:	224080e7          	jalr	548(ra) # 8000756c <panic>
    80008350:	00195913          	srli	s2,s2,0x1
    80008354:	fffff097          	auipc	ra,0xfffff
    80008358:	858080e7          	jalr	-1960(ra) # 80006bac <mycpu>
    8000835c:	00197913          	andi	s2,s2,1
    80008360:	07252e23          	sw	s2,124(a0)
    80008364:	f75ff06f          	j	800082d8 <acquire+0x3c>

0000000080008368 <release>:
    80008368:	fe010113          	addi	sp,sp,-32
    8000836c:	00813823          	sd	s0,16(sp)
    80008370:	00113c23          	sd	ra,24(sp)
    80008374:	00913423          	sd	s1,8(sp)
    80008378:	01213023          	sd	s2,0(sp)
    8000837c:	02010413          	addi	s0,sp,32
    80008380:	00052783          	lw	a5,0(a0)
    80008384:	00079a63          	bnez	a5,80008398 <release+0x30>
    80008388:	00001517          	auipc	a0,0x1
    8000838c:	42050513          	addi	a0,a0,1056 # 800097a8 <digits+0x28>
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	1dc080e7          	jalr	476(ra) # 8000756c <panic>
    80008398:	01053903          	ld	s2,16(a0)
    8000839c:	00050493          	mv	s1,a0
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	80c080e7          	jalr	-2036(ra) # 80006bac <mycpu>
    800083a8:	fea910e3          	bne	s2,a0,80008388 <release+0x20>
    800083ac:	0004b823          	sd	zero,16(s1)
    800083b0:	0ff0000f          	fence
    800083b4:	0f50000f          	fence	iorw,ow
    800083b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800083bc:	ffffe097          	auipc	ra,0xffffe
    800083c0:	7f0080e7          	jalr	2032(ra) # 80006bac <mycpu>
    800083c4:	100027f3          	csrr	a5,sstatus
    800083c8:	0027f793          	andi	a5,a5,2
    800083cc:	04079a63          	bnez	a5,80008420 <release+0xb8>
    800083d0:	07852783          	lw	a5,120(a0)
    800083d4:	02f05e63          	blez	a5,80008410 <release+0xa8>
    800083d8:	fff7871b          	addiw	a4,a5,-1
    800083dc:	06e52c23          	sw	a4,120(a0)
    800083e0:	00071c63          	bnez	a4,800083f8 <release+0x90>
    800083e4:	07c52783          	lw	a5,124(a0)
    800083e8:	00078863          	beqz	a5,800083f8 <release+0x90>
    800083ec:	100027f3          	csrr	a5,sstatus
    800083f0:	0027e793          	ori	a5,a5,2
    800083f4:	10079073          	csrw	sstatus,a5
    800083f8:	01813083          	ld	ra,24(sp)
    800083fc:	01013403          	ld	s0,16(sp)
    80008400:	00813483          	ld	s1,8(sp)
    80008404:	00013903          	ld	s2,0(sp)
    80008408:	02010113          	addi	sp,sp,32
    8000840c:	00008067          	ret
    80008410:	00001517          	auipc	a0,0x1
    80008414:	3b850513          	addi	a0,a0,952 # 800097c8 <digits+0x48>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	154080e7          	jalr	340(ra) # 8000756c <panic>
    80008420:	00001517          	auipc	a0,0x1
    80008424:	39050513          	addi	a0,a0,912 # 800097b0 <digits+0x30>
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	144080e7          	jalr	324(ra) # 8000756c <panic>

0000000080008430 <holding>:
    80008430:	00052783          	lw	a5,0(a0)
    80008434:	00079663          	bnez	a5,80008440 <holding+0x10>
    80008438:	00000513          	li	a0,0
    8000843c:	00008067          	ret
    80008440:	fe010113          	addi	sp,sp,-32
    80008444:	00813823          	sd	s0,16(sp)
    80008448:	00913423          	sd	s1,8(sp)
    8000844c:	00113c23          	sd	ra,24(sp)
    80008450:	02010413          	addi	s0,sp,32
    80008454:	01053483          	ld	s1,16(a0)
    80008458:	ffffe097          	auipc	ra,0xffffe
    8000845c:	754080e7          	jalr	1876(ra) # 80006bac <mycpu>
    80008460:	01813083          	ld	ra,24(sp)
    80008464:	01013403          	ld	s0,16(sp)
    80008468:	40a48533          	sub	a0,s1,a0
    8000846c:	00153513          	seqz	a0,a0
    80008470:	00813483          	ld	s1,8(sp)
    80008474:	02010113          	addi	sp,sp,32
    80008478:	00008067          	ret

000000008000847c <push_off>:
    8000847c:	fe010113          	addi	sp,sp,-32
    80008480:	00813823          	sd	s0,16(sp)
    80008484:	00113c23          	sd	ra,24(sp)
    80008488:	00913423          	sd	s1,8(sp)
    8000848c:	02010413          	addi	s0,sp,32
    80008490:	100024f3          	csrr	s1,sstatus
    80008494:	100027f3          	csrr	a5,sstatus
    80008498:	ffd7f793          	andi	a5,a5,-3
    8000849c:	10079073          	csrw	sstatus,a5
    800084a0:	ffffe097          	auipc	ra,0xffffe
    800084a4:	70c080e7          	jalr	1804(ra) # 80006bac <mycpu>
    800084a8:	07852783          	lw	a5,120(a0)
    800084ac:	02078663          	beqz	a5,800084d8 <push_off+0x5c>
    800084b0:	ffffe097          	auipc	ra,0xffffe
    800084b4:	6fc080e7          	jalr	1788(ra) # 80006bac <mycpu>
    800084b8:	07852783          	lw	a5,120(a0)
    800084bc:	01813083          	ld	ra,24(sp)
    800084c0:	01013403          	ld	s0,16(sp)
    800084c4:	0017879b          	addiw	a5,a5,1
    800084c8:	06f52c23          	sw	a5,120(a0)
    800084cc:	00813483          	ld	s1,8(sp)
    800084d0:	02010113          	addi	sp,sp,32
    800084d4:	00008067          	ret
    800084d8:	0014d493          	srli	s1,s1,0x1
    800084dc:	ffffe097          	auipc	ra,0xffffe
    800084e0:	6d0080e7          	jalr	1744(ra) # 80006bac <mycpu>
    800084e4:	0014f493          	andi	s1,s1,1
    800084e8:	06952e23          	sw	s1,124(a0)
    800084ec:	fc5ff06f          	j	800084b0 <push_off+0x34>

00000000800084f0 <pop_off>:
    800084f0:	ff010113          	addi	sp,sp,-16
    800084f4:	00813023          	sd	s0,0(sp)
    800084f8:	00113423          	sd	ra,8(sp)
    800084fc:	01010413          	addi	s0,sp,16
    80008500:	ffffe097          	auipc	ra,0xffffe
    80008504:	6ac080e7          	jalr	1708(ra) # 80006bac <mycpu>
    80008508:	100027f3          	csrr	a5,sstatus
    8000850c:	0027f793          	andi	a5,a5,2
    80008510:	04079663          	bnez	a5,8000855c <pop_off+0x6c>
    80008514:	07852783          	lw	a5,120(a0)
    80008518:	02f05a63          	blez	a5,8000854c <pop_off+0x5c>
    8000851c:	fff7871b          	addiw	a4,a5,-1
    80008520:	06e52c23          	sw	a4,120(a0)
    80008524:	00071c63          	bnez	a4,8000853c <pop_off+0x4c>
    80008528:	07c52783          	lw	a5,124(a0)
    8000852c:	00078863          	beqz	a5,8000853c <pop_off+0x4c>
    80008530:	100027f3          	csrr	a5,sstatus
    80008534:	0027e793          	ori	a5,a5,2
    80008538:	10079073          	csrw	sstatus,a5
    8000853c:	00813083          	ld	ra,8(sp)
    80008540:	00013403          	ld	s0,0(sp)
    80008544:	01010113          	addi	sp,sp,16
    80008548:	00008067          	ret
    8000854c:	00001517          	auipc	a0,0x1
    80008550:	27c50513          	addi	a0,a0,636 # 800097c8 <digits+0x48>
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	018080e7          	jalr	24(ra) # 8000756c <panic>
    8000855c:	00001517          	auipc	a0,0x1
    80008560:	25450513          	addi	a0,a0,596 # 800097b0 <digits+0x30>
    80008564:	fffff097          	auipc	ra,0xfffff
    80008568:	008080e7          	jalr	8(ra) # 8000756c <panic>

000000008000856c <push_on>:
    8000856c:	fe010113          	addi	sp,sp,-32
    80008570:	00813823          	sd	s0,16(sp)
    80008574:	00113c23          	sd	ra,24(sp)
    80008578:	00913423          	sd	s1,8(sp)
    8000857c:	02010413          	addi	s0,sp,32
    80008580:	100024f3          	csrr	s1,sstatus
    80008584:	100027f3          	csrr	a5,sstatus
    80008588:	0027e793          	ori	a5,a5,2
    8000858c:	10079073          	csrw	sstatus,a5
    80008590:	ffffe097          	auipc	ra,0xffffe
    80008594:	61c080e7          	jalr	1564(ra) # 80006bac <mycpu>
    80008598:	07852783          	lw	a5,120(a0)
    8000859c:	02078663          	beqz	a5,800085c8 <push_on+0x5c>
    800085a0:	ffffe097          	auipc	ra,0xffffe
    800085a4:	60c080e7          	jalr	1548(ra) # 80006bac <mycpu>
    800085a8:	07852783          	lw	a5,120(a0)
    800085ac:	01813083          	ld	ra,24(sp)
    800085b0:	01013403          	ld	s0,16(sp)
    800085b4:	0017879b          	addiw	a5,a5,1
    800085b8:	06f52c23          	sw	a5,120(a0)
    800085bc:	00813483          	ld	s1,8(sp)
    800085c0:	02010113          	addi	sp,sp,32
    800085c4:	00008067          	ret
    800085c8:	0014d493          	srli	s1,s1,0x1
    800085cc:	ffffe097          	auipc	ra,0xffffe
    800085d0:	5e0080e7          	jalr	1504(ra) # 80006bac <mycpu>
    800085d4:	0014f493          	andi	s1,s1,1
    800085d8:	06952e23          	sw	s1,124(a0)
    800085dc:	fc5ff06f          	j	800085a0 <push_on+0x34>

00000000800085e0 <pop_on>:
    800085e0:	ff010113          	addi	sp,sp,-16
    800085e4:	00813023          	sd	s0,0(sp)
    800085e8:	00113423          	sd	ra,8(sp)
    800085ec:	01010413          	addi	s0,sp,16
    800085f0:	ffffe097          	auipc	ra,0xffffe
    800085f4:	5bc080e7          	jalr	1468(ra) # 80006bac <mycpu>
    800085f8:	100027f3          	csrr	a5,sstatus
    800085fc:	0027f793          	andi	a5,a5,2
    80008600:	04078463          	beqz	a5,80008648 <pop_on+0x68>
    80008604:	07852783          	lw	a5,120(a0)
    80008608:	02f05863          	blez	a5,80008638 <pop_on+0x58>
    8000860c:	fff7879b          	addiw	a5,a5,-1
    80008610:	06f52c23          	sw	a5,120(a0)
    80008614:	07853783          	ld	a5,120(a0)
    80008618:	00079863          	bnez	a5,80008628 <pop_on+0x48>
    8000861c:	100027f3          	csrr	a5,sstatus
    80008620:	ffd7f793          	andi	a5,a5,-3
    80008624:	10079073          	csrw	sstatus,a5
    80008628:	00813083          	ld	ra,8(sp)
    8000862c:	00013403          	ld	s0,0(sp)
    80008630:	01010113          	addi	sp,sp,16
    80008634:	00008067          	ret
    80008638:	00001517          	auipc	a0,0x1
    8000863c:	1b850513          	addi	a0,a0,440 # 800097f0 <digits+0x70>
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	f2c080e7          	jalr	-212(ra) # 8000756c <panic>
    80008648:	00001517          	auipc	a0,0x1
    8000864c:	18850513          	addi	a0,a0,392 # 800097d0 <digits+0x50>
    80008650:	fffff097          	auipc	ra,0xfffff
    80008654:	f1c080e7          	jalr	-228(ra) # 8000756c <panic>

0000000080008658 <__memset>:
    80008658:	ff010113          	addi	sp,sp,-16
    8000865c:	00813423          	sd	s0,8(sp)
    80008660:	01010413          	addi	s0,sp,16
    80008664:	1a060e63          	beqz	a2,80008820 <__memset+0x1c8>
    80008668:	40a007b3          	neg	a5,a0
    8000866c:	0077f793          	andi	a5,a5,7
    80008670:	00778693          	addi	a3,a5,7
    80008674:	00b00813          	li	a6,11
    80008678:	0ff5f593          	andi	a1,a1,255
    8000867c:	fff6071b          	addiw	a4,a2,-1
    80008680:	1b06e663          	bltu	a3,a6,8000882c <__memset+0x1d4>
    80008684:	1cd76463          	bltu	a4,a3,8000884c <__memset+0x1f4>
    80008688:	1a078e63          	beqz	a5,80008844 <__memset+0x1ec>
    8000868c:	00b50023          	sb	a1,0(a0)
    80008690:	00100713          	li	a4,1
    80008694:	1ae78463          	beq	a5,a4,8000883c <__memset+0x1e4>
    80008698:	00b500a3          	sb	a1,1(a0)
    8000869c:	00200713          	li	a4,2
    800086a0:	1ae78a63          	beq	a5,a4,80008854 <__memset+0x1fc>
    800086a4:	00b50123          	sb	a1,2(a0)
    800086a8:	00300713          	li	a4,3
    800086ac:	18e78463          	beq	a5,a4,80008834 <__memset+0x1dc>
    800086b0:	00b501a3          	sb	a1,3(a0)
    800086b4:	00400713          	li	a4,4
    800086b8:	1ae78263          	beq	a5,a4,8000885c <__memset+0x204>
    800086bc:	00b50223          	sb	a1,4(a0)
    800086c0:	00500713          	li	a4,5
    800086c4:	1ae78063          	beq	a5,a4,80008864 <__memset+0x20c>
    800086c8:	00b502a3          	sb	a1,5(a0)
    800086cc:	00700713          	li	a4,7
    800086d0:	18e79e63          	bne	a5,a4,8000886c <__memset+0x214>
    800086d4:	00b50323          	sb	a1,6(a0)
    800086d8:	00700e93          	li	t4,7
    800086dc:	00859713          	slli	a4,a1,0x8
    800086e0:	00e5e733          	or	a4,a1,a4
    800086e4:	01059e13          	slli	t3,a1,0x10
    800086e8:	01c76e33          	or	t3,a4,t3
    800086ec:	01859313          	slli	t1,a1,0x18
    800086f0:	006e6333          	or	t1,t3,t1
    800086f4:	02059893          	slli	a7,a1,0x20
    800086f8:	40f60e3b          	subw	t3,a2,a5
    800086fc:	011368b3          	or	a7,t1,a7
    80008700:	02859813          	slli	a6,a1,0x28
    80008704:	0108e833          	or	a6,a7,a6
    80008708:	03059693          	slli	a3,a1,0x30
    8000870c:	003e589b          	srliw	a7,t3,0x3
    80008710:	00d866b3          	or	a3,a6,a3
    80008714:	03859713          	slli	a4,a1,0x38
    80008718:	00389813          	slli	a6,a7,0x3
    8000871c:	00f507b3          	add	a5,a0,a5
    80008720:	00e6e733          	or	a4,a3,a4
    80008724:	000e089b          	sext.w	a7,t3
    80008728:	00f806b3          	add	a3,a6,a5
    8000872c:	00e7b023          	sd	a4,0(a5)
    80008730:	00878793          	addi	a5,a5,8
    80008734:	fed79ce3          	bne	a5,a3,8000872c <__memset+0xd4>
    80008738:	ff8e7793          	andi	a5,t3,-8
    8000873c:	0007871b          	sext.w	a4,a5
    80008740:	01d787bb          	addw	a5,a5,t4
    80008744:	0ce88e63          	beq	a7,a4,80008820 <__memset+0x1c8>
    80008748:	00f50733          	add	a4,a0,a5
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	0017871b          	addiw	a4,a5,1
    80008754:	0cc77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	0027871b          	addiw	a4,a5,2
    80008764:	0ac77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008768:	00e50733          	add	a4,a0,a4
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	0037871b          	addiw	a4,a5,3
    80008774:	0ac77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	0047871b          	addiw	a4,a5,4
    80008784:	08c77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	0057871b          	addiw	a4,a5,5
    80008794:	08c77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	0067871b          	addiw	a4,a5,6
    800087a4:	06c77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	0077871b          	addiw	a4,a5,7
    800087b4:	06c77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	0087871b          	addiw	a4,a5,8
    800087c4:	04c77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	0097871b          	addiw	a4,a5,9
    800087d4:	04c77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	00a7871b          	addiw	a4,a5,10
    800087e4:	02c77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	00b7871b          	addiw	a4,a5,11
    800087f4:	02c77663          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	00c7871b          	addiw	a4,a5,12
    80008804:	00c77e63          	bgeu	a4,a2,80008820 <__memset+0x1c8>
    80008808:	00e50733          	add	a4,a0,a4
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	00d7879b          	addiw	a5,a5,13
    80008814:	00c7f663          	bgeu	a5,a2,80008820 <__memset+0x1c8>
    80008818:	00f507b3          	add	a5,a0,a5
    8000881c:	00b78023          	sb	a1,0(a5)
    80008820:	00813403          	ld	s0,8(sp)
    80008824:	01010113          	addi	sp,sp,16
    80008828:	00008067          	ret
    8000882c:	00b00693          	li	a3,11
    80008830:	e55ff06f          	j	80008684 <__memset+0x2c>
    80008834:	00300e93          	li	t4,3
    80008838:	ea5ff06f          	j	800086dc <__memset+0x84>
    8000883c:	00100e93          	li	t4,1
    80008840:	e9dff06f          	j	800086dc <__memset+0x84>
    80008844:	00000e93          	li	t4,0
    80008848:	e95ff06f          	j	800086dc <__memset+0x84>
    8000884c:	00000793          	li	a5,0
    80008850:	ef9ff06f          	j	80008748 <__memset+0xf0>
    80008854:	00200e93          	li	t4,2
    80008858:	e85ff06f          	j	800086dc <__memset+0x84>
    8000885c:	00400e93          	li	t4,4
    80008860:	e7dff06f          	j	800086dc <__memset+0x84>
    80008864:	00500e93          	li	t4,5
    80008868:	e75ff06f          	j	800086dc <__memset+0x84>
    8000886c:	00600e93          	li	t4,6
    80008870:	e6dff06f          	j	800086dc <__memset+0x84>

0000000080008874 <__memmove>:
    80008874:	ff010113          	addi	sp,sp,-16
    80008878:	00813423          	sd	s0,8(sp)
    8000887c:	01010413          	addi	s0,sp,16
    80008880:	0e060863          	beqz	a2,80008970 <__memmove+0xfc>
    80008884:	fff6069b          	addiw	a3,a2,-1
    80008888:	0006881b          	sext.w	a6,a3
    8000888c:	0ea5e863          	bltu	a1,a0,8000897c <__memmove+0x108>
    80008890:	00758713          	addi	a4,a1,7
    80008894:	00a5e7b3          	or	a5,a1,a0
    80008898:	40a70733          	sub	a4,a4,a0
    8000889c:	0077f793          	andi	a5,a5,7
    800088a0:	00f73713          	sltiu	a4,a4,15
    800088a4:	00174713          	xori	a4,a4,1
    800088a8:	0017b793          	seqz	a5,a5
    800088ac:	00e7f7b3          	and	a5,a5,a4
    800088b0:	10078863          	beqz	a5,800089c0 <__memmove+0x14c>
    800088b4:	00900793          	li	a5,9
    800088b8:	1107f463          	bgeu	a5,a6,800089c0 <__memmove+0x14c>
    800088bc:	0036581b          	srliw	a6,a2,0x3
    800088c0:	fff8081b          	addiw	a6,a6,-1
    800088c4:	02081813          	slli	a6,a6,0x20
    800088c8:	01d85893          	srli	a7,a6,0x1d
    800088cc:	00858813          	addi	a6,a1,8
    800088d0:	00058793          	mv	a5,a1
    800088d4:	00050713          	mv	a4,a0
    800088d8:	01088833          	add	a6,a7,a6
    800088dc:	0007b883          	ld	a7,0(a5)
    800088e0:	00878793          	addi	a5,a5,8
    800088e4:	00870713          	addi	a4,a4,8
    800088e8:	ff173c23          	sd	a7,-8(a4)
    800088ec:	ff0798e3          	bne	a5,a6,800088dc <__memmove+0x68>
    800088f0:	ff867713          	andi	a4,a2,-8
    800088f4:	02071793          	slli	a5,a4,0x20
    800088f8:	0207d793          	srli	a5,a5,0x20
    800088fc:	00f585b3          	add	a1,a1,a5
    80008900:	40e686bb          	subw	a3,a3,a4
    80008904:	00f507b3          	add	a5,a0,a5
    80008908:	06e60463          	beq	a2,a4,80008970 <__memmove+0xfc>
    8000890c:	0005c703          	lbu	a4,0(a1)
    80008910:	00e78023          	sb	a4,0(a5)
    80008914:	04068e63          	beqz	a3,80008970 <__memmove+0xfc>
    80008918:	0015c603          	lbu	a2,1(a1)
    8000891c:	00100713          	li	a4,1
    80008920:	00c780a3          	sb	a2,1(a5)
    80008924:	04e68663          	beq	a3,a4,80008970 <__memmove+0xfc>
    80008928:	0025c603          	lbu	a2,2(a1)
    8000892c:	00200713          	li	a4,2
    80008930:	00c78123          	sb	a2,2(a5)
    80008934:	02e68e63          	beq	a3,a4,80008970 <__memmove+0xfc>
    80008938:	0035c603          	lbu	a2,3(a1)
    8000893c:	00300713          	li	a4,3
    80008940:	00c781a3          	sb	a2,3(a5)
    80008944:	02e68663          	beq	a3,a4,80008970 <__memmove+0xfc>
    80008948:	0045c603          	lbu	a2,4(a1)
    8000894c:	00400713          	li	a4,4
    80008950:	00c78223          	sb	a2,4(a5)
    80008954:	00e68e63          	beq	a3,a4,80008970 <__memmove+0xfc>
    80008958:	0055c603          	lbu	a2,5(a1)
    8000895c:	00500713          	li	a4,5
    80008960:	00c782a3          	sb	a2,5(a5)
    80008964:	00e68663          	beq	a3,a4,80008970 <__memmove+0xfc>
    80008968:	0065c703          	lbu	a4,6(a1)
    8000896c:	00e78323          	sb	a4,6(a5)
    80008970:	00813403          	ld	s0,8(sp)
    80008974:	01010113          	addi	sp,sp,16
    80008978:	00008067          	ret
    8000897c:	02061713          	slli	a4,a2,0x20
    80008980:	02075713          	srli	a4,a4,0x20
    80008984:	00e587b3          	add	a5,a1,a4
    80008988:	f0f574e3          	bgeu	a0,a5,80008890 <__memmove+0x1c>
    8000898c:	02069613          	slli	a2,a3,0x20
    80008990:	02065613          	srli	a2,a2,0x20
    80008994:	fff64613          	not	a2,a2
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00c78633          	add	a2,a5,a2
    800089a0:	fff7c683          	lbu	a3,-1(a5)
    800089a4:	fff78793          	addi	a5,a5,-1
    800089a8:	fff70713          	addi	a4,a4,-1
    800089ac:	00d70023          	sb	a3,0(a4)
    800089b0:	fec798e3          	bne	a5,a2,800089a0 <__memmove+0x12c>
    800089b4:	00813403          	ld	s0,8(sp)
    800089b8:	01010113          	addi	sp,sp,16
    800089bc:	00008067          	ret
    800089c0:	02069713          	slli	a4,a3,0x20
    800089c4:	02075713          	srli	a4,a4,0x20
    800089c8:	00170713          	addi	a4,a4,1
    800089cc:	00e50733          	add	a4,a0,a4
    800089d0:	00050793          	mv	a5,a0
    800089d4:	0005c683          	lbu	a3,0(a1)
    800089d8:	00178793          	addi	a5,a5,1
    800089dc:	00158593          	addi	a1,a1,1
    800089e0:	fed78fa3          	sb	a3,-1(a5)
    800089e4:	fee798e3          	bne	a5,a4,800089d4 <__memmove+0x160>
    800089e8:	f89ff06f          	j	80008970 <__memmove+0xfc>

00000000800089ec <__putc>:
    800089ec:	fe010113          	addi	sp,sp,-32
    800089f0:	00813823          	sd	s0,16(sp)
    800089f4:	00113c23          	sd	ra,24(sp)
    800089f8:	02010413          	addi	s0,sp,32
    800089fc:	00050793          	mv	a5,a0
    80008a00:	fef40593          	addi	a1,s0,-17
    80008a04:	00100613          	li	a2,1
    80008a08:	00000513          	li	a0,0
    80008a0c:	fef407a3          	sb	a5,-17(s0)
    80008a10:	fffff097          	auipc	ra,0xfffff
    80008a14:	b3c080e7          	jalr	-1220(ra) # 8000754c <console_write>
    80008a18:	01813083          	ld	ra,24(sp)
    80008a1c:	01013403          	ld	s0,16(sp)
    80008a20:	02010113          	addi	sp,sp,32
    80008a24:	00008067          	ret

0000000080008a28 <__getc>:
    80008a28:	fe010113          	addi	sp,sp,-32
    80008a2c:	00813823          	sd	s0,16(sp)
    80008a30:	00113c23          	sd	ra,24(sp)
    80008a34:	02010413          	addi	s0,sp,32
    80008a38:	fe840593          	addi	a1,s0,-24
    80008a3c:	00100613          	li	a2,1
    80008a40:	00000513          	li	a0,0
    80008a44:	fffff097          	auipc	ra,0xfffff
    80008a48:	ae8080e7          	jalr	-1304(ra) # 8000752c <console_read>
    80008a4c:	fe844503          	lbu	a0,-24(s0)
    80008a50:	01813083          	ld	ra,24(sp)
    80008a54:	01013403          	ld	s0,16(sp)
    80008a58:	02010113          	addi	sp,sp,32
    80008a5c:	00008067          	ret

0000000080008a60 <console_handler>:
    80008a60:	fe010113          	addi	sp,sp,-32
    80008a64:	00813823          	sd	s0,16(sp)
    80008a68:	00113c23          	sd	ra,24(sp)
    80008a6c:	00913423          	sd	s1,8(sp)
    80008a70:	02010413          	addi	s0,sp,32
    80008a74:	14202773          	csrr	a4,scause
    80008a78:	100027f3          	csrr	a5,sstatus
    80008a7c:	0027f793          	andi	a5,a5,2
    80008a80:	06079e63          	bnez	a5,80008afc <console_handler+0x9c>
    80008a84:	00074c63          	bltz	a4,80008a9c <console_handler+0x3c>
    80008a88:	01813083          	ld	ra,24(sp)
    80008a8c:	01013403          	ld	s0,16(sp)
    80008a90:	00813483          	ld	s1,8(sp)
    80008a94:	02010113          	addi	sp,sp,32
    80008a98:	00008067          	ret
    80008a9c:	0ff77713          	andi	a4,a4,255
    80008aa0:	00900793          	li	a5,9
    80008aa4:	fef712e3          	bne	a4,a5,80008a88 <console_handler+0x28>
    80008aa8:	ffffe097          	auipc	ra,0xffffe
    80008aac:	6dc080e7          	jalr	1756(ra) # 80007184 <plic_claim>
    80008ab0:	00a00793          	li	a5,10
    80008ab4:	00050493          	mv	s1,a0
    80008ab8:	02f50c63          	beq	a0,a5,80008af0 <console_handler+0x90>
    80008abc:	fc0506e3          	beqz	a0,80008a88 <console_handler+0x28>
    80008ac0:	00050593          	mv	a1,a0
    80008ac4:	00001517          	auipc	a0,0x1
    80008ac8:	c3450513          	addi	a0,a0,-972 # 800096f8 <_ZZ12printIntegermE6digits+0x4a8>
    80008acc:	fffff097          	auipc	ra,0xfffff
    80008ad0:	afc080e7          	jalr	-1284(ra) # 800075c8 <__printf>
    80008ad4:	01013403          	ld	s0,16(sp)
    80008ad8:	01813083          	ld	ra,24(sp)
    80008adc:	00048513          	mv	a0,s1
    80008ae0:	00813483          	ld	s1,8(sp)
    80008ae4:	02010113          	addi	sp,sp,32
    80008ae8:	ffffe317          	auipc	t1,0xffffe
    80008aec:	6d430067          	jr	1748(t1) # 800071bc <plic_complete>
    80008af0:	fffff097          	auipc	ra,0xfffff
    80008af4:	3e0080e7          	jalr	992(ra) # 80007ed0 <uartintr>
    80008af8:	fddff06f          	j	80008ad4 <console_handler+0x74>
    80008afc:	00001517          	auipc	a0,0x1
    80008b00:	cfc50513          	addi	a0,a0,-772 # 800097f8 <digits+0x78>
    80008b04:	fffff097          	auipc	ra,0xfffff
    80008b08:	a68080e7          	jalr	-1432(ra) # 8000756c <panic>
	...
