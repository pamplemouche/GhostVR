.class public Lcom/oculus/platform/OVRServiceManager;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVRServiceManager$SharedPrefsFBNSKeys;,
        Lcom/oculus/platform/OVRServiceManager$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_ID_KEY:Ljava/lang/String; = "asset_id"

.field private static final ASSET_FILE_NAME_KEY:Ljava/lang/String; = "asset_filename"

.field private static final FROM_PACKAGE_KEY:Ljava/lang/String; = "from_pkg"

.field private static final IAP_COMPONENT_NAME_FLATTEN_KEY:Ljava/lang/String; = "component_name_flatten"

.field private static final IAP_COMPONENT_NAME_KEY:Ljava/lang/String; = "component_name"

.field private static final IAP_RESULT_RECEIVER_KEY:Ljava/lang/String; = "result_receiver"

.field private static final IAP_SKU_KEY:Ljava/lang/String; = "sku"

.field private static final INVITABLE_USERS_RECEIVER_KEY:Ljava/lang/String; = "result_receiver"

.field private static final INVITABLE_USERS_ROOM_KEY:Ljava/lang/String; = "ovr_room_id"

.field private static final LANGUAGE_PACK_TAG_KEY:Ljava/lang/String; = "tag"

.field private static final MAX_FILE_SIZE:I = 0x6400000

.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0xa

.field private static final SHARED_MEMORY_INFO_ID:I = 0x1

.field private static final SHARED_PREFS_PREFIX:Ljava/lang/String; = "OVR_platform_shared_prefs_"

.field private static final SHARE_SERVICE_COMPONENT:Ljava/lang/String; = "com.oculus.vrshell.home.SharedMemoryService"

.field private static final SHELL_HOME_PACKAGE:Ljava/lang/String; = "com.oculus.vrshell.home"

.field private static final SOURCE_KEY:Ljava/lang/String; = "source"

.field private static final SOURCE_SDK_DEEPLINK:Ljava/lang/String; = "sdk_deeplink"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSDKMajorVersion:I

.field private mCurrentSDKMinorVersion:I

.field private final mGameEngine:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<",
            "Lcom/oculus/aidl/OVRMediaServiceInterface;",
            ">;"
        }
    .end annotation
.end field

.field mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<",
            "Lcom/oculus/aidl/OVRServiceInterface;",
            ">;"
        }
    .end annotation
.end field

