.class public Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;
.super Lcom/facebook/react/bridge/CxxModuleWrapper;
.source "FbReactI18nAssetsModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    isCxxModule = true
    name = "I18nAssets"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "fbreact-i18nassetsmodule"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;-><init>(Landroid/content/Context;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;->initHybridWithLogging(Landroid/content/Context;IILjava/lang/String;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/CxxModuleWrapper;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;->initHybridWithLogging(Landroid/content/Context;IILjava/lang/String;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/CxxModuleWrapper;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 50
    return-void
.end method

.method private static getAsset(Landroid/content/Context;I)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 96
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 97
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 99
    add-int/lit8 v5, v3, -0x1

    if-eq v4, v5, :cond_2

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "stream.available is incorrect and so are your assumptions"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    :goto_1
    :try_start_2
    const-string v3, "ReactNative"

    const-string v4, "Unable to process I18n asset"

    invoke-static {v3, v4, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    if-eqz v2, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    if-eqz v2, :cond_3

    .line 110
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    move-object v0, v1

    .line 114
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 109
    :goto_3
    if-eqz v2, :cond_4

    .line 110
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 114
    :cond_4
    :goto_4
    throw v0

    .line 112
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 108
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 104
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private static native initHybrid(Landroid/content/Context;IIIIILjava/lang/String;Z)Lcom/facebook/jni/HybridData;
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static initHybridWithLogging(Landroid/content/Context;IILjava/lang/String;)Lcom/facebook/jni/HybridData;
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_I18N_ASSETS_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 68
    sget v2, Lcom/facebook/R$raw;->currency_format_config:I

    sget v3, Lcom/facebook/R$raw;->date_format_config:I

    sget v4, Lcom/facebook/R$raw;->number_format_config:I

    .line 77
    invoke-static {}, Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;->shouldExportDebugConstants()Z

    move-result v7

    move-object v0, p0

    move v1, p1

    move v5, p2

    move-object v6, p3

    .line 69
    invoke-static/range {v0 .. v7}, Lcom/facebook/fbreact/i18n/FbReactI18nAssetsModule;->initHybrid(Landroid/content/Context;IIIIILjava/lang/String;Z)Lcom/facebook/jni/HybridData;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_I18N_ASSETS_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 79
    return-object v0
.end method

.method private static shouldExportDebugConstants()Z
    .locals 2

    .prologue
    .line 121
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "true"

    const-string v1, "IS_TESTING"

    .line 122
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
