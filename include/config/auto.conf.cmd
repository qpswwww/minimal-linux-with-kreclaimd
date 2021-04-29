deps_config := \
	lib/Kconfig \
	security/Kconfig \
	lib/Kconfig.ubsan \
	lib/Kconfig.kgdb \
	kernel/rcu/Kconfig.debug \
	lib/Kconfig.kasan \
	mm/Kconfig.debug \
	lib/Kconfig.debug \
	arch/x86/Kconfig.debug \
	fs/configfs/Kconfig \
	fs/sysfs/Kconfig \
	fs/kernfs/Kconfig \
	fs/proc/Kconfig \
	fs/Kconfig \
	drivers/clocksource/Kconfig \
	drivers/rtc/Kconfig \
	drivers/video/console/Kconfig \
	drivers/video/Kconfig \
	drivers/tty/serial/8250/Kconfig \
	drivers/tty/serial/Kconfig \
	drivers/tty/Kconfig \
	drivers/char/Kconfig \
	drivers/input/serio/Kconfig \
	drivers/input/Kconfig \
	drivers/base/Kconfig \
	drivers/Kconfig \
	fs/Kconfig.binfmt \
	kernel/power/Kconfig \
	kernel/Kconfig.hz \
	mm/Kconfig \
	arch/x86/events/Kconfig \
	kernel/Kconfig.preempt \
	arch/x86/Kconfig.cpu \
	kernel/Kconfig.freezer \
	kernel/Kconfig.locks \
	arch/Kconfig \
	usr/Kconfig \
	kernel/rcu/Kconfig \
	kernel/time/Kconfig \
	kernel/irq/Kconfig \
	init/Kconfig \
	arch/x86/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(KERNELVERSION)" "4.15.0"
include/config/auto.conf: FORCE
endif
ifneq "$(ARCH)" "x86"
include/config/auto.conf: FORCE
endif
ifneq "$(SRCARCH)" "x86"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
