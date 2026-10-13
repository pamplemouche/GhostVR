.class public Lcom/oculus/vrshell/ShellApplication;
.super Landroid/app/Application;
.source "ShellApplication.java"

# interfaces
.implements Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;
.implements Lcom/oculus/vrshell/VrResultReceiver$CompanionPreferencesHolder;
.implements Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/ShellApplication$IVrClient;
    }
.end annotation


# static fields
.field private static final COMPANION_SERVER_PACKAGE:Ljava/lang/String; = "com.oculus.companion.server"

.field private static final COMPANION_SERVER_RESULT_EXTRA:Ljava/lang/String; = "RESULT_RECEIVER"

.field private static final COMPANION_SERVER_SERVICE:Ljava/lang/String; = "com.oculus.companion.server.CompanionService"

.field private static final FEATURE_FLAGS:Ljava/lang/String; = "FEATURE_FLAGS"

.field private static final GET_CAPTURE_STATE_ACTION:Ljava/lang/String; = "com.oculus.horizon.GET_CAPTURE_STATE_ACTION"

.field private static final HORIZON_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field public static final INTENT_KEY_CMD:Ljava/lang/String; = "intent_cmd"

.field public static final INTENT_KEY_FROM_PKG:Ljava/lang/String; = "intent_pkg"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final LOCAL_STREAM_PACKAGE:Ljava/lang/String; = "com.oculus.companion.server"

.field private static final LOCAL_STREAM_PERMISSION:Ljava/lang/String; = "com.oculus.companion.server.permission.SEND_INTENTS"

.field private static final LOGGER_ANALYTICS2_ENABLED:Z = true

.field private static final NOTIFICATION_DATASET_INTENT:Ljava/lang/String; = "com.oculus.vrshell.notifications.aidl.MAIN"

.field private static final NOTIFICATION_DATASET_SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.vrshell"

.field private static final START_LOCAL_STREAMING_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.START_LOCAL_STREAM"

.field private static final START_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.START_CAPTURE_TO_DISK"

.field private static final STOP_LOCAL_STREAMING_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.STOP_LOCAL_STREAM"

.field private static final STOP_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

.field private static final SYSTEM_ROUTES_PACKAGE:Ljava/lang/String; = "com.oculus.systemux"

.field private static final SYSTEM_ROUTES_RESULT_EXTRA:Ljava/lang/String; = "RESULT_RECEIVER"

.field private static final SYSTEM_ROUTES_SERVICE:Ljava/lang/String; = "com.oculus.systemux.SystemUXRoutesService"

.field private static final TAG:Ljava/lang/String;

.field private static sInternalSetSecureMethod:Ljava/lang/reflect/Method;

.field private static sSystemPropertiesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/oculus/vrshell/MainActivity;

