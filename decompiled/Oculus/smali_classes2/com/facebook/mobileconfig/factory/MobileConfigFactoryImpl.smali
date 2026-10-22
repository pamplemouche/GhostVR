.class public Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;
.super Ljava/lang/Object;
.source "MobileConfigFactoryImpl.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigCxxChangeListener;
.implements Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;
.implements Lcom/facebook/mobileconfig/factory/MobileConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;,
        Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$ManagerHolderCreator;
    }
.end annotation


# instance fields
.field private final mAllCachedContexts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/mobileconfig/factory/MobileConfigContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mApi2Logger:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/mobileconfig/factory/MobileConfigApi2Logger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAssetManager:Landroid/content/res/AssetManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

.field private volatile mConfigCaches:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/facebook/mobileconfig/factory/MobileConfigContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCppManagerCreator:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$ManagerHolderCreator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDataDir:Ljava/io/File;

.field private mEnableAutoApi2Logging:Z

.field private final mEnableInitManagerOnDemand:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEpHandler:Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mFbErrorReporter:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/gk/store/GatekeeperStore;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mInitCppManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInitCppManagerLock:Ljava/lang/Object;

.field private final mInitLightweightManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSessionless:Z

.field private final mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

.field private mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

.field private mQPL:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/quicklog/QuickPerformanceLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

.field private final mUseTranslationTable:Z

.field private mUserIdProvider:Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitLightweightManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableInitManagerOnDemand:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAllCachedContexts:Ljava/util/Set;

    .line 94
    iput-boolean v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableAutoApi2Logging:Z

    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mRandom:Ljava/util/Random;

    .line 114
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    .line 115
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 116
    iput-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 117
    iput-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    .line 118
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEpHandler:Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mConfigCaches:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 122
    iput-boolean p3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;ZLcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;-><init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mDataDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$202(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Landroid/content/res/AssetManager;)Landroid/content/res/AssetManager;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAssetManager:Landroid/content/res/AssetManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;)Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUserIdProvider:Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    return-object v0
.end method

.method static synthetic access$602(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;)Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUserIdProvider:Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    return-object p1
.end method

