#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x82578153, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x502582a8, __VMLINUX_SYMBOL_STR(platform_driver_unregister) },
	{ 0xf0384159, __VMLINUX_SYMBOL_STR(__platform_driver_register) },
	{ 0x96e7296f, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x47cf88ed, __VMLINUX_SYMBOL_STR(debug_dma_alloc_coherent) },
	{ 0xd6b8e852, __VMLINUX_SYMBOL_STR(request_threaded_irq) },
	{ 0xfb961d14, __VMLINUX_SYMBOL_STR(__arm_ioremap) },
	{ 0xadf42bd5, __VMLINUX_SYMBOL_STR(__request_region) },
	{ 0x225ba199, __VMLINUX_SYMBOL_STR(kmem_cache_alloc) },
	{ 0x3d308968, __VMLINUX_SYMBOL_STR(platform_get_resource) },
	{ 0x9b16cdf7, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0xb9a234e1, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x5b1be16e, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0x1962f35b, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x16f013aa, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x29537c9e, __VMLINUX_SYMBOL_STR(alloc_chrdev_region) },
	{ 0x2c5a8fdb, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0x2beb418e, __VMLINUX_SYMBOL_STR(might_fault) },
	{ 0xadcb92c, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0x1000e51, __VMLINUX_SYMBOL_STR(schedule) },
	{ 0xefe1a13f, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0xac8f37b2, __VMLINUX_SYMBOL_STR(outer_cache) },
	{ 0x21659a1a, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x2f2d3cf, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_irqrestore) },
	{ 0x80883441, __VMLINUX_SYMBOL_STR(_raw_spin_lock_irqsave) },
	{ 0x788fe103, __VMLINUX_SYMBOL_STR(iomem_resource) },
	{ 0xdbb28fe1, __VMLINUX_SYMBOL_STR(arm_dma_ops) },
	{ 0x223d8f1c, __VMLINUX_SYMBOL_STR(dev_set_drvdata) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x9bce482f, __VMLINUX_SYMBOL_STR(__release_region) },
	{ 0xf20dabd8, __VMLINUX_SYMBOL_STR(free_irq) },
	{ 0xc7e59ce7, __VMLINUX_SYMBOL_STR(debug_dma_free_coherent) },
	{ 0xe6643d5, __VMLINUX_SYMBOL_STR(dev_get_drvdata) },
	{ 0xfacd2e14, __VMLINUX_SYMBOL_STR(pgprot_user) },
	{ 0x59be4159, __VMLINUX_SYMBOL_STR(remap_pfn_range) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

MODULE_ALIAS("of:N*T*Cxlnx,face-ip-top-1.0*");
