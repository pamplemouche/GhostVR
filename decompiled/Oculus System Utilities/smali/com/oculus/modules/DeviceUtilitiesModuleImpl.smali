.class public Lcom/oculus/modules/DeviceUtilitiesModuleImpl;
.super Lcom/oculus/modules/codegen/DeviceUtilitiesModule;
.source "DeviceUtilitiesModuleImpl.java"


# static fields
.field private static final OTA_CHECK_FOR_UPDATE_ACTION:Ljava/lang/String; = "ext_check_updates"

.field private static final OTA_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.updater.core.os.OSUpdateService"

.field private static final OTA_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.updater"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/modules/codegen/DeviceUtilitiesModule;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected checkForOTAImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v3, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Checking for OTA update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.updater"

    const-string v4, "com.oculus.updater.core.os.OSUpdateService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v2, "osUpdaterService":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "ext_check_updates"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getMacAddressImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 50
    sget-object v6, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->TAG:Ljava/lang/String;

    const-string v8, "Getting MAC address"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    .local v3, "networkInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 56
    .local v4, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "wlan0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 61
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 62
    new-instance v6, Ljava/lang/Exception;

    const-string v9, "Failed to get MAC address. No hardware address"

    invoke-direct {v6, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 66
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v5, "result":Ljava/lang/StringBuilder;
    array-length v9, v2

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_2

    aget-byte v0, v2, v6

    .line 68
    .local v0, "b":B
    const-string v10, "%02X:"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2    # "macBytes":[B
    .end local v3    # "networkInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method protected restartHeadsetImpl()V
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Restarting headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/oculus/modules/DeviceUtilitiesModuleImpl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 85
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 86
    return-void
.end method
