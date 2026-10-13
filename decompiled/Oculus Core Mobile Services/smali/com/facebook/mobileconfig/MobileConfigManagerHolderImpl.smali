.class public Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;
.super Ljava/lang/Object;
.source "MobileConfigManagerHolderImpl.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigManagerHolder;


# instance fields
.field private mDataDirPath:Ljava/lang/String;

.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "mobileconfig-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/tigon/iface/TigonServiceHolder;ZLcom/facebook/xanalytics/XAnalyticsHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;ZLcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;Ljava/util/Map;)V
    .locals 14
    .param p2    # Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Landroid/content/res/AssetManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/tigon/iface/TigonServiceHolder;",
            "Z",
            "Lcom/facebook/xanalytics/XAnalyticsHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Z",
            "Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->mDataDirPath:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    .line 50
    invoke-static/range {v0 .. v13}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->initHybrid(Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/tigon/iface/TigonServiceHolder;ZLcom/facebook/xanalytics/XAnalyticsHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;ZLcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;Ljava/util/Map;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 65
    return-void
.end method

.method public static native getParamMapContentFromAsset(Landroid/content/res/AssetManager;)Ljava/lang/String;
.end method

.method public static native getQueryHashesContentFromAsset(Landroid/content/res/AssetManager;)Ljava/lang/String;
.end method

.method private static native initHybrid(Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/tigon/iface/TigonServiceHolder;ZLcom/facebook/xanalytics/XAnalyticsHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;ZLcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;Ljava/util/Map;)Lcom/facebook/jni/HybridData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/jniexecutors/AndroidAsyncExecutorFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/tigon/iface/TigonServiceHolder;",
            "Z",
            "Lcom/facebook/xanalytics/XAnalyticsHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Z",
            "Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;",
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
.method public native clearAlternativeUpdater()V
.end method

.method public native clearCurrentUserData()V
.end method

.method public native clearOverrides()V
.end method

.method public native copyPersistedConfigsWithNamesFilter(Ljava/lang/String;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public native deleteOldUserData(I)V
.end method

.method public native getClientDrivenTroubleshootingInfo(Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public native getConsistencyLoggingFlagsJSON()Ljava/lang/String;
.end method

.method public native getFrameworkStatus()Ljava/lang/String;
.end method

.method public native getGKTroubleshootingInfo(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->getLatestHandleHolder()Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;

    move-result-object v0

    return-object v0
.end method

.method public native getLatestHandleHolder()Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;
.end method

.method public native getNewMCBisectHelper(Lcom/facebook/mobileconfig/BisectDefaultValuesProvider;)Lcom/facebook/mobileconfig/BisectHelperHolder;
.end method

.method public getNewOverridesTable()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->getNewOverridesTableHolder()Lcom/facebook/mobileconfig/MobileConfigOverridesTableHolder;

    move-result-object v0

    return-object v0
.end method

.method public native getNewOverridesTableHolder()Lcom/facebook/mobileconfig/MobileConfigOverridesTableHolder;
.end method

.method public native getNewOverridesTableHolderIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTableHolder;
.end method

.method public getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;->getNewOverridesTableHolderIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTableHolder;

    move-result-object v0

    return-object v0
.end method

.method public native getQEInfo(Lcom/facebook/mobileconfig/MobileConfigQEInfoQueryParamsHolder;Lcom/facebook/mobileconfig/MobileConfigResponseCallback;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native getQETroubleshootingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public native getRNQEInfo()Ljava/lang/String;
.end method

.method public native getSchemaString()Ljava/lang/String;
.end method

.method public native hasRefreshedQEInfo()Z
.end method

.method public native importOverridesFromTask(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native importOverridesFromUser(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native isConsistencyLoggingNeeded(I)Z
.end method

.method public native isFetchNeeded()Z
.end method

.method public native isTigonServiceSet()Z
.end method

.method public native isValid()Z
.end method

.method public native loadOverridesFromTaskAndSaveResponse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native logConfigs(Ljava/lang/String;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native logStorageConsistency()V
.end method

.method public native registerConfigChangeListener(Lcom/facebook/mobileconfig/MobileConfigCxxChangeListener;)Z
.end method

.method public native setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z
.end method

.method public native setSandboxURL(Ljava/lang/String;)Z
.end method

.method public native setTigonService(Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V
.end method

.method public native syncFetchReason()Ljava/lang/String;
.end method

.method public native tryUpdateConfigs()Z
.end method

.method public native tryUpdateConfigsSynchronously(I)Z
.end method

.method public native updateConfigs()Z
.end method

.method public native updateConfigsSynchronouslyWithDefaultUpdater(I)Z
.end method

.method public native updateEmergencyPushConfigs()Z
.end method

.method public native updateEmergencyPushConfigsSynchronously(I)Z
.end method