.method static synthetic access$900(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    return v0
.end method

.method static synthetic access$902(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    return p1
.end method

.method public static builder(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->builder(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;-><init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;ZLcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$1;)V

    return-object v0
.end method

.method private checkIfRequireCallsiteDefault(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 785
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getRequireCallsiteDefault(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    const-string v0, "QE param does not have a universe default. Please call `"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v0, "(specifier, defaultValue)` instead and provide a call-site default value. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v0, "https://ghostvr.pamplemouche.com/callsitedefault"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "MobileConfigFactoryImpl: invalid specifier"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    const-string v0, "MobileConfigFactoryImpl"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_1
    return-void
.end method

.method private contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;
    .locals 1

    .prologue
    .line 370
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getConfigIndex(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    return-object v0
.end method

.method private createLightweightJavaManager(Ljava/io/File;Ljava/lang/String;Landroid/content/res/AssetManager;ZLcom/facebook/mobileconfig/factory/MobileConfigCaptureError;)Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
    .locals 9
    .param p3    # Landroid/content/res/AssetManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const v8, 0xd00002

    .line 805
    const/4 v4, 0x0

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickPerformanceLogger;

    const v5, 0xd00002

    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 811
    invoke-static {v3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryUtils;->getInstanceKey(Z)I

    move-result v6

    const-string v7, "MODE"

    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-eqz v3, :cond_2

    const-string v3, "SESSIONLESS"

    .line 809
    :goto_0
    invoke-interface {v0, v5, v6, v7, v3}, Lcom/facebook/quicklog/QuickPerformanceLogger;->markerStart(IILjava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_0
    invoke-static {p1, p2, p5, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->createJavaManager(Ljava/io/File;Ljava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;Landroid/content/res/AssetManager;Z)Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 820
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickPerformanceLogger;

    iget-boolean v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 824
    invoke-static {v4}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryUtils;->getInstanceKey(Z)I

    move-result v4

    if-nez v3, :cond_3

    .line 822
    :goto_1
    invoke-interface {v0, v8, v4, v1}, Lcom/facebook/quicklog/QuickPerformanceLogger;->markerEnd(IIS)V

    :cond_1
    return-object v3

    .line 811
    :cond_2
    :try_start_1
    const-string v3, "SESSION_BASED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 824
    goto :goto_1

    .line 820
    :catchall_0
    move-exception v0

    move-object v3, v0

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mQPL:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickPerformanceLogger;

    iget-boolean v5, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 824
    invoke-static {v5}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryUtils;->getInstanceKey(Z)I

    move-result v5

    if-nez v4, :cond_5

    .line 822
    :goto_2
    invoke-interface {v0, v8, v5, v1}, Lcom/facebook/quicklog/QuickPerformanceLogger;->markerEnd(IIS)V

    :cond_4
    throw v3

    :cond_5
    move v1, v2

    .line 824
    goto :goto_2
.end method

.method private static getStringValueForSampleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1013
    if-nez p0, :cond_1

    .line 1014
    const-string p0, "<null>"

    .line 1022
    :cond_0
    :goto_0
    return-object p0

    .line 1017
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1018
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x5

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUserIdProvider:Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    if-nez v0, :cond_1

    .line 746
    const-string v0, ""

    .line 749
    :cond_0
    :goto_0
    return-object v0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUserIdProvider:Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 749
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method private isSessionBasedAndLoggedOut()Z
    .locals 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidCachedContext(ILcom/facebook/mobileconfig/factory/MobileConfigContext;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 290
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-static {p0}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->preferWaitForNonDefault(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_2
    instance-of v2, p1, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    .line 297
    invoke-virtual {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 300
    goto :goto_0
.end method

.method private latestContextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;
    .locals 1

    .prologue
    .line 489
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getConfigIndex(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    return-object v0
.end method

.method private refreshSessionState(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isSessionBasedAndLoggedOut()Z

    move-result v0

    .line 260
    const-string v1, "MobileConfigFactoryImpl"

    const-string v2, "refreshSessionState refreshGK: %s isLoggedOut: %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 265
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAllCachedContexts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 266
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mConfigCaches:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 268
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableInitManagerOnDemand:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 270
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitLightweightManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mApi2Logger:Lcom/facebook/inject/Lazy;

    .line 275
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperStore;

    invoke-interface {v0, v5}, Lcom/facebook/gk/store/GatekeeperStore;->refreshSessionState(Z)V

    .line 279
    :cond_1
    return-void

    .line 275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private validateParamSpecifier(JI)V
    .locals 3

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getIsSessionless(J)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 761
    const-string v0, "Session-based factory used for sessionless param"

    .line 762
    iget-boolean v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-eqz v1, :cond_4

    .line 763
    const-string v0, "Sessionless factory used for session-based param"

    move-object v1, v0

    .line 765
    :goto_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "MobileConfigFactoryImpl: invalid specifier"

    invoke-interface {v0, v2, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_0
    const-string v0, "MobileConfigFactoryImpl"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_1
    if-eqz p3, :cond_3

    .line 771
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    if-eq p3, v0, :cond_3

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid param type used for config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getConfigIndex(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamIndex(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "MobileConfigFactoryImpl: invalid specifier"

    invoke-interface {v0, v2, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_2
    const-string v0, "MobileConfigFactoryImpl"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public accessedConfigs()[I
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mConfigCaches:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 362
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public contextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mConfigCaches:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 314
    if-ltz p1, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 315
    :cond_0
    const-string v0, "MobileConfigFactoryImpl"

    const-string v1, "Attempt to read invalid config index(%d) from config caches, isSessionless: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 319
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 315
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->getInstance()Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    move-result-object v1

    .line 355
    :cond_1
    :goto_0
    return-object v1

    .line 323
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 324
    invoke-static {p1, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isValidCachedContext(ILcom/facebook/mobileconfig/factory/MobileConfigContext;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableInitManagerOnDemand:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isSessionBasedAndLoggedOut()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    const-string v0, "MobileConfigFactoryImpl"

    const-string v1, "Attempt to read config (index:%d) after logout, see https://ghostvr.pamplemouche.com/bicj8iz0"

    new-array v2, v5, [Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 326
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->getInstance()Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    move-result-object v1

    goto :goto_0

    .line 333
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v1

    .line 334
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 337
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-object v1, v0

    :cond_4
    move-object v0, v1

    .line 339
    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    .line 342
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mApi2Logger:Lcom/facebook/inject/Lazy;

    .line 343
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableAutoApi2Logging:Z

    if-eqz v3, :cond_1

    .line 344
    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-eqz v3, :cond_5

    .line 345
    invoke-interface {v2}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/mobileconfig/factory/MobileConfigApi2Logger;

    invoke-interface {v2, p1, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigApi2Logger;->log(ILcom/facebook/mobileconfig/factory/MobileConfigContext;)V

    goto :goto_0

    .line 347
    :cond_5
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 349
    if-eqz v3, :cond_1

    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 350
    invoke-interface {v2}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/mobileconfig/factory/MobileConfigApi2Logger;

    invoke-interface {v2, p1, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigApi2Logger;->log(ILcom/facebook/mobileconfig/factory/MobileConfigContext;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public getBoolean(J)Z
    .locals 1

    .prologue
    .line 832
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getBooleanWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .locals 1

    .prologue
    .line 837
    const-string v0, "getBooleanWithOptions"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->checkIfRequireCallsiteDefault(JLjava/lang/String;)V

    .line 839
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getBoolDefaults(J)Z

    move-result v0

    .line 838
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .locals 11

    .prologue
    const v4, 0x30d40

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 845
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->validateParamSpecifier(JI)V

    .line 846
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v3, v5

    .line 847
    :goto_0
    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {p4}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->requestForValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object p4

    .line 851
    :cond_0
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    if-eqz v0, :cond_4

    .line 853
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    move-object v1, v0

    .line 856
    :goto_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 857
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v0, :cond_5

    .line 859
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_1

    .line 860
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 867
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 868
    invoke-virtual {p4}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->getValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->syncFetchReason()Ljava/lang/String;

    move-result-object v7

    .line 870
    if-eqz p3, :cond_6

    const-string v8, "1"

    .line 871
    :goto_3
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    .line 874
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->getSource()I

    move-result v3

    if-le v3, v5, :cond_7

    .line 875
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->name()Ljava/lang/String;

    move-result-object v6

    iget-boolean v9, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    move-wide v2, p1

    .line 871
    invoke-interface/range {v1 .. v9}, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;->onMobileConfigAccess(JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 880
    :cond_2
    return p3

    :cond_3
    move v3, v2

    .line 846
    goto :goto_0

    .line 854
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 864
    :cond_5
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContext;->getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z

    move-result p3

    goto :goto_2

    .line 870
    :cond_6
    const-string v8, "0"

    goto :goto_3

    :cond_7
    move v5, v2

    .line 874
    goto :goto_4
.end method

.method public getDoubleWithOptions(JDLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D
    .locals 11

    .prologue
    .line 1054
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->validateParamSpecifier(JI)V

    .line 1056
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mRandom:Ljava/util/Random;

    const v1, 0x30d40

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 1057
    :goto_0
    if-eqz v7, :cond_6

    .line 1058
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->requestForValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v6

    .line 1061
    :goto_1
    iget-boolean v0, v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    if-eqz v0, :cond_3

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v1

    .line 1066
    :goto_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 1067
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v0, :cond_4

    .line 1069
    iget-boolean v0, v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 1070
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {v6, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 1077
    :cond_0
    :goto_3
    if-eqz v7, :cond_1

    .line 1078
    invoke-virtual {v6}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->getValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    move-result-object v0

    .line 1079
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->syncFetchReason()Ljava/lang/String;

    move-result-object v7

    .line 1080
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    const v4, 0x30d40

    .line 1083
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->getSource()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v5, 0x1

    .line 1084
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->name()Ljava/lang/String;

    move-result-object v6

    .line 1086
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    move-wide v2, p1

    .line 1080
    invoke-interface/range {v1 .. v9}, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;->onMobileConfigAccess(JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1089
    :cond_1
    return-wide p3

    .line 1056
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 1064
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-wide v2, p1

    move-wide v4, p3

    .line 1074
    invoke-interface/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContext;->getDoubleWithOptions(JDLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D

    move-result-wide p3

    goto :goto_3

    .line 1083
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v6, p5

    goto :goto_1
.end method

.method public getDoubleWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D
    .locals 7

    .prologue
    .line 1046
    const-string v0, "getDoubleWithOptions"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->checkIfRequireCallsiteDefault(JLjava/lang/String;)V

    .line 1048
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getDoubleDefaults(J)D

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 1047
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getDoubleWithOptions(JDLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(JI)I
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->validateParamSpecifier(JI)V

    .line 1102
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    .line 1103
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContext;->getInt(JI)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .locals 3

    .prologue
    .line 892
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getLongWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J
    .locals 11

    .prologue
    .line 905
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->validateParamSpecifier(JI)V

    .line 907
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mRandom:Ljava/util/Random;

    const v1, 0x30d40

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 908
    :goto_0
    if-eqz v7, :cond_6

    .line 909
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->requestForValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object v6

    .line 912
    :goto_1
    iget-boolean v0, v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    if-eqz v0, :cond_3

    .line 914
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v1

    .line 917
    :goto_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 918
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v0, :cond_4

    .line 920
    iget-boolean v0, v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 921
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {v6, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 928
    :cond_0
    :goto_3
    if-eqz v7, :cond_1

    .line 929
    invoke-virtual {v6}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->getValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->syncFetchReason()Ljava/lang/String;

    move-result-object v7

    .line 931
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    const v4, 0x30d40

    .line 934
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->getSource()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v5, 0x1

    .line 935
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->name()Ljava/lang/String;

    move-result-object v6

    .line 937
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    move-wide v2, p1

    .line 931
    invoke-interface/range {v1 .. v9}, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;->onMobileConfigAccess(JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 940
    :cond_1
    return-wide p3

    .line 907
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 915
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-wide v2, p1

    move-wide v4, p3

    .line 925
    invoke-interface/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContext;->getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide p3

    goto :goto_3

    .line 934
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v6, p5

    goto :goto_1
.end method

.method public getLongWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J
    .locals 7

    .prologue
    .line 897
    const-string v0, "getLongWithOptions"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->checkIfRequireCallsiteDefault(JLjava/lang/String;)V

    .line 899
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getLongDefaults(J)J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 898
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManagerHolder()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    return-object v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getStringWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    const-string v0, "getStringWithOptions"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->checkIfRequireCallsiteDefault(JLjava/lang/String;)V

    .line 959
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getStringDefaults(J)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 11

    .prologue
    const v4, 0x30d40

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 975
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->validateParamSpecifier(JI)V

    .line 976
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v3, v5

    .line 977
    :goto_0
    if-eqz v3, :cond_0

    .line 978
    invoke-virtual {p4}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->requestForValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    move-result-object p4

    .line 981
    :cond_0
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mGetLatestValue:Z

    if-eqz v0, :cond_4

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->latestContextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    move-object v1, v0

    .line 986
    :goto_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 987
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v0, :cond_5

    .line 989
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_1

    .line 990
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 997
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 998
    invoke-virtual {p4}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->getValueSource()Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->syncFetchReason()Ljava/lang/String;

    move-result-object v7

    .line 1000
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mSampledAccessListener:Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    .line 1003
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->getSource()I

    move-result v3

    if-le v3, v5, :cond_6

    .line 1004
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->name()Ljava/lang/String;

    move-result-object v6

    .line 1006
    invoke-static {p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getStringValueForSampleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    move-wide v2, p1

    .line 1000
    invoke-interface/range {v1 .. v9}, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;->onMobileConfigAccess(JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1009
    :cond_2
    return-object p3

    :cond_3
    move v3, v2

    .line 976
    goto :goto_0

    .line 984
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfigParameter(J)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 994
    :cond_5
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContext;->getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_6
    move v5, v2

    .line 1003
    goto :goto_3
.end method

.method public initAnyManagerIfNeeded()V
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isManagerInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->initLightweightManagerIfNeeded()V

    .line 733
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isManagerInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->initCppManagerIfNeeded()V

    goto :goto_0
.end method

.method public initCppManagerIfNeeded()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 689
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 690
    :try_start_0
    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitCppManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 691
    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCppManagerCreator:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$ManagerHolderCreator;

    if-nez v3, :cond_1

    .line 692
    const-string v1, "MobileConfigFactoryImpl"

    const-string v3, "Calling initCppManagerIfNeeded with null mCppManagerCreator, userId:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    monitor-exit v2

    goto :goto_0

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 698
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v3, v3, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-nez v3, :cond_2

    .line 699
    monitor-exit v2

    goto :goto_0

    .line 702
    :cond_2
    iget-boolean v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 705
    :cond_4
    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCppManagerCreator:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$ManagerHolderCreator;

    iget-object v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mDataDir:Ljava/io/File;

    invoke-interface {v3, v4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$ManagerHolderCreator;->create(Ljava/io/File;Ljava/lang/String;)Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v3

    .line 706
    if-eqz v3, :cond_5

    .line 707
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->accessedConfigs()[I

    move-result-object v4

    .line 708
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :try_start_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 710
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 711
    invoke-virtual {v0, v3, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->setManagerHolderInstance(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfig;)V

    .line 712
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z

    .line 713
    const-string v0, "MobileConfigFactoryImpl"

    const-string v3, "Set Emergency Push Handler for Cpp"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->refreshSessionState(Z)V

    .line 715
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 716
    :try_start_3
    array-length v3, v4

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_5

    aget v1, v4, v0

    .line 717
    invoke-virtual {p0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->contextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 715
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 721
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public initLightweightManagerIfNeeded()V
    .locals 6

    .prologue
    .line 620
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitLightweightManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mInitLightweightManagerAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 627
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mDataDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 628
    monitor-exit p0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 630
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-nez v0, :cond_2

    .line 631
    monitor-exit p0

    goto :goto_0

    .line 634
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 636
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    .line 637
    instance-of v1, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v1, :cond_4

    .line 638
    check-cast v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    .line 640
    const-string v1, "Logout"

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;->setStartType(Ljava/lang/String;)V

    .line 642
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 644
    :cond_5
    new-instance v5, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;

    invoke-direct {v5}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;-><init>()V

    .line 645
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mDataDir:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAssetManager:Landroid/content/res/AssetManager;

    iget-boolean v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mUseTranslationTable:Z

    move-object v0, p0

    .line 646
    invoke-direct/range {v0 .. v5}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->createLightweightJavaManager(Ljava/io/File;Ljava/lang/String;Landroid/content/res/AssetManager;ZLcom/facebook/mobileconfig/factory/MobileConfigCaptureError;)Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v1

    .line 648
    if-eqz v1, :cond_7

    .line 649
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 650
    invoke-virtual {v0, v1, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->setManagerHolderInstance(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfig;)V

    .line 651
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->refreshSessionState(Z)V

    .line 675
    :cond_6
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 656
    :cond_7
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 657
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    .line 658
    instance-of v1, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    if-eqz v1, :cond_6

    .line 659
    check-cast v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    .line 661
    invoke-virtual {v5}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->getError()Lcom/facebook/mobileconfig/factory/MobileConfigError;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 662
    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$1;->$SwitchMap$com$facebook$mobileconfig$factory$MobileConfigError:[I

    invoke-virtual {v5}, Lcom/facebook/mobileconfig/factory/MobileConfigCaptureError;->getError()Lcom/facebook/mobileconfig/factory/MobileConfigError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 664
    :pswitch_0
    const-string v1, "FreshInstall"

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;->setStartType(Ljava/lang/String;)V

    goto :goto_1

    .line 668
    :pswitch_1
    const-string v1, "AppUpgrade"

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;->setStartType(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isManagerInited()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsManagerInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public latestContextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 509
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEnableInitManagerOnDemand:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->isSessionBasedAndLoggedOut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    const-string v1, "MobileConfigFactoryImpl"

    const-string v3, "Attempt to read config (index:%d) after logout, see https://ghostvr.pamplemouche.com/bicj8iz0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    .line 510
    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->getInstance()Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    move-result-object v1

    .line 584
    :cond_0
    :goto_0
    return-object v1

    .line 516
    :cond_1
    invoke-static {p1}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->preferWaitForNonDefault(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->initAnyManagerIfNeeded()V

    .line 523
    :goto_1
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 524
    if-nez v1, :cond_0

    .line 535
    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 538
    if-eqz v1, :cond_3

    .line 539
    monitor-exit p0

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->initLightweightManagerIfNeeded()V

    goto :goto_1

    .line 542
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    .line 543
    invoke-interface {v1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;

    move-result-object v1

    move-object v4, v1

    .line 545
    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/facebook/mobileconfig/MobileConfigMmapHandle;->getJavaByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 546
    :goto_3
    if-nez v1, :cond_4

    .line 547
    const-string v3, "MobileConfigFactoryImpl"

    const-string v5, "Unable to enable contextV2 due to null buffer - sessionless: %s, handleHolder is null: %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 550
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    if-nez v4, :cond_7

    .line 551
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    .line 547
    invoke-static {v3, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_4
    const/4 v0, 0x0

    check-cast v0, [[J

    .line 554
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v2, v2, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v2, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 555
    invoke-virtual {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    if-eqz v2, :cond_9

    .line 557
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 559
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    .line 560
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getTranslationTable()[[J

    move-result-object v0

    move-object v5, v0

    .line 564
    :goto_5
    if-eqz v5, :cond_8

    .line 565
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    iget-object v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;-><init>(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigOverridesTable;Ljavax/inject/Provider;[[J)V

    move-object v1, v0

    .line 573
    :goto_6
    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 575
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAllCachedContexts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    const-string v2, "MobileConfigFactoryImpl"

    const-string v3, "Updated cached latest contextV2 - isValid: %s, isSessionless: %s withTranslationTable: %s"

    move-object v0, v1

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    .line 580
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mIsSessionless:Z

    .line 581
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    instance-of v5, v1, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;

    .line 582
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 577
    invoke-static {v2, v3, v0, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move-object v4, v3

    .line 543
    goto/16 :goto_2

    :cond_6
    move-object v1, v3

    .line 545
    goto :goto_3

    :cond_7
    move v0, v2

    .line 550
    goto :goto_4

    .line 569
    :cond_8
    :try_start_2
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    iget-object v4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mFbErrorReporter:Lcom/facebook/inject/Lazy;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;-><init>(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigOverridesTable;Ljavax/inject/Provider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_6

    :cond_9
    move-object v5, v0

    goto :goto_5
.end method

.method public onConfigChanged([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 477
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    monitor-enter p0

    .line 481
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 482
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mGatekeeperStoreLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperStore;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/gk/store/GatekeeperStore;->refreshSessionState(Z)V

    .line 485
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEpConfigChanged([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 375
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    .line 378
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_3
    new-instance v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;

    invoke-direct {v8}, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;-><init>()V

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;->metadata:Landroid/util/SparseArray;

    .line 386
    array-length v9, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_c

    aget-object v0, p1, v7

    .line 387
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 388
    array-length v0, v5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 386
    :cond_4
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 391
    :cond_5
    const/4 v0, 0x0

    aget-object v1, v5, v0

    .line 392
    const/4 v0, -0x1

    .line 393
    const-string v2, "\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 396
    :goto_3
    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    .line 400
    const/4 v0, 0x1

    aget-object v1, v5, v0

    .line 401
    const/4 v2, -0x1

    .line 402
    const/4 v0, 0x2

    aget-object v0, v5, v0

    .line 403
    const-string v3, "\\d+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 406
    :cond_6
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    .line 410
    const/4 v0, 0x3

    aget-object v0, v5, v0

    .line 411
    const/4 v3, 0x0

    .line 412
    const-string v4, "\\d+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_4
    move v3, v0

    .line 416
    :cond_7
    const/4 v0, 0x4

    aget-object v0, v5, v0

    .line 417
    const/4 v4, -0x1

    .line 418
    const-string v10, "\\d+"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 421
    :cond_8
    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    .line 425
    const/4 v0, 0x5

    aget-object v0, v5, v0

    .line 426
    const/4 v5, 0x0

    .line 427
    const-string v10, "\\d+"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_5
    move v5, v0

    .line 431
    :cond_9
    new-instance v0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;-><init>(Ljava/lang/String;IZIZ)V

    .line 433
    iget-object v1, v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;->metadata:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 413
    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    .line 428
    :cond_b
    const/4 v0, 0x1

    goto :goto_5

    .line 437
    :cond_c
    array-length v5, p2

    const/4 v0, 0x0

    move v4, v0

    :goto_6
    if-ge v4, v5, :cond_12

    aget-object v0, p2, v4

    .line 438
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 440
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 441
    const/4 v0, -0x1

    .line 442
    const-string v2, "\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 445
    :goto_7
    const/4 v0, -0x1

    if-ne v1, v0, :cond_d

    .line 437
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 450
    :cond_d
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 451
    const/4 v0, 0x1

    :goto_9
    array-length v2, v6

    if-ge v0, v2, :cond_10

    .line 452
    aget-object v9, v6, v0

    .line 453
    const-wide/16 v2, -0x1

    .line 454
    const-string v10, "\\d+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 455
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 457
    :cond_e
    const-wide/16 v10, -0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_f

    .line 451
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 460
    :cond_f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 463
    :cond_10
    iget-object v0, v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;->metadata:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 464
    iget-object v0, v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;->metadata:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;

    iput-object v7, v0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->params:Ljava/util/Set;

    goto :goto_8

    .line 466
    :cond_11
    iget-object v0, v8, Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;->metadata:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    .line 469
    :cond_12
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEpHandler:Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;

    if-eqz v0, :cond_13

    .line 470
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mEpHandler:Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;

    invoke-interface {v0, v8, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;->onEpConfigChanged(Lcom/facebook/mobileconfig/factory/EmergencyPushConfigsList;Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Z

    move-result v0

    goto/16 :goto_0

    .line 472
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    move v1, v0

    goto :goto_7

    :cond_15
    move v6, v0

    goto/16 :goto_3
.end method

.method public declared-synchronized refreshOverridesTable()V
    .locals 3

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 229
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mAllCachedContexts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    .line 230
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    if-eqz v2, :cond_0

    .line 231
    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-virtual {v0, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->refreshOverridesTable(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    instance-of v0, v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mCachedLatestContext:Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->refreshOverridesTable(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public refreshSessionState()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->refreshSessionState(Z)V

    .line 243
    return-void
.end method
