################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../startup/startup_mcxc444.c 

C_DEPS += \
./startup/startup_mcxc444.d 

OBJS += \
./startup/startup_mcxc444.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXC444VLH -DCPU_MCXC444VLH_cm0plus -DMCUXPRESSO_SDK -DFRDM_MCXC444 -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\source" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\drivers" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\CMSIS" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\CMSIS\m-profile" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\device" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\device\periph2" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities\str" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\utilities\debug_console_lite" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\component\uart" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\board" -O0 -fno-common -g3 -gdwarf-4 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_TEST_MEM_ALIGN_STRUCT\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-startup

clean-startup:
	-$(RM) ./startup/startup_mcxc444.d ./startup/startup_mcxc444.o

.PHONY: clean-startup

