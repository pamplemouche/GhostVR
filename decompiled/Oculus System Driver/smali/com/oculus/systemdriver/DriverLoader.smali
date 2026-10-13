.class Lcom/oculus/systemdriver/DriverLoader;
.super Ljava/lang/Object;
.source "DriverLoader.java"


# static fields
.field private static final FEATURE_STANDALONE_VR:Ljava/lang/String; = "oculus.hardware.standalone_vr"

.field private static final FORCE_LOAD_LINKER:Z = false

.field private static final LINKER_BINARY:Ljava/lang/String; = "vrapilinker"

.field private static final LINKER_BINARY_NAME:Ljava/lang/String; = "libvrapilinker.so"

.field private static final LOAD_IN_PLACE:Z = true

.field private static final TAG:Ljava/lang/String; = "VrDriver"

.field private static final VRRUNTIME_BINARY:Ljava/lang/String; = "vrapiimpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForNamespacedLinker()Z
    .locals 3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return v1

    .line 101
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x1000

    .line 73
    :try_start_2
    new-array p1, p1, [B

    .line 75
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 82
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method private static fileExists(Ljava/lang/String;)Z
    .locals 1

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static getProcAddr(Ljava/lang/String;)J
    .locals 2

    .line 340
    invoke-static {p0}, Lcom/oculus/systemdriver/DriverLoader;->nativeGetProcAddr(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isStandaloneDevice(Landroid/content/Context;)Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oculus.hardware.standalone_vr"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static load32(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading 32-bit VrDriver."

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static/range {p0 .. p6}, Lcom/oculus/systemdriver/DriverLoader;->loadInternal(Landroid/content/Context;Landroid/content/Context;IIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static load32Ext(Landroid/content/Context;Landroid/content/Context;IIIIIJ)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading Extended 32-bit VrDriver."

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static/range {p0 .. p8}, Lcom/oculus/systemdriver/DriverLoader;->loadInternalExt(Landroid/content/Context;Landroid/content/Context;IIIIIJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static load32rsApi(Landroid/content/Context;Landroid/content/Context;I)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading 32-bit VrDriver (for rsApi)."

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {p0, p1, p2}, Lcom/oculus/systemdriver/DriverLoader;->loadInternalrsApi(Landroid/content/Context;Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static load64(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading 64-bit VrDriver."

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static/range {p0 .. p6}, Lcom/oculus/systemdriver/DriverLoader;->loadInternal(Landroid/content/Context;Landroid/content/Context;IIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static load64Ext(Landroid/content/Context;Landroid/content/Context;IIIIIJ)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading Extended 64-bit VrDriver."

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static/range {p0 .. p8}, Lcom/oculus/systemdriver/DriverLoader;->loadInternalExt(Landroid/content/Context;Landroid/content/Context;IIIIIJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static load64rsApi(Landroid/content/Context;Landroid/content/Context;I)J
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading 64-bit VrDriver (for rsApi)."

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {p0, p1, p2}, Lcom/oculus/systemdriver/DriverLoader;->loadInternalrsApi(Landroid/content/Context;Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static loadInternal(Landroid/content/Context;Landroid/content/Context;IIIII)J
    .locals 1

    const-string v0, "vrapiimpl"

    .line 117
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    invoke-static {p2, p3, p4, p5, p6}, Lcom/oculus/systemdriver/DriverLoader;->nativeCheckVersion(IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-class p2, Lcom/oculus/systemdriver/DriverLoader;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2}, Lcom/oculus/systemdriver/DriverLoader;->nativeSetClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    invoke-static {p0, p1}, Lcom/oculus/systemdriver/DriverLoader;->nativeGetFunctionAccessor(Landroid/content/Context;Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested API version (api="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", driver="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is incompatible with the currently installed version."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static loadInternalExt(Landroid/content/Context;Landroid/content/Context;IIIIIJ)J
    .locals 1

    const-string v0, "vrapiimpl"

    .line 135
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 137
    invoke-static {p2, p3, p4, p5, p6}, Lcom/oculus/systemdriver/DriverLoader;->nativeCheckVersion(IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-class p2, Lcom/oculus/systemdriver/DriverLoader;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2}, Lcom/oculus/systemdriver/DriverLoader;->nativeSetClassLoader(Ljava/lang/ClassLoader;)V

    .line 147
    invoke-static {p7, p8}, Lcom/oculus/systemdriver/DriverLoader;->nativeSetVrApiLayers(J)V

    .line 150
    invoke-static {p0, p1}, Lcom/oculus/systemdriver/DriverLoader;->nativeGetFunctionAccessor(Landroid/content/Context;Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested API version (api="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", driver="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is incompatible with the currently installed version."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static loadInternalrsApi(Landroid/content/Context;Landroid/content/Context;I)J
    .locals 1

    const-string v0, "vrapiimpl"

    .line 361
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 363
    invoke-static {p2}, Lcom/oculus/systemdriver/DriverLoader;->nativeCheckrsApiVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-class p2, Lcom/oculus/systemdriver/DriverLoader;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2}, Lcom/oculus/systemdriver/DriverLoader;->nativeSetClassLoaderRsApi(Ljava/lang/ClassLoader;)V

    .line 373
    invoke-static {p0, p1}, Lcom/oculus/systemdriver/DriverLoader;->nativeGetrsApiFunctionAccessor(Landroid/content/Context;Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 365
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested RSAPI version (version="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is incompatible with the currently installed version."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static loadLegacy(Landroid/content/Context;Landroid/content/Context;IIIII)Ljava/lang/String;
    .locals 2

    const-string v0, "VrDriver"

    const-string v1, "Loading Legacy VrDriver."

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static/range {p0 .. p6}, Lcom/oculus/systemdriver/DriverLoader;->loadLegacyInternal(Landroid/content/Context;Landroid/content/Context;IIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadLegacyInternal(Landroid/content/Context;Landroid/content/Context;IIIII)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-static/range {p0 .. p6}, Lcom/oculus/systemdriver/DriverLoader;->loadInternal(Landroid/content/Context;Landroid/content/Context;IIIII)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p0, p2, p4

    if-eqz p0, :cond_2

    .line 164
    invoke-static {}, Lcom/oculus/systemdriver/DriverLoader;->checkForNamespacedLinker()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "vrapiimpl"

    .line 166
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "VrDriver"

    const-string p2, "!!! Android-N workaround mode, using VrApiLinker !!!"

    .line 171
    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "libvrapilinker.so"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VrDriver"

    const-string p4, "Attempting to load in-place..."

    .line 181
    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p2}, Lcom/oculus/systemdriver/DriverLoader;->fileExists(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/oculus/systemdriver/DriverLoader;->isStandaloneDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!/lib/armeabi-v7a/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "libvrapilinker.so"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p0, "VrDriver"

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Load path: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 229
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to load vrapilinker"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to load vrapiimpl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadXrRuntime()V
    .locals 2

    :try_start_0
    const-string v0, "vrapiimpl"

    .line 329
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 333
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to link VrRuntime library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCheckVersion(IIIII)Z
.end method

.method private static native nativeCheckrsApiVersion(I)Z
.end method

.method private static native nativeGetFunctionAccessor(Landroid/content/Context;Landroid/content/Context;)J
.end method

.method private static native nativeGetProcAddr(Ljava/lang/String;)J
.end method

.method private static native nativeGetrsApiFunctionAccessor(Landroid/content/Context;Landroid/content/Context;)J
.end method

.method private static native nativeResetClassLoaderXR()V
.end method

.method private static native nativeSetClassLoader(Ljava/lang/ClassLoader;)V
.end method

.method private static native nativeSetClassLoaderRsApi(Ljava/lang/ClassLoader;)V
.end method

.method private static native nativeSetVrApiLayers(J)V
.end method

.method public static resetRuntimeClassLoaderXR()V
    .locals 0

    .line 350
    invoke-static {}, Lcom/oculus/systemdriver/DriverLoader;->nativeResetClassLoaderXR()V

    return-void
.end method

.method public static setRuntimeClassLoaderXR()V
    .locals 1

    .line 345
    const-class v0, Lcom/oculus/systemdriver/DriverLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/systemdriver/DriverLoader;->nativeSetClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method
