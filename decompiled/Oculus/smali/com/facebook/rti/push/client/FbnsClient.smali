.class public final Lcom/facebook/rti/push/client/FbnsClient;
.super Ljava/lang/Object;
.source "FbnsClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/rti/push/client/FbnsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLoggingIds(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/rti/push/client/FbnsClient;->clearLoggingIds(Landroid/content/Context;Z)V

    .line 383
    return-void
.end method

.method public static clearLoggingIds(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "clearLoggingIds isSameProcess: %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 391
    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 393
    if-eqz p1, :cond_0

    .line 394
    invoke-static {p0, v0}, Lcom/facebook/rti/push/client/FbnsClient;->setSameProcessSharedPrefs(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v1, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-direct {v1, p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance v2, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 399
    invoke-virtual {v3}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->toOperationType()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;-><init>(Landroid/os/Bundle;I)V

    .line 400
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->runAsync([Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V

    goto :goto_0
.end method

.method public static configureAnalytics(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IIIZ)V
    .locals 5

    .prologue
    const/16 v0, 0x2710

    .line 320
    if-eqz p2, :cond_0

    move p6, v0

    .line 330
    :goto_0
    sget-object v1, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v2, "configureAnalytics newHealthSampleRate: %d newAnalyticsSampleRate: %d"

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 334
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 330
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 337
    invoke-static {p6, v1}, Lcom/facebook/rti/push/client/FbnsClient;->configureAnalyticsEventsSampling(ILandroid/os/Bundle;)V

    .line 338
    if-eqz p2, :cond_1

    .line 339
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-virtual {v2, v1, p1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 343
    :goto_1
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-virtual {v2, v1, p3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 344
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 345
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_YEAR_CLASS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 346
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_HEALTH_STATS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 348
    if-eqz p7, :cond_2

    .line 349
    invoke-static {p0, v1}, Lcom/facebook/rti/push/client/FbnsClient;->setSameProcessSharedPrefs(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 357
    :goto_2
    return-void

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v1

    if-nez v1, :cond_3

    move p6, v0

    .line 327
    goto :goto_0

    .line 341
    :cond_1
    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_FB_UID:Lcom/facebook/rti/push/client/SharedPrefKeys;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_1

    .line 351
    :cond_2
    new-instance v0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-direct {v0, p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v2, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    sget-object v3, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->SET_ANALYTICS_CONFIG:Lcom/facebook/rti/push/client/FbnsAIDLOperation;

    .line 354
    invoke-virtual {v3}, Lcom/facebook/rti/push/client/FbnsAIDLOperation;->toOperationType()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;-><init>(Landroid/os/Bundle;I)V

    .line 355
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->runAsync([Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V

    goto :goto_2

    :cond_3
    move v0, p5

    goto :goto_0
.end method

.method private static configureAnalyticsEventsSampling(ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x2710

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 366
    if-ltz p0, :cond_0

    if-le p0, v6, :cond_1

    .line 368
    :cond_0
    sget-object v2, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v3, "Wrong analytics sampling rate: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v0

    .line 373
    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 374
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, p0, :cond_2

    .line 376
    :goto_0
    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOGGING_ANALYTICS_EVENTS_SAMPLE_RATE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 377
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 376
    invoke-virtual {v1, p1, v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 378
    sget-object v1, Lcom/facebook/rti/push/client/SharedPrefKeys;->LOG_ANALYTICS_EVENTS:Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/rti/push/client/SharedPrefKeys;->set(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 379
    return-void

    :cond_2
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public static enableAndInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/rti/push/client/FbnsClient;->enableAndInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 169
    return-void
.end method

.method public static enableAndInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 7
    .param p3    # Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 181
    :goto_0
    invoke-static {v4}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v5, "Orca.START"

    move-object v0, p0

    move-object v2, p1

    move-object v6, p3

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/facebook/rti/push/client/FbnsClient;->initInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 187
    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method

.method private static enableComponent(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 423
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 425
    if-eqz p1, :cond_0

    move v0, v1

    .line 429
    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 431
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "%s is enabled: %b"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static initInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/facebook/rti/push/client/FbnsClient;->initInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V

    .line 127
    return-void
.end method

.method static initInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "initInternal(class=%s, caller=%s, action=%s)"

    invoke-static {v0, v1, p1, p2, p5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/facebook/rti/push/client/FbnsClient;->enableComponent(Landroid/content/Context;ZLjava/lang/String;)V

    .line 143
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    if-eqz p2, :cond_1

    .line 147
    const-string v0, "caller"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_1
    if-eqz p6, :cond_2

    .line 150
    invoke-virtual {p6, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->addToIntent(Landroid/content/Intent;)V

    .line 153
    :cond_2
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->startExplicitSecureService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_3
    return-void
.end method

.method private static isServiceDeclaredAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 435
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 439
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 443
    if-eq v2, v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v5, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/facebook/rti/push/client/FbnsClient;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V

    .line 80
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p0, v3, p3}, Lcom/facebook/rti/push/client/FbnsClient;->enableComponent(Landroid/content/Context;ZLjava/lang/String;)V

    .line 55
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    if-eqz p4, :cond_3

    .line 61
    const-string v1, "local_generation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    :cond_3
    invoke-virtual {p5, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->startExplicitSecureService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start %s"

    invoke-static {v0, v1, p3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_4
    return-void
.end method

.method private static setSameProcessSharedPrefs(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 405
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSameProcessSharedPrefs setting locally for %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 407
    invoke-static {p0, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 409
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    :try_start_0
    const-class v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 413
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getWrapper()Lcom/facebook/rti/push/client/KeyValueWrapper;

    move-result-object v4

    .line 414
    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v5, v1}, Lcom/facebook/rti/push/client/KeyValueWrapper;->bundleToSharedPrefs(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    sget-object v4, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v5, "aidlBundleKey: %s not exist in FbnsAIDLConstants"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v1, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 420
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 195
    :goto_0
    invoke-static {v4}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v5, "Orca.START"

    move-object v0, p0

    move-object v2, p1

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/facebook/rti/push/client/FbnsClient;->initInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 261
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/rti/common/util/PackageInfoUtil;->isFbnsServiceRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip stop(%s) because not running"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "Stopping running FBNS service %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Orca.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    new-instance v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->startExplicitSecureService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 277
    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static stopAndDisable(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {p0, v0}, Lcom/facebook/rti/push/client/FbnsClient;->isServiceDeclaredAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    sget-object v1, Lcom/facebook/rti/push/client/FbnsClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "skip stopAndDisable(%s) because not enabled"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/rti/push/client/FbnsClient;->stop(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/facebook/rti/push/client/FbnsClient;->enableComponent(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/rti/push/client/FbnsClient;->unregister(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static unregister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/rti/push/client/FbnsClient;->unregister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private static unregister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    if-nez p2, :cond_1

    .line 229
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsService;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 231
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    new-instance v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->startExplicitSecureService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    return-void
.end method
