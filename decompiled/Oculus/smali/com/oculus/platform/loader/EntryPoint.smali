.class public Lcom/oculus/platform/loader/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"


# static fields
.field private static LoadedLibraryName:Ljava/lang/String; = null

.field private static final PLATFORM_SDK_32_BINARY:Ljava/lang/String; = "ovrplatform"

.field private static final PLATFORM_SDK_64_BINARY:Ljava/lang/String; = "ovrplatform_64"

.field private static final PLATFORM_SDK_P2P_32_BINARY:Ljava/lang/String; = "oculus_p2p"

.field private static final PLATFORM_SDK_P2P_64_BINARY:Ljava/lang/String; = "oculus_p2p_64"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/platform/loader/EntryPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.shimwow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    const-string v1, "     _     _"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    const-string v1, " ___| |__ (_)_ __ _____      _______      __"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    const-string v1, "/ __| \'_ \\| | \'_ ` _ \\ \\ /\\ / / _ \\ \\ /\\ / /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    const-string v1, "\\__ \\ | | | | | | | | \\ V  V / (_) \\ V  V /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "|___/_| |_|_|_| |_| |_|\\_/\\_/ \\___/ \\_/\\_/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    new-instance v1, Lcom/oculus/platform/loader/EntryPoint$1;

    invoke-direct {v1, p1}, Lcom/oculus/platform/loader/EntryPoint$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_0
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_1
    if-eqz p7, :cond_4

    .line 69
    const-string v0, "oculus_p2p"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    const-string v0, "ovrplatform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/oculus/platform/loader/EntryPoint;->nativeCheckVersion(IIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    if-eqz p7, :cond_5

    const-string v0, "ovrplatform"

    :goto_1
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    .line 82
    :cond_2
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const-class v0, Lcom/oculus/platform/loader/EntryPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/platform/loader/EntryPoint;->nativeSetClassLoader(Ljava/lang/ClassLoader;)V

    .line 86
    :cond_3
    sget-object v0, Lcom/oculus/platform/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_4
    const-string v0, "oculus_p2p_64"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    const-string v0, "ovrplatform_64"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_5
    const-string v0, "ovrplatform_64"

    goto :goto_1

    .line 78
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested PlatformSDK version (api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", driver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is incompatible with the currently installed version."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static load32(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 8

    .prologue
    .line 100
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oculus/platform/loader/EntryPoint;->load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/oculus/platform/loader/EntryPoint;->nativeGetFunctionAccessor()J

    move-result-wide v0

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static load64(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 8

    .prologue
    .line 118
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oculus/platform/loader/EntryPoint;->load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/oculus/platform/loader/EntryPoint;->nativeGetFunctionAccessor()J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeCheckVersion(IIIII)Z
.end method

.method private static native nativeGetFunctionAccessor()J
.end method

.method private static native nativeSetClassLoader(Ljava/lang/ClassLoader;)V
.end method