.field private mCachedCompanionPrefsSentToNative:[Ljava/lang/String;

.field private mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

.field private final mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

.field private final mCompanionPrefsUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oculus/vrshell/PanelServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterpriseConfig:Lcom/oculus/vrshell/config/EnterpriseConfig;

.field private mErrorReporter:Lcom/facebook/acra/ErrorReporter;

.field private mHandler:Landroid/os/Handler;

.field private mInitializedAnalytics:Z

.field private mIsStandaloneVr:Z

.field private mPanelAppConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/config/PanelAppConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private final mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 95
    const-class v0, Lcom/oculus/vrshell/ShellApplication;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 149
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/ShellApplication;->sSystemPropertiesClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v2, "We were unable to find android.os.SystemProperties class."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/SurfaceView;

    const-string v1, "setSecureImmediate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/ShellApplication;->sInternalSetSecureMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 1507
    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    .line 1509
    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    .line 1512
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 1515
    iput-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    .line 1517
    iput-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mInitializedAnalytics:Z

    .line 1521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mConnectionMap:Ljava/util/Map;

    .line 1522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mPanelAppConfigurationMap:Ljava/util/Map;

    .line 1526
    new-instance v0, Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-direct {v0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    .line 1532
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPrefsUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1535
    new-instance v0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    invoke-direct {v0}, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/ShellApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPrefsUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/ShellApplication;)Lcom/oculus/vrshell/ShellApplication$IVrClient;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    return-object p0
.end method

.method static synthetic access$200(J[Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/ShellApplication;->nativeOnHorizonPrefs(J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/ShellApplication;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/ShellApplication;->nativeOnHttpGetCompleted(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/vrshell/ShellApplication;)Landroid/view/SurfaceView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/vrshell/ShellApplication;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .line 91
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->sInternalSetSecureMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/vrshell/ShellApplication;)Lcom/facebook/acra/ErrorReporter;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/vrshell/ShellApplication;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    return-object p0
.end method

.method private createSystemActivitiesIntentCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1365
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Command"

    .line 1366
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PlatformUIVersion"

    const/4 v1, 0x4

    .line 1367
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ToPackage"

    .line 1368
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1371
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSystemActivitiesIntentCmd JSON Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method private enableJavaCrashReporting()V
    .locals 3

    .line 1295
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "ACRA/OculusCrashReporter for Java crashes enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    new-instance v0, Lcom/oculus/crashreporter/OculusCrashReporter;

    invoke-direct {v0, p0}, Lcom/oculus/crashreporter/OculusCrashReporter;-><init>(Landroid/app/Application;)V

    const-string v1, "1428395623868491"

    .line 1299
    invoke-static {v1}, Lcom/oculus/crashreporter/OculusCrashReporter;->getErrorUploadURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1297
    invoke-static {v0, v1, v2}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    .line 1303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/vrshell/ShellApplication$11;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/ShellApplication$11;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1352
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstalledPackagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1048
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searching installed packages for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1051
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 1053
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not installed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1196
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->sSystemPropertiesClass:Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1198
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 1199
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1201
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString() returning default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private initializeAnalytics()V
    .locals 3

    .line 1268
    new-instance v0, Lcom/oculus/analytics/AnalyticsConfig$Builder;

    invoke-direct {v0}, Lcom/oculus/analytics/AnalyticsConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1270
    invoke-virtual {v0, v1}, Lcom/oculus/analytics/AnalyticsConfig$Builder;->setAnalytics2LoggerEnabled(Z)Lcom/oculus/analytics/AnalyticsConfig$Builder;

    move-result-object v0

    const-string v2, "1428395623868491"

    .line 1271
    invoke-virtual {v0, v2}, Lcom/oculus/analytics/AnalyticsConfig$Builder;->setFbAppId(Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsConfig$Builder;

    move-result-object v0

    const-string v2, "f5edaab8f1624dd0d233446c959d1eda"

    .line 1272
    invoke-virtual {v0, v2}, Lcom/oculus/analytics/AnalyticsConfig$Builder;->setFbAppSecret(Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsConfig$Builder;

    move-result-object v0

    const-class v2, Lcom/oculus/vrshell/VrShellAnalyticsUploader;

    .line 1273
    invoke-virtual {v0, v2}, Lcom/oculus/analytics/AnalyticsConfig$Builder;->setUploader(Ljava/lang/Class;)Lcom/oculus/analytics/AnalyticsConfig$Builder;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Lcom/oculus/analytics/AnalyticsConfig$Builder;->build()Lcom/oculus/analytics/AnalyticsConfig;

    move-result-object v0

    .line 1276
    invoke-static {p0, v0}, Lcom/oculus/analytics/AnalyticsEvent;->init(Landroid/app/Application;Lcom/oculus/analytics/AnalyticsConfig;)V

    .line 1279
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$10;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$10;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    .line 1289
    invoke-static {v0}, Lcom/oculus/analytics/AnalyticsEvent;->addInterceptor(Lcom/oculus/analytics/AnalyticsLoggingInterceptor;)V

    .line 1291
    iput-boolean v1, p0, Lcom/oculus/vrshell/ShellApplication;->mInitializedAnalytics:Z

    return-void
.end method

.method private maybeLaunchFromRecents(Landroid/content/Intent;)Z
    .locals 7

    .line 1381
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityFromRecents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1383
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "startActivityFromRecents"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1384
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1385
    iget-object v2, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x0

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1387
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error launching from recents "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static native nativeBroadcastIntent(J[Ljava/lang/String;)V
.end method

.method private static native nativeOnCompanionServerPrefs(J[Ljava/lang/String;)V
.end method

.method private static native nativeOnHorizonPrefs(J[Ljava/lang/String;)V
.end method

.method private native nativeOnHttpGetCompleted(JLjava/lang/Object;Ljava/lang/String;)V
.end method

.method private static native nativeRegisterRoutes(J[Ljava/lang/String;)V
.end method

.method public static renderText(IILjava/lang/String;)[I
    .locals 9

    .line 794
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 796
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 798
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 801
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/high16 v3, 0x41900000    # 18.0f

    .line 802
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v3, 0x1

    .line 803
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 804
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v3, 0xff

    .line 805
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 807
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 809
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v3, v3

    int-to-float v4, v4

    .line 811
    invoke-virtual {v1, p2, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int p2, p0, p1

    .line 813
    new-array p2, p2, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move v4, p0

    move v7, p0

    move v8, p1

    .line 814
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 816
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method private requestSystemRoutes(Ljava/lang/String;Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;)V
    .locals 2

    .line 1480
    new-instance v0, Lcom/oculus/vrshell/SystemRoutesResultReciever;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/vrshell/SystemRoutesResultReciever;-><init>(Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;Ljava/lang/String;Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;)V

    .line 1483
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1484
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.oculus.systemux"

    const-string v1, "com.oculus.systemux.SystemUXRoutesService"

    .line 1485
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->getAllFlagsAsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "FEATURE_FLAGS"

    .line 1487
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1489
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemRoutesResultReciever;->getCrossPackageReceiver()Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v0, "RESULT_RECEIVER"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1491
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1492
    sget-object p1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string p2, "SystemRoutes intent is sent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startBreakpadManager()V
    .locals 2

    .line 1260
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "Breakpad for Native crashes enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-static {}, Lcom/facebook/breakpadmanager/BreakpadManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    invoke-static {p0}, Lcom/facebook/breakpadmanager/BreakpadManager;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private startServiceWithResultReceiver(Ljava/lang/String;Lcom/oculus/vrshell/VrResultReceiver$Callback;)V
    .locals 2

    .line 1453
    new-instance v0, Lcom/oculus/vrshell/VrResultReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/vrshell/VrResultReceiver;-><init>(Lcom/oculus/vrshell/VrResultReceiver$CompanionPreferencesHolder;Ljava/lang/String;Lcom/oculus/vrshell/VrResultReceiver$Callback;)V

    .line 1455
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1456
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.oculus.companion.server"

    const-string v1, "com.oculus.companion.server.CompanionService"

    .line 1457
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    invoke-virtual {v0}, Lcom/oculus/vrshell/VrResultReceiver;->getCrossPackageReceiver()Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v0, "RESULT_RECEIVER"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1461
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private systemCrashLoggingEnabled()Z
    .locals 3

    .line 1213
    iget-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 1215
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    const-string v2, "crash_reports_enabled"

    .line 1216
    invoke-virtual {v0, v2, v1}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3

    const-string v0, "audio"

    .line 676
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 677
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public broadcastLocalStreamResponseIntent(I)V
    .locals 3

    .line 962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.LOCAL_STREAM_PRIVACY_CHECK.RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "allowed"

    .line 963
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.oculus.companion.server"

    .line 964
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oculus.companion.server.permission.SEND_INTENTS"

    .line 965
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/ShellApplication;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 966
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast intent com.oculus.systemactivities.LOCAL_STREAM_PRIVACY_CHECK.RESPONSE allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public broadcastLocalStreamStartIntent()V
    .locals 4

    .line 945
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 946
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.START_LOCAL_STREAM"

    .line 947
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public broadcastLocalStreamStopIntent()V
    .locals 4

    .line 953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 954
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.STOP_LOCAL_STREAM"

    .line 955
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public doesPackageHaveCloudStorageEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 763
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getCloudStorageStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object p1

    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public doesPackageHaveMetaDataKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 753
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 756
    :catch_0
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get package info for ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public doesPackageHaveUpdate(Ljava/lang/String;)Z
    .locals 0

    .line 768
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->hasUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dumpFeatureFlags()Ljava/lang/String;
    .locals 6

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    invoke-static {}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->values()[Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 898
    invoke-static {p0, v4}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z

    move-result v5

    .line 900
    invoke-virtual {v4}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    .line 901
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    const-string v4, " ON\n"

    goto :goto_1

    :cond_0
    const-string v4, " OFF\n"

    .line 902
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableSafeMode()V
    .locals 3

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "companion.ENABLE_SAFEMODE"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oculus.companion.server"

    const-string v2, "com.oculus.companion.server.CompanionService"

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final finalizeCompanionPreferences()V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->areAllValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->getValuesAsStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/oculus/vrshell/ShellApplication;->mCachedCompanionPrefsSentToNative:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/oculus/vrshell/ShellApplication;->mCachedCompanionPrefsSentToNative:[Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    invoke-interface {v2}, Lcom/oculus/vrshell/ShellApplication$IVrClient;->getAppPtr()J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Lcom/oculus/vrshell/ShellApplication;->nativeOnCompanionServerPrefs(J[Ljava/lang/String;)V

    .line 202
    iput-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCachedCompanionPrefsSentToNative:[Ljava/lang/String;

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->areAllFinal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPrefsUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oculus/vrshell/ShellApplication$1;

    invoke-direct {v2, p0}, Lcom/oculus/vrshell/ShellApplication$1;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalizeSystemRoutesConfiguration()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->getRoutes()[Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    invoke-interface {v2}, Lcom/oculus/vrshell/ShellApplication$IVrClient;->getAppPtr()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/ShellApplication;->nativeRegisterRoutes(J[Ljava/lang/String;)V

    .line 247
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompanionServerPreferences()Lcom/oculus/vrshell/config/CompanionServerPreferences;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    return-object v0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 4

    .line 375
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x2

    .line 376
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s-%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    .line 387
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public getExistingPanelAppConfiguration(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mPanelAppConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/config/PanelAppConfiguration;

    return-object p1
.end method

.method public getFeatureFlag(Ljava/lang/String;)Z
    .locals 3

    .line 934
    invoke-static {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getByName(Ljava/lang/String;)Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    invoke-static {p0, v0}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z

    move-result p1

    return p1

    .line 938
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find feature flag by name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIsStandaloneVr()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    return v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1121
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/vrshell/util/ObbMountHelper;->constructFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "storage"

    .line 1130
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1132
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1133
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1123
    :cond_1
    :goto_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The obb file specified to retrieve the mounted path doesn\'t exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1123
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNativeAppLaunchConfigurationForPackage(Ljava/lang/String;)Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 612
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 615
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 617
    new-instance v2, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;

    invoke-direct {v2}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;-><init>()V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v4, "com.samsung.android.vr.application.mode"

    .line 624
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 623
    :goto_0
    invoke-virtual {v2, v1}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->setIsVrApplication(Z)V

    .line 625
    invoke-virtual {v2}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isVrApplication()Z

    move-result v1

    if-nez v1, :cond_2

    .line 626
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->setIsTvApplication(Z)V

    .line 630
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {v2, p1}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->setLaunchComponent(Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 635
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-virtual {v2, p1}, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->setLaunchComponent(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getPackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 646
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 653
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    .line 655
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 657
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public getPanelAppConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mPanelAppConfigurationMap:Ljava/util/Map;

    .line 668
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    .line 667
    invoke-static {p1, p2, v0, v1, v2}, Lcom/oculus/vrshell/util/PanelAppConfigurationUtil;->buildPanelAppConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/pm/PackageManager;Z)Lcom/oculus/vrshell/config/PanelAppConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 277
    const-class v0, Lcom/oculus/vrshell/MainActivity;

    .line 278
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    sget-object v0, Lcom/oculus/vrshell/config/MainActivityPrefKeys;->NATIVE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object p1

    .line 284
    invoke-static {p0, p1, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getShellPermissions()Lcom/oculus/vrshell/ShellPermissions;
    .locals 8

    .line 431
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/oculus/vrshell/MainActivity;->getShellPermissions()Lcom/oculus/vrshell/ShellPermissions;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    new-instance v0, Lcom/oculus/vrshell/ShellPermissions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oculus/vrshell/ShellPermissions;-><init>(ZZZZZZ)V

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getSystemRoutesConfiguration()Lcom/oculus/vrshell/config/SystemRoutesConfiguration;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    return-object v0
.end method

.method public hasNetworkConnectivity()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 879
    invoke-virtual {p0, v1}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 880
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 883
    :catch_0
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v2, "hasNetworkConnectivity exception: Make sure android.permission.ACCESS_NETWORK_STATE is set in the manifest."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public httpGet(JLjava/lang/String;)V
    .locals 1

    .line 825
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/oculus/vrshell/ShellApplication$5;-><init>(Lcom/oculus/vrshell/ShellApplication;Ljava/lang/String;J)V

    const/4 p1, 0x0

    .line 865
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initLogging()V
    .locals 3

    .line 1235
    invoke-direct {p0}, Lcom/oculus/vrshell/ShellApplication;->systemCrashLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/oculus/vrshell/ShellApplication;->startBreakpadManager()V

    goto :goto_0

    .line 1242
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v2, "Breakpad for Native crashes disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    .line 1247
    invoke-direct {p0}, Lcom/oculus/vrshell/ShellApplication;->enableJavaCrashReporting()V

    goto :goto_1

    .line 1249
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "ACRA/OculusCrashReporter for Java crashes disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_1
    iget-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mInitializedAnalytics:Z

    if-nez v0, :cond_2

    .line 1255
    invoke-direct {p0}, Lcom/oculus/vrshell/ShellApplication;->initializeAnalytics()V

    :cond_2
    return-void
.end method

.method public isInEnterpriseMode()Lcom/oculus/vrshell/config/EnterpriseConfig;
    .locals 2

    .line 1184
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mEnterpriseConfig:Lcom/oculus/vrshell/config/EnterpriseConfig;

    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Lcom/oculus/vrshell/config/EnterpriseConfig;

    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/config/EnterpriseConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mEnterpriseConfig:Lcom/oculus/vrshell/config/EnterpriseConfig;

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mEnterpriseConfig:Lcom/oculus/vrshell/config/EnterpriseConfig;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3

    .line 1104
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/vrshell/util/ObbMountHelper;->constructFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1105
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "storage"

    .line 1113
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1115
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1116
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1106
    :cond_1
    :goto_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The obb file specified to check the mounted state doesn\'t exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 739
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 742
    :catch_0
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get package info for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPrimaryUser()Z
    .locals 1

    const-string v0, "user"

    .line 381
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 382
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    return v0
.end method

.method public logExperimentExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 871
    invoke-static {p1, p2}, Lcom/oculus/analytics/AnalyticsEvent;->logExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mountObb(Ljava/lang/String;)V
    .locals 3

    .line 1079
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/ObbMountHelper;->constructFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1080
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "storage"

    .line 1086
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1088
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1089
    new-instance v2, Lcom/oculus/vrshell/ShellApplication$7;

    invoke-direct {v2, p0}, Lcom/oculus/vrshell/ShellApplication$7;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/storage/StorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z

    return-void

    .line 1081
    :cond_1
    :goto_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The obb file specified to be mounted doesn\'t exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyForegroundPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    if-eqz v0, :cond_0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oc_shell_top_panel"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 783
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.horizon.SET_NEW_PANEL_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oculus.horizon"

    .line 784
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 785
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "service_name"

    .line 786
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyOsSetPanelState(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1002
    iget-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1003
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify OS to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "FOREGROUND"

    goto :goto_0

    :cond_0
    const-string v2, "BACKGROUND"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {}, Lcom/oculus/os/VrApiManager;->getInstance()Lcom/oculus/os/VrApiManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/os/VrApiManager;->setIsForegroundPanelService(ZLjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public notifyPanelAppDestruction(I)V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mConnectionMap:Ljava/util/Map;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/PanelServiceConnection;

    .line 585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 588
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding service for panel app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0, v1}, Lcom/oculus/vrshell/ShellApplication;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 591
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find active binder connection for panel app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 585
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 171
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 176
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/oculus/vrshell/ShellApplication;->notifyOsSetPanelState(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/ShellApplication;->notifyPanelAppDestruction(I)V

    return-void
.end method

.method public requestCaptureState()V
    .locals 4

    .line 1357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1358
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.GET_CAPTURE_STATE_ACTION"

    .line 1359
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestNetworkConnectedStatus()V
    .locals 5

    .line 1062
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "Requesting network connected status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1064
    invoke-virtual {p0, v2, v0}, Lcom/oculus/vrshell/ShellApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1066
    sget-object v2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v3, "Found network connected sticky intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1068
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "networkInfo"

    .line 1069
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1070
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v3, "custom_connected"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    .line 1073
    invoke-interface {v1}, Lcom/oculus/vrshell/ShellApplication$IVrClient;->getAppPtr()J

    move-result-wide v3

    invoke-static {v0, v2}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v3, v4, v0}, Lcom/oculus/vrshell/ShellApplication;->nativeBroadcastIntent(J[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public requestPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/MainActivity;->requestPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetAllFeatureFlags()V
    .locals 0

    .line 910
    invoke-static {p0}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->resetAllFeatureFlags(Landroid/content/Context;)V

    return-void
.end method

.method public sendApkPanelLaunchIntent(Ljava/lang/String;Ljava/lang/String;ILandroid/view/Surface;Ljava/util/HashMap;I[Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    iget-object v4, v12, Lcom/oculus/vrshell/ShellApplication;->mPanelAppConfigurationMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/oculus/vrshell/config/PanelAppConfiguration;

    const/4 v13, 0x0

    .line 472
    :try_start_0
    invoke-virtual {v5}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->isValidService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendApkPanelLaunchIntent unable to find a compliant service intent for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v5}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 480
    :cond_0
    sget-object v3, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v4, "sendApkPanelLaunchIntent: packageName=%s, serviceClassName=%s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v13

    const/4 v14, 0x1

    aput-object v1, v7, v14

    .line 482
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 489
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 498
    array-length v0, v2

    rem-int/2addr v0, v6

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 505
    :goto_0
    array-length v1, v2

    sub-int/2addr v1, v14

    if-ge v0, v1, :cond_2

    .line 506
    aget-object v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 507
    aget-object v3, v2, v3

    .line 513
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate key name found in environment. Key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with values \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Unable to continue launching the panel app."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_2
    new-instance v0, Lcom/oculus/vrshell/PanelServiceConnection;

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/ShellApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v1, v12, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    .line 537
    invoke-interface {v1}, Lcom/oculus/vrshell/ShellApplication$IVrClient;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    move-object v1, v0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v8, p0

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/oculus/vrshell/PanelServiceConnection;-><init>(ILandroid/view/Surface;Ljava/util/HashMap;Lcom/oculus/vrshell/config/PanelAppConfiguration;ILandroid/os/Bundle;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/os/IBinder;Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;)V

    .line 543
    iget-object v1, v12, Lcom/oculus/vrshell/ShellApplication;->mConnectionMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    sget-object v2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v12, v15, v0, v14}, Lcom/oculus/vrshell/ShellApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 546
    iget-object v2, v12, Lcom/oculus/vrshell/ShellApplication;->mConnectionMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    monitor-exit v1

    return v14

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 501
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Environment strings are malformed. Not all keys are paired with values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 549
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v2, "sendApkPanelLaunchIntent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13
.end method

.method public sendLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "startActivity "

    .line 683
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLaunchIntent: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' command: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 693
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 697
    sget-object p1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string p2, "sendLaunchIntent: null destination activity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v3, "intent_cmd"

    .line 701
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent_pkg"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 705
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 706
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    iget-boolean v3, p0, Lcom/oculus/vrshell/ShellApplication;->mIsStandaloneVr:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_5

    if-eqz v1, :cond_4

    .line 712
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 714
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, p1

    .line 716
    :goto_2
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/ShellApplication;->maybeLaunchFromRecents(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v4

    .line 724
    :cond_5
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/ShellApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 730
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLaunchIntent threw exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 728
    :catch_1
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v2
.end method

.method public sendNotifyExitToShell(Ljava/lang/String;)V
    .locals 4

    .line 337
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/ShellApplication;->getPackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.system_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onReceive()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "exitToHome"

    .line 345
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/ShellApplication;->createSystemActivitiesIntentCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_cmd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "returnToLauncher"

    .line 351
    invoke-direct {p0, v1, p1}, Lcom/oculus/vrshell/ShellApplication;->createSystemActivitiesIntentCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent exit broadcast to SystemActivities for:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendStartVideoCaptureIntent()V
    .locals 4

    .line 558
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 559
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.START_CAPTURE_TO_DISK"

    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/oculus/vrshell/MainActivity;

    .line 562
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":sendStartVideoCaptureIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v0, p0, v1}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 564
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStartVideoCaptureIntent(): sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendStopVideoCaptureIntent()V
    .locals 4

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/oculus/vrshell/MainActivity;

    .line 573
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":sendStopVideoCaptureIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v0, p0, v1}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 575
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "sendStopVideoCaptureIntent: sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActivityContext(Lcom/oculus/vrshell/MainActivity;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    .line 256
    iget-object p1, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    if-eqz p1, :cond_0

    .line 257
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSurfaceView:Landroid/view/SurfaceView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication;->mSurfaceView:Landroid/view/SurfaceView;

    :goto_0
    return-void
.end method

.method public setBreakpadSetFatalMsg(Ljava/lang/String;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    if-eqz v0, :cond_0

    const-string v1, "oc_shell_custom_fatal_msg"

    .line 425
    invoke-virtual {v0, v1, p1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDeviceLocale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 361
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Locale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "companion.LOCALE"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oculus.companion.server"

    const-string v2, "com.oculus.companion.server.CompanionService"

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LANGUAGE"

    .line 367
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COUNTRY"

    .line 368
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/ShellApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public setFeatureFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 916
    invoke-static {p1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->getByName(Ljava/lang/String;)Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    :try_start_0
    invoke-static {p2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->buildFeatureFlagValue(Ljava/lang/String;)Z

    move-result v1

    .line 920
    invoke-static {p0, v0, v1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->setFeatureFlag(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 922
    sget-object v1, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "Cannot set new value % s to feature flag %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    throw v0

    .line 926
    :cond_0
    sget-object p2, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find feature flag by name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setGuardianPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1019
    invoke-static {p1}, Lcom/oculus/vrshell/util/GuardianUtil;->createGuardianPrefKey(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)V

    return-void
.end method

.method public setHorizonPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 410
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/vrshell/ShellApplication$3;-><init>(Lcom/oculus/vrshell/ShellApplication;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 418
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setPreferenceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 291
    const-class v0, Lcom/oculus/vrshell/MainActivity;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    sget-object v0, Lcom/oculus/vrshell/config/MainActivityPrefKeys;->NATIVE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object p1

    .line 300
    invoke-static {p0, p1, p2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putString(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Ljava/lang/String;)V

    return-void
.end method

.method public setSurfaceSecureFlag(Z)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/vrshell/ShellApplication$6;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/ShellApplication$6;-><init>(Lcom/oculus/vrshell/ShellApplication;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVrClient(Lcom/oculus/vrshell/ShellApplication$IVrClient;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication;->mClient:Lcom/oculus/vrshell/ShellApplication$IVrClient;

    return-void
.end method

.method public showRsapiVersionMismatchWarning()V
    .locals 16

    .line 1024
    sget-object v10, Lcom/oculus/notifications/NotificationsDisplayDuration;->LONG:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const-string v1, "VrDriver Mismatch"

    const-string v2, "Your version of VrDriver is out of date. Certain features will be disabled until you update to the latest version."

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f060118

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v15}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/oculus/vrshell/MainActivity;->shutdown()V

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mActivity:Lcom/oculus/vrshell/MainActivity;

    :cond_0
    return-void
.end method

.method public startPackageUpdate(Ljava/lang/String;)V
    .locals 0

    .line 773
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->startUpdate(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public suppressToasts()V
    .locals 4

    .line 1138
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$8;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$8;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    .line 1153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.notifications.aidl.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oculus.vrshell"

    .line 1155
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public testBreakpadJavaCrash()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/vrshell/ShellApplication$4;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/ShellApplication$4;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unsuppressToasts()V
    .locals 4

    .line 1161
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$9;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$9;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    .line 1176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.notifications.aidl.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oculus.vrshell"

    .line 1178
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public updateCompanionServerPrefs()V
    .locals 6

    .line 1395
    sget-object v0, Lcom/oculus/vrshell/ShellApplication;->TAG:Ljava/lang/String;

    const-string v1, "Updating companion server prefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    monitor-enter v0

    .line 1403
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v1}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isVrReadyFinal()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1404
    :goto_0
    iget-object v4, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v4}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxCompleteFinal()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1405
    :goto_1
    iget-object v5, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    invoke-virtual {v5}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxFlowFinal()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1406
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 1409
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$12;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$12;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const-string v1, "companion.VR_READY_STATUS"

    invoke-direct {p0, v1, v0}, Lcom/oculus/vrshell/ShellApplication;->startServiceWithResultReceiver(Ljava/lang/String;Lcom/oculus/vrshell/VrResultReceiver$Callback;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 1421
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$13;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$13;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const-string v1, "companion.NUX_STATUS"

    invoke-direct {p0, v1, v0}, Lcom/oculus/vrshell/ShellApplication;->startServiceWithResultReceiver(Ljava/lang/String;Lcom/oculus/vrshell/VrResultReceiver$Callback;)V

    :cond_4
    if-eqz v2, :cond_6

    const-string v0, "com.oculus.companion.server"

    const-string v1, "com.oculus.companionserver.supports_nux_flow"

    .line 1434
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/ShellApplication;->doesPackageHaveMetaDataKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1436
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$14;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$14;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const-string v1, "companion.NUX_FLOW"

    invoke-direct {p0, v1, v0}, Lcom/oculus/vrshell/ShellApplication;->startServiceWithResultReceiver(Ljava/lang/String;Lcom/oculus/vrshell/VrResultReceiver$Callback;)V

    goto :goto_3

    .line 1446
    :cond_5
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mCompanionPreferences:Lcom/oculus/vrshell/config/CompanionServerPreferences;

    const-string v1, "TWILIGHT"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->setNuxFlow(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void

    :catchall_0
    move-exception v1

    .line 1406
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateHorizonPrefs()V
    .locals 2

    .line 394
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$2;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$2;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const/4 v1, 0x0

    .line 403
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateOculusUserId(Ljava/lang/String;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    if-eqz v0, :cond_0

    const-string v1, "oc_user_id"

    .line 307
    invoke-virtual {v0, v1, p1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/oculus/analytics/AnalyticsEvent;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public updateSafeModeProgress()V
    .locals 0

    return-void
.end method

.method public updateSystemRoutes()V
    .locals 2

    .line 1465
    iget-object v0, p0, Lcom/oculus/vrshell/ShellApplication;->mSystemRoutesConfiguration:Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    invoke-virtual {v0}, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Lcom/oculus/vrshell/ShellApplication$15;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/ShellApplication$15;-><init>(Lcom/oculus/vrshell/ShellApplication;)V

    const-string v1, "com.oculus.systemux.routes.aidl.MAIN"

    invoke-direct {p0, v1, v0}, Lcom/oculus/vrshell/ShellApplication;->requestSystemRoutes(Ljava/lang/String;Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;)V

    :cond_0
    return-void
.end method
