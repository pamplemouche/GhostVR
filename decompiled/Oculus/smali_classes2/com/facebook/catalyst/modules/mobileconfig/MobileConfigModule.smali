.class public Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;
.super Lcom/facebook/react/bridge/CxxModuleWrapper;
.source "MobileConfigModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    isCxxModule = true
    name = "MobileConfigModule"
    needsEagerInit = true
.end annotation


# instance fields
.field private final mAndroidAsyncExecutorFactory:Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mAppVersion:Ljava/lang/String;

.field private final mAutoUpdater:Lcom/facebook/fbreact/autoupdater/AutoUpdater;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceId:Ljava/lang/String;

.field private final mExtraURLRequestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Ljava/lang/String;

.field private final mTigonServiceHolder:Lcom/facebook/tigon/iface/TigonServiceHolder;

.field private final mUniverseType:I

.field private final mXAnalyticsProvider:Lcom/facebook/xanalytics/XAnalyticsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "catalyst-mobileconfigmodule"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/fbreact/autoupdater/AutoUpdater;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lcom/facebook/tigon/iface/TigonServiceHolder;Lcom/facebook/xanalytics/XAnalyticsProvider;Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 12
    .param p2    # Lcom/facebook/fbreact/autoupdater/AutoUpdater;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/fbreact/autoupdater/AutoUpdater;",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            "Lcom/facebook/tigon/iface/TigonServiceHolder;",
            "Lcom/facebook/xanalytics/XAnalyticsProvider;",
            "Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface/range {p5 .. p5}, Lcom/facebook/xanalytics/XAnalyticsProvider;->getXAnalyticsNative()Lcom/facebook/xanalytics/XAnalyticsHolder;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {p1, p2, p3}, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->getMetadataPath(Landroid/content/Context;Lcom/facebook/fbreact/autoupdater/AutoUpdater;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v1, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/facebook/react/common/build/ReactBuildConfig;->IS_INTERNAL_BUILD:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v10, 0x1

    :goto_0
    move-object/from16 v1, p4

    move-object/from16 v3, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v11, p11

    .line 72
    invoke-static/range {v1 .. v11}, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->initHybrid(Lcom/facebook/tigon/iface/TigonServiceHolder;Lcom/facebook/xanalytics/XAnalyticsHolder;Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Lcom/facebook/jni/HybridData;

    move-result-object v1

    .line 71
    invoke-direct {p0, v1}, Lcom/facebook/react/bridge/CxxModuleWrapper;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 84
    iput-object p1, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mAutoUpdater:Lcom/facebook/fbreact/autoupdater/AutoUpdater;

    .line 86
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mTigonServiceHolder:Lcom/facebook/tigon/iface/TigonServiceHolder;

    .line 87
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mXAnalyticsProvider:Lcom/facebook/xanalytics/XAnalyticsProvider;

    .line 88
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mAndroidAsyncExecutorFactory:Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;

    .line 89
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mAppVersion:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mDeviceId:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mSessionId:Ljava/lang/String;

    .line 92
    move/from16 v0, p10

    iput v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mUniverseType:I

    .line 93
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->mExtraURLRequestParams:Ljava/util/Map;

    .line 94
    return-void

    .line 77
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static getMetadataPath(Landroid/content/Context;Lcom/facebook/fbreact/autoupdater/AutoUpdater;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/facebook/fbreact/autoupdater/AutoUpdater;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/32 v4, 0x20000

    .line 113
    const-string v0, "MobileConfigModule.getMetadataPath"

    invoke-static {v4, v5, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 114
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MC_MODULE_GET_METADATA_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 118
    if-eqz p2, :cond_0

    .line 119
    :try_start_0
    invoke-interface {p2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x8020000

    .line 120
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactMobileConfigMetadata.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "/assets/RKJSModules/Libraries/MobileConfig/ReactMobileConfigMetadata.json"

    .line 123
    invoke-interface {p2, v1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MC_MODULE_GET_METADATA_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 153
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    if-eqz p1, :cond_1

    .line 132
    :try_start_1
    const-string v0, "ReactMobileConfigMetadata.json"

    .line 133
    invoke-interface {p1, v0}, Lcom/facebook/fbreact/autoupdater/AutoUpdater;->getActivatedOtaResource(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 135
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MC_MODULE_GET_METADATA_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 153
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    .line 142
    :cond_2
    :try_start_2
    const-string v0, "AppReactMobileConfigMetadata.json"

    invoke-static {p0, v0}, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->getOfflineMetadataPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    const-string v0, "ReactMobileConfigMetadata.json"

    invoke-static {p0, v0}, Lcom/facebook/catalyst/modules/mobileconfig/MobileConfigModule;->getOfflineMetadataPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_3
    if-nez v0, :cond_4

    .line 147
    const-string v0, "ReactNative"

    const-string v1, "Unable to load offline mobileconfig metadata file"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :cond_4
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MC_MODULE_GET_METADATA_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 153
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_MC_MODULE_GET_METADATA_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 153
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
.end method

.method private static getOfflineMetadataPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    const-string v0, "ReactNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory to store mobileconfig metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, ""

    .line 189
    :goto_0
    return-object v0

    .line 171
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 173
    const/16 v3, 0x400

    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 178
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 185
    :catch_0
    move-exception v0

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private static native initHybrid(Lcom/facebook/tigon/iface/TigonServiceHolder;Lcom/facebook/xanalytics/XAnalyticsHolder;Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Lcom/facebook/jni/HybridData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/tigon/iface/TigonServiceHolder;",
            "Lcom/facebook/xanalytics/XAnalyticsHolder;",
            "Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/jni/HybridData;"
        }
    .end annotation
.end method


# virtual methods
.method public onCatalystInstanceDestroy()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
