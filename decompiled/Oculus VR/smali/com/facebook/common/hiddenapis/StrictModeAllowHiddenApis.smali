.class public final Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;
.super Ljava/lang/Object;
.source "StrictModeAllowHiddenApis.java"


# static fields
.field private static final INITED:Z

.field private static final PLATFORM_NEEDS_API:Z

.field private static StrictMode_VmPolicy_Builder_permitNonSdkApiUsage:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    :try_start_0
    const-class v0, Landroid/os/StrictMode$VmPolicy$Builder;

    const-string v3, "permitNonSdkApiUsage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 27
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->StrictMode_VmPolicy_Builder_permitNonSdkApiUsage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 35
    :goto_0
    sput-boolean v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->INITED:Z

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    :goto_1
    sput-boolean v1, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->PLATFORM_NEEDS_API:Z

    .line 38
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    :goto_2
    const-string v0, "StrictModeAllowHiddenApis"

    const-string v3, "Could not find needed StrictMode allow hidden apis"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 32
    goto :goto_0

    :cond_0
    move v1, v2

    .line 37
    goto :goto_1

    .line 30
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowCallingHiddenApisAndReturnOldPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    sget-boolean v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->PLATFORM_NEEDS_API:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->INITED:Z

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 59
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->setPermitNonHiddenApis(Landroid/os/StrictMode$VmPolicy$Builder;)Z

    .line 61
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    goto :goto_1
.end method

.method public static canTryToCallHiddenApis()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->PLATFORM_NEEDS_API:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->INITED:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreOldVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 0
    .param p0    # Landroid/os/StrictMode$VmPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0
.end method

.method private static setPermitNonHiddenApis(Landroid/os/StrictMode$VmPolicy$Builder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, "StrictModeAllowHiddenApis"

    const-string v2, "Trying to permit hidden apis"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    sget-object v0, Lcom/facebook/common/hiddenapis/StrictModeAllowHiddenApis;->StrictMode_VmPolicy_Builder_permitNonSdkApiUsage:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 82
    :goto_1
    const-string v2, "StrictModeAllowHiddenApis"

    const-string v3, "Could not call PermitNonHiddenApis"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 83
    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
