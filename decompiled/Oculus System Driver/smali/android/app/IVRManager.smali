.class public interface abstract Landroid/app/IVRManager;
.super Ljava/lang/Object;
.source "IVRManager.java"


# static fields
.field public static final VR_BRIGHTNESS:Ljava/lang/String; = "bright"

.field public static final VR_DEVICE_CHIPSET:Ljava/lang/String; = "device_chipset"

.field public static final VR_DEVICE_GPU:Ljava/lang/String; = "device_gpu"

.field public static final VR_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field public static final VR_DEVICE_SUPPORT_SDCARD:Ljava/lang/String; = "device_support_sdcard"

.field public static final VR_DEVICE_SUPPORT_SDCARD_PATH:Ljava/lang/String; = "device_support_sdcard_path"

.field public static final VR_DO_NOT_DISTURB:Ljava/lang/String; = "do_not_disturb_mode"

.field public static final VR_MANAGER:Ljava/lang/String; = "vr"


# virtual methods
.method public abstract GetPowerLevelState()I
.end method

.method public abstract SetVrClocks(Ljava/lang/String;II)[I
.end method

.method public abstract getOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSystemOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract relFreq(Ljava/lang/String;)Z
.end method

.method public abstract return2EnableFreqLev()[I
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThreadSchedFifo(Ljava/lang/String;III)Z
.end method
