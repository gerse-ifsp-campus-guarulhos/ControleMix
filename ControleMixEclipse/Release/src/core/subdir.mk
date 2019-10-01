################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/core/chMix.cpp \
../src/core/core.cpp \
../src/core/dbg.cpp \
../src/core/gpioino.cpp \
../src/core/main.cpp \
../src/core/protocol.cpp 

OBJS += \
./src/core/chMix.o \
./src/core/core.o \
./src/core/dbg.o \
./src/core/gpioino.o \
./src/core/main.o \
./src/core/protocol.o 

CPP_DEPS += \
./src/core/chMix.d \
./src/core/core.d \
./src/core/dbg.d \
./src/core/gpioino.d \
./src/core/main.d \
./src/core/protocol.d 


# Each subdirectory must supply rules for building sources it contributes
src/core/%.o: ../src/core/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -DNDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -I"../inc" -I"../system/inc" -I"../system/inc/cmsis" -I"../system/inc/stm32f1-stdperiph" -std=gnu++11 -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


