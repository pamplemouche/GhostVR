.class public Lcom/oculus/horizon/remotewipe/RemoteWipeService;
.super Landroid/app/IntentService;
.source "RemoteWipeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;
    }
.end annotation


# static fields
.field private static final REMOTE_WIPE_RETRY_INTERVAL:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lcom/oculus/os/IRemoteWipeCallback;

.field private companion:Lcom/oculus/os/ICompanionServer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final connection:Landroid/content/ServiceConnection;

.field private final lock:Ljava/lang/Object;

.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mRemoteWipeHelper:Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private methods:Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;->$ul_$xXXcom_oculus_horizon_remotewipe_RemoteWipeMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->methods:Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    invoke-static {p0}, Lcom/oculus/logging/utils/UtilsModule;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-static {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;->$ul_$xXXcom_oculus_horizon_remotewipe_RemoteWipeHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mRemoteWipeHelper:Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-class v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->REMOTE_WIPE_RETRY_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;-><init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V

    iput-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    .line 207
    new-instance v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;-><init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V

    iput-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->callback:Lcom/oculus/os/IRemoteWipeCallback;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mRemoteWipeHelper:Lcom/oculus/horizon/remotewipe/RemoteWipeHelper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Lcom/oculus/os/ICompanionServer;)Lcom/oculus/os/ICompanionServer;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/logging/utils/EventMigrationHelper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->methods:Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    return-void
.end method

.method private logWipeError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "oculus_mobile_remote_wipe_fail"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "failureReason"

    .line 227
    invoke-interface {v0, v1, p1}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 229
    return-void
.end method

.method private performRemoteWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    .locals 6

    .prologue
    .line 125
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "performRemoteWipe requester = %s"

    invoke-virtual {p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "Received remote wipe message on non-standalone device"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "not_standalone_device"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->methods:Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    invoke-virtual {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;->ensureWipeRequestPending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "remote wipe requested, but no pending request on server."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "oculus_mobile_remote_wipe_success"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 136
    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "successReason"

    const-string v2, "no_pending_request_on_server"

    .line 137
    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending_request_api_error_type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiException;->getApiError()Lcom/oculus/http/core/base/ApiError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/http/core/base/ApiError;->getType()Lcom/oculus/http/core/base/ApiError$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/http/core/base/ApiError$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiException;->getApiError()Lcom/oculus/http/core/base/ApiError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getType()Lcom/oculus/http/core/base/ApiError$Type;

    move-result-object v0

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V

    goto :goto_0

    .line 150
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 151
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.companion.server"

    const-string v4, "com.oculus.companion.server.CompanionServer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 157
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 158
    sget-object v2, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v3, "companionserver bindService result = %b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 160
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-nez v0, :cond_5

    .line 163
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "failed to bind companionserver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "failed_to_bind_to_companionserver"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_4
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 170
    :catch_1
    move-exception v0

    .line 171
    :try_start_7
    sget-object v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v2, "error during transaction with companionserver"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const-string v0, "remote_exception_on_binder_call"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_8
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 169
    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->callback:Lcom/oculus/os/IRemoteWipeCallback;

    invoke-interface {v0, v1}, Lcom/oculus/os/ICompanionServer;->performRemoteWipe(Lcom/oculus/os/IRemoteWipeCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_a
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-eqz v0, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 174
    :catch_2
    move-exception v0

    .line 175
    :try_start_b
    sget-object v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v2, "interrupted while waiting for companionserver"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    const-string v0, "interrupted_exception_on_bind"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_c
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    :cond_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 179
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_d
    iget-object v2, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->companion:Lcom/oculus/os/ICompanionServer;

    if-eqz v2, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    :cond_8
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0
.end method

.method private retryWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    .locals 4

    .prologue
    .line 107
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "retryWipe called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "oculus_mobile_remote_wipe_retried"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "wipe_requester"

    .line 110
    invoke-virtual {p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 113
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$1;-><init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V

    sget-wide v2, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->REMOTE_WIPE_RETRY_INTERVAL:J

    long-to-int v2, v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/oculus/executors/OculusThreadExecutor;->executeAfterDelay(Ljava/lang/Runnable;I)V

    .line 122
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 28
    invoke-static {p0, p0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V

    .line 81
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 85
    sget-object v0, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v1, "onHandleIntent called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "null_intent"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "remote_wipe_requester"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    if-ne v0, v2, :cond_1

    .line 93
    const-string v0, "intent_missing_requester"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;->values()[Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;

    move-result-object v1

    aget-object v0, v1, v0

    .line 99
    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->performRemoteWipe(Lcom/oculus/horizon/remotewipe/RemoteWipeService$RemoteWipeRequester;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->TAG:Ljava/lang/String;

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const-string v0, "intent_unknown_requester"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->logWipeError(Ljava/lang/String;)V

    goto :goto_0
.end method