.field mOVRShareServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/platform/OVRServiceSynchronous",
            "<",
            "Lcom/oculus/aidl/OVRShareServiceInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mLock:Ljava/lang/Object;

    .line 109
    iput v1, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    .line 110
    iput v1, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    .line 118
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager;->mGameEngine:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 121
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 122
    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    .line 124
    iput p5, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    .line 125
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service.OVRService"

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/oculus/platform/OVRServiceManager$1;

    invoke-direct {v5, p0}, Lcom/oculus/platform/OVRServiceManager$1;-><init>(Lcom/oculus/platform/OVRServiceManager;)V

    invoke-direct/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceSynchronous;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 136
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$2;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceManager$2;-><init>(Lcom/oculus/platform/OVRServiceManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->setConnectionStatusListener(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;)V

    .line 147
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/oculus/platform/OVRServiceManager$3;

    invoke-direct {v5, p0}, Lcom/oculus/platform/OVRServiceManager$3;-><init>(Lcom/oculus/platform/OVRServiceManager;)V

    invoke-direct/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceSynchronous;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 158
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "com.oculus.vrshell.home"

    const-string v3, "com.oculus.vrshell.home.SharedMemoryService"

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/oculus/platform/OVRServiceManager$4;

    invoke-direct {v5, p0}, Lcom/oculus/platform/OVRServiceManager$4;-><init>(Lcom/oculus/platform/OVRServiceManager;)V

    invoke-direct/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceSynchronous;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V

    iput-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRShareServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/platform/OVRServiceManager;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    return v0
.end method

.method static synthetic access$1000(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oculus/platform/OVRServiceManager;->getReceiverForIntent(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/platform/OVRServiceManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceManager;->postNewClientReleaseRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->stopOrCancelRecording(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/platform/OVRServiceManager;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/platform/OVRServiceManager;J)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->getDefaultAssetFileArgsBundle(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->postNewClientErrorRunnable(Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceManager;->getDefaultAssetFileArgsBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->postNewClientErrorRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/platform/OVRServiceManager;Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    return-void
.end method

.method private createMediaServiceCommandBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v1, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 1638
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    return-object v0
.end method

.method private deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 3

    .prologue
    .line 1468
    const-string v0, "platform_message_type"

    .line 1469
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform_request_id"

    .line 1470
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oculus/platform/OVRServiceManager$23;

    invoke-direct {v2, p0, v0, p5, p6}, Lcom/oculus/platform/OVRServiceManager$23;-><init>(Lcom/oculus/platform/OVRServiceManager;Landroid/net/Uri;Landroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1505
    return-void
.end method

.method private getDefaultAssetFileArgsBundle(J)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v1, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 493
    const-string v1, "asset_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 494
    return-object v0
.end method

.method private getDefaultAssetFileArgsBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v1, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 503
    const-string v1, "asset_filename"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-object v0
.end method

.method private getFBNSSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OVR_platform_shared_prefs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1869
    if-nez p0, :cond_0

    .line 1870
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Horizon is outdated."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v0, ""

    .line 1886
    :goto_0
    return-object v0

    .line 1874
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1875
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1876
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1878
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1879
    :catch_0
    move-exception v0

    .line 1882
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1883
    const-string v0, ""

    goto :goto_0

    .line 1886
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getReceiverForIntent(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1202
    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1203
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1204
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1206
    return-object v0
.end method

.method private handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$27;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/oculus/platform/OVRServiceManager$27;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1679
    return-void
.end method

.method private launchOverlays(Ljava/lang/String;Landroid/os/Bundle;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 10

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$24;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/oculus/platform/OVRServiceManager$24;-><init>(Lcom/oculus/platform/OVRServiceManager;Landroid/os/Bundle;Ljava/lang/String;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1535
    return-void
.end method

.method private postNewClientErrorRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager$34;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1909
    return-void
.end method

.method private postNewClientErrorRunnable(Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager$33;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1898
    return-void
.end method

.method private postNewClientReleaseRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 2

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$35;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$35;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1918
    return-void
.end method

.method private sendCommandToMediaService(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$26;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$26;-><init>(Lcom/oculus/platform/OVRServiceManager;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1633
    return-void
.end method

.method private stopOrCancelRecording(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1778
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1779
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1780
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 1796
    :goto_0
    return-object v1

    .line 1785
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 1787
    const-string/jumbo v3, "recording_uuid"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v3, "message_type"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRMediaServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1796
    goto :goto_0

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error while sending stop abuse recording command to OVRMediaService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1793
    goto :goto_1
.end method


# virtual methods
.method public assetFileDeleteById(JLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oculus/platform/OVRServiceManager$10;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public assetFileDeleteByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$11;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public assetFileDownloadById(JLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oculus/platform/OVRServiceManager$6;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public assetFileDownloadByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$7;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public assetFileDownloadCancelById(JLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$8;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oculus/platform/OVRServiceManager$8;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method public assetFileDownloadCancelByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$9;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public assetFileList(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$14;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$14;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public assetFileStatusById(JLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$12;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oculus/platform/OVRServiceManager$12;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public assetFileStatusByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$13;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public broadcastLivestreamingSurface(Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$25;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/oculus/platform/OVRServiceManager$25;-><init>(Lcom/oculus/platform/OVRServiceManager;Landroid/view/Surface;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public broadcastPartyChatLocalState(III)V
    .locals 2

    .prologue
    .line 1643
    const-string v0, "broadcast_party_chat_local_state"

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceManager;->createMediaServiceCommandBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1644
    const-string v1, "local_connection_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1645
    const-string v1, "connection_reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1646
    const-string v1, "connection_retries"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1648
    invoke-direct {p0, v0}, Lcom/oculus/platform/OVRServiceManager;->sendCommandToMediaService(Landroid/os/Bundle;)V

    .line 1649
    return-void
.end method

.method public cancelRecording(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager$29;-><init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1738
    return-void
.end method

.method public connectOVRServiceInBackground()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->connectInBackground()V

    .line 172
    return-void
.end method

.method public getAccessTokenSync()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 185
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 186
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 187
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 193
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getBaselineGraphURLSync()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 699
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 700
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_1

    .line 701
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 715
    :cond_0
    :goto_0
    return-object v0

    .line 705
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 707
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getBaseURLEndpoint(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 708
    const-string v1, "base_url_endpoint"

    .line 709
    const-string v1, "base_url_endpoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    const-string v1, "base_url_endpoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 711
    const-string v2, "base_url_endpoint"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloudStorage2UserDirectoryPath(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$17;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$17;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 598
    return-void
.end method

.method public getCurrentAppVersion()I
    .locals 3

    .prologue
    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 605
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 606
    :catch_0
    move-exception v0

    .line 608
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrentMapUuid(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$36;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$36;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1948
    return-void
.end method

.method public getEntitlementCheckBundleSync()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 662
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnectPossiblyMainthread_DO_NOT_USE_OR_YOU_WILL_BE_FIRED()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 663
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_1

    .line 664
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 677
    :cond_0
    :goto_0
    return-object v0

    .line 668
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 670
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getEntitlementCheckBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 671
    if-nez v0, :cond_0

    .line 672
    sget-object v0, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFBNSCredentialsSync(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 767
    if-nez p1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-object v0

    .line 772
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceManager;->getFBNSSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 773
    const-string v2, "connection_key"

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 774
    const-string v4, "connection_secret"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 775
    const-string v5, "device_id"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 781
    const-string v5, "connection_key"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 782
    const-string v2, "connection_secret"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInstalledApplicationsJSONSync()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 821
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 822
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 823
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 824
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 835
    :goto_0
    return-object v0

    .line 830
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 832
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getInstalledVRApplications(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Horizon isn\'t new enough to getInstalledApplications."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getLatestAvailableAppInformation()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 614
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 615
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_1

    .line 616
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 655
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 622
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getLatestAvailableAppInformation(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 624
    if-nez v0, :cond_2

    .line 625
    sget-object v0, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_2
    invoke-static {v0}, Lcom/oculus/platform/util/Util;->isServiceError(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 633
    :try_start_1
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 634
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 636
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 637
    const-string v3, "currentVersion"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v3, "currentVersionCode"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 639
    const-string v1, "latestVersion"

    const-string v3, "latest_version_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v1, "latestVersionCode"

    const-string v3, "latest_version_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 643
    const-string v1, "app_version_information"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 647
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 654
    :catch_1
    move-exception v0

    .line 655
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 648
    :catch_2
    move-exception v0

    .line 650
    :try_start_3
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "An error occurred getting app version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getLivestreamingStatus(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "get_streaming_status"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1579
    return-void
.end method

.method public getPackageName()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 789
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 790
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-object v0
.end method

.method public getSharedMicrophoneData(JI)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1045
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1046
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1047
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1059
    :goto_0
    return-object v0

    .line 1052
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1054
    const-string v2, "microphone_uid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1055
    const-string v2, "max_size"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getSharedMicrophoneData(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling getSharedMicrophoneData()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getSystemVoipDataSync(Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 898
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 899
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 900
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    :goto_0
    return-object v0

    .line 905
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 907
    const-string v2, "include_pcm"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getSystemVoipData(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling getSystemVoipData()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getSystemVoipMicrophoneMutedSync()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 952
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 953
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 954
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 955
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 965
    :goto_0
    return-object v0

    .line 960
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 962
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->getSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling getSystemVoipMicrophoneMutedSync()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 965
    goto :goto_0
.end method

.method public getSystemVoipPassthroughSync()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 916
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 917
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 918
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 919
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 929
    :goto_0
    return v0

    .line 924
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 926
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->getSystemVoipPassthrough(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling getSystemVoipPassthroughSync()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 929
    goto :goto_0
.end method

.method public getSystemVoipStatusSync()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 934
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 935
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 936
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 937
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 947
    :goto_0
    return-object v0

    .line 942
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 944
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->getSystemVoipStatus(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling getSystemVoipStatusSync()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 947
    goto :goto_0
.end method

.method public getUserAgentSync()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 798
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 799
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 800
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/platform/UserAgentBuilder;->newBuilder(Landroid/content/Context;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OVRPlatform/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-virtual {v3, v2}, Lcom/oculus/platform/UserAgentBuilder;->setHttpAgent(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    .line 804
    invoke-virtual {v2, v3}, Lcom/oculus/platform/UserAgentBuilder;->setAppName(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 805
    invoke-virtual {v2, v3}, Lcom/oculus/platform/UserAgentBuilder;->setAppVersion(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 806
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oculus/platform/UserAgentBuilder;->setBuildVersion(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v1

    .line 807
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/platform/UserAgentBuilder;->setLocale(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mGameEngine:Ljava/lang/String;

    .line 808
    invoke-virtual {v1, v2}, Lcom/oculus/platform/UserAgentBuilder;->setEngine(Ljava/lang/String;)Lcom/oculus/platform/UserAgentBuilder;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Lcom/oculus/platform/UserAgentBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 811
    const-string/jumbo v2, "user_agent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-object v0

    .line 812
    :catch_0
    move-exception v0

    .line 814
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getViewerPurchasesDurableCacheJSONSync()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 683
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 684
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 685
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 689
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 691
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->getViewerPurchasesDurableCacheJSON(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public languagePackGetCurrent(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$15;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$15;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public languagePackSetCurrent(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$16;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public launchIAPCheckoutFlow(Ljava/lang/String;JLcom/oculus/platform/callback/OVRStringCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$21;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager$21;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;Landroid/content/ComponentName;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1280
    return-void
.end method

.method public launchInvitableUsersFlow(JLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oculus/platform/OVRServiceManager$22;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method public launchOtherApp(JLjava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 7

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$31;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oculus/platform/OVRServiceManager$31;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1835
    return-void
.end method

.method public launchUserBlockFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const-string v1, "oculus_abuse_prevention_overlays"

    .line 1358
    invoke-static {v0, v1}, Lcom/oculus/platform/GatekeeperFetcher;->checkGatekeeper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1359
    if-eqz v0, :cond_0

    .line 1360
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1361
    const-string/jumbo v0, "user_to_block_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string/jumbo v1, "user_block"

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oculus/platform/OVRServiceManager;->launchOverlays(Ljava/lang/String;Landroid/os/Bundle;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 1381
    :goto_0
    return-void

    .line 1370
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "/system_utilities/user_block/"

    .line 1372
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1373
    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1374
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk_deeplink"

    .line 1375
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p7

    move-object v7, p6

    .line 1370
    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    goto :goto_0
.end method

.method public launchUserFriendRequestFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1450
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "/system_utilities/user_friend_request/"

    .line 1452
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1453
    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1454
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk_deeplink"

    .line 1455
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p7

    move-object v7, p6

    .line 1450
    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    .line 1460
    return-void
.end method

.method public launchUserProfile(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1338
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "/system_utilities/profile/"

    .line 1340
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1341
    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1342
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk_deeplink"

    .line 1343
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p7

    move-object v7, p6

    .line 1338
    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    .line 1348
    return-void
.end method

.method public launchUserReportFlow(JIJLjava/lang/String;Ljava/lang/String;ZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1425
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "/system_utilities/user_report/"

    .line 1426
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1427
    invoke-virtual/range {p10 .. p10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1428
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk_deeplink"

    .line 1429
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "abuse_report_type"

    .line 1430
    invoke-virtual {v0, v1, p7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "prevent_people_chooser"

    .line 1431
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1433
    if-eqz p6, :cond_0

    .line 1434
    const-string/jumbo v0, "recording_uuid"

    invoke-virtual {v2, v0, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p10

    move-object/from16 v7, p9

    .line 1436
    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    .line 1442
    return-void
.end method

.method public launchUserUnblockFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 8

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mContext:Landroid/content/Context;

    const-string v1, "oculus_abuse_prevention_overlays"

    .line 1390
    invoke-static {v0, v1}, Lcom/oculus/platform/GatekeeperFetcher;->checkGatekeeper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1391
    if-eqz v0, :cond_0

    .line 1392
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1393
    const-string/jumbo v0, "user_to_unblock_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string/jumbo v1, "user_unblock"

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oculus/platform/OVRServiceManager;->launchOverlays(Ljava/lang/String;Landroid/os/Bundle;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 1413
    :goto_0
    return-void

    .line 1402
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "/system_utilities/user_unblock/"

    .line 1404
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1405
    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1406
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk_deeplink"

    .line 1407
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-object v6, p7

    move-object v7, p6

    .line 1402
    invoke-direct/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->deeplinkToSystemUtilities(Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    goto :goto_0
.end method

.method public logToMarauder(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/platform/OVRServiceManager$18;-><init>(Lcom/oculus/platform/OVRServiceManager;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public partyChatGetVolume()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1027
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1028
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1029
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1039
    :goto_0
    return-object v0

    .line 1034
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1036
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->partyChatGetVolume(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling partyChatGetVolume()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public partyChatSetVolume(F)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1008
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1009
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1010
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1021
    :goto_0
    return-object v0

    .line 1015
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1017
    const-string/jumbo v2, "volume"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1018
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->partyChatSetVolume(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling partyChatSetVolume()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public pauseLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pause_streaming"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1583
    return-void
.end method

.method public requestMap(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$38;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$38;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2008
    return-void
.end method

.method public resumeLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resume_streaming"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1587
    return-void
.end method

.method public sendProcessToken()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$5;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVRServiceManager$5;-><init>(Lcom/oculus/platform/OVRServiceManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public setFBNSCredentialsSync(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 762
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVRServiceManager;->getFBNSSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 757
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 758
    const-string v1, "connection_key"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 759
    const-string v1, "connection_secret"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 760
    const-string v1, "device_id"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setRichPresence(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$32;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$32;-><init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1866
    return-void
.end method

.method public setSystemVoipMicrophoneMutedSync(I)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 859
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 860
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 861
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 862
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 873
    :goto_0
    return-object v0

    .line 867
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 869
    const-string v2, "microphone_muted"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->setSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling setSystemVoipMicrophoneMuted()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setSystemVoipPassthroughSync(Z)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 841
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 842
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 843
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 854
    :goto_0
    return-object v0

    .line 848
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 850
    const-string v3, "passthrough"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 851
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->setSystemVoipPassthrough(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling setSystemVoipPassthrough()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 854
    goto :goto_0
.end method

.method public setSystemVoipSuppressedSync(Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 879
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 880
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 881
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 892
    :goto_0
    return-object v0

    .line 886
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 888
    const-string/jumbo v2, "suppressed"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 889
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->setSystemVoipSuppressed(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling setSystemVoipSuppressed()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public shareMap(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$37;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/OVRServiceManager$37;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1979
    return-void
.end method

.method public shareMediaToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 11

    .prologue
    .line 1108
    iget-object v10, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oculus/platform/OVRServiceManager$19;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/oculus/platform/OVRServiceManager$19;-><init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1172
    return-void
.end method

.method public sharedMicrophoneGetSocketFD(J)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1065
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1066
    iget-object v2, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v2, :cond_0

    .line 1067
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1078
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v4, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v2, v3, v4}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v2

    .line 1074
    const-string v3, "microphone_uid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1075
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->getSharedMicrophoneSocketFD(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    sget-object v2, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Error calling getSharedMicrophoneSocketFD()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1078
    goto :goto_0
.end method

.method public sharedMicrophoneStop(J)V
    .locals 5

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1084
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1085
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1086
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
    return-void

    .line 1091
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1093
    const-string v2, "microphone_uid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1094
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->sharedMicrophoneStop(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling getSharedMicrophoneData()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLivestream(IILcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1538
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1539
    const-string v1, "audience_selector"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1540
    const-string v1, "microphone_status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1541
    const-string/jumbo v1, "start_streaming"

    invoke-direct {p0, p3, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1542
    return-void
.end method

.method public startPartyChat(J)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 970
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 971
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 972
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 973
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 984
    :goto_0
    return-object v0

    .line 978
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 980
    const-string v2, "party_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 981
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->startPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling startPartyChat()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public startPartyLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "start_party_video_streaming"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method public startRecording(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 3

    .prologue
    .line 1682
    const-string v0, "broadcast_abuse_capture_start"

    .line 1683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1685
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oculus/platform/OVRServiceManager$28;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/platform/OVRServiceManager$28;-><init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1725
    return-void
.end method

.method public stopLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stop_streaming"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1552
    return-void
.end method

.method public stopPartyChat()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 989
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 990
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 991
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 992
    sget-object v0, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1002
    :goto_0
    return-object v0

    .line 997
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMajorVersion:I

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager;->mCurrentSDKMinorVersion:I

    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 999
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->stopPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    sget-object v1, Lcom/oculus/platform/OVRServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Error calling stopPartyChat()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public stopPartyLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stop_party_video_streaming"

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method public stopRecordingAndLaunchReportFlow(JLjava/lang/String;ZIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 12

    .prologue
    .line 1749
    const-string v0, "USER"

    .line 1751
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1752
    :cond_0
    const/4 v6, 0x0

    const-string v7, "USER"

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/oculus/platform/OVRServiceManager;->launchUserReportFlow(JIJLjava/lang/String;Ljava/lang/String;ZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 1774
    :goto_0
    return-void

    .line 1756
    :cond_1
    iget-object v11, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oculus/platform/OVRServiceManager$30;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/oculus/platform/OVRServiceManager$30;-><init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;JIJZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateLivestreamCommentsVisibility(ZLcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1546
    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1547
    const-string/jumbo v1, "update_comments_visibility"

    invoke-direct {p0, p2, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method public updateLivestreamMicStatus(ILcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1566
    const-string v1, "microphone_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1567
    const-string/jumbo v1, "update_microphone_status"

    invoke-direct {p0, p2, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method public updatePlatformContext(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oculus/platform/OVRServiceManager$20;

    invoke-direct {v1, p0, p1}, Lcom/oculus/platform/OVRServiceManager$20;-><init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1197
    return-void
.end method

.method public verifyApplicationLivestreamingAllowed(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 2

    .prologue
    .line 1572
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1573
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string v1, "is_streaming_enabled"

    invoke-direct {p0, p2, v0, v1}, Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1575
    return-void
.end method
