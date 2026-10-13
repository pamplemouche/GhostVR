.class public Lcom/oculus/avatar/loader/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"


# static fields
.field private static final AVATAR_SDK_BINARY:Ljava/lang/String; = "ovravatar"

.field private static final AVATAR_SDK_BINARY_64:Ljava/lang/String; = "ovravatar_64"

.field private static LoadedLibraryName:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/avatar/loader/EntryPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/avatar/loader/EntryPoint;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.scimitar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v1, Lcom/oculus/avatar/loader/EntryPoint$1;

    invoke-direct {v1, p1}, Lcom/oculus/avatar/loader/EntryPoint$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    sget-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    if-eqz p7, :cond_4

    const-string v0, "ovravatar_64"

    .line 65
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    invoke-static {p2, p3, p4, p5, p6}, Lcom/oculus/avatar/loader/EntryPoint;->nativeCheckVersion(IIIII)Z

    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    .line 80
    :cond_2
    sget-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    const-class v0, Lcom/oculus/avatar/loader/EntryPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/avatar/loader/EntryPoint;->nativeSetClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_3
    sget-object v0, Lcom/oculus/avatar/loader/EntryPoint;->LoadedLibraryName:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_4
    const-string v0, "ovravatar"

    goto :goto_0

    .line 71
    :cond_5
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

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested AvatarSDK version (api="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is incompatible with the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currently installed version."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static load32(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 2

    .prologue
    .line 97
    invoke-static/range {p0 .. p6}, Lcom/oculus/avatar/loader/EntryPoint;->loadGeneric(Landroid/content/Context;Landroid/content/Context;IIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadGeneric(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 8

    .prologue
    .line 120
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oculus/avatar/loader/EntryPoint;->load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/oculus/avatar/loader/EntryPoint;->nativeGetFunctionAccessor()J

    move-result-wide v0

    .line 134
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static loadHorizon64(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 8

    .prologue
    .line 148
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oculus/avatar/loader/EntryPoint;->load(Landroid/content/Context;Landroid/content/Context;IIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/oculus/avatar/loader/EntryPoint;->nativeGetFunctionAccessor()J

    move-result-wide v0

    .line 152
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
