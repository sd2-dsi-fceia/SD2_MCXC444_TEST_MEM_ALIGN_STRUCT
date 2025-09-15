################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/SD2_board.c \
../source/key.c \
../source/mem_align_struct.c \
../source/mtb.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/SD2_board.d \
./source/key.d \
./source/mem_align_struct.d \
./source/mtb.d \
./source/semihost_hardfault.d 

OBJS += \
./source/SD2_board.o \
./source/key.o \
./source/mem_align_struct.o \
./source/mtb.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXC444VLH -DCPU_MCXC444VLH_cm0plus -DMCUXPRESSO_SDK -DFRDM_MCXC444 -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\source" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\drivers" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\CMSIS" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\CMSIS\m-profile" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\device" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\device\periph2" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities\str" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities\debug_console_lite" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\component\uart" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\board" -O0 -fno-common -g3 -gdwarf-4 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/SD2_board.d ./source/SD2_board.o ./source/key.d ./source/key.o ./source/mem_align_struct.d ./source/mem_align_struct.o ./source/mtb.d ./source/mtb.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

