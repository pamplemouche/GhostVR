.class public Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;
.super Ljava/lang/Object;
.source "RtiGracefulSystemMethodHelper.java"


# static fields
.field public static final NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;


# instance fields
.field private final mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    sput-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporter;)V
    .locals 0
    .param p1    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 44
    return-void
.end method

.method public static build(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;
    .locals 1
    .param p0    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    goto :goto_0
.end method

.method private hasValidFbnsReceiver(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 348
    const-string v0, "com.facebook.services"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.facebook.services.dev"

    .line 349
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 354
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->queryBroadcastReceivers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 358
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 360
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lcom/facebook/annotations/DoNotOptimize;
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to setExact"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    invoke-interface {v1, v2, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "setExact DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_1
    throw v0
.end method

.method public api23_setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/facebook/annotations/DoNotOptimize;
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to setAndAllowWhileIdle"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    invoke-interface {v1, v2, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "setAndAllowWhileIdle DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_1
    throw v0
.end method

.method public api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/facebook/annotations/DoNotOptimize;
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to setExactAndAllowWhileIdle"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    invoke-interface {v1, v2, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "setExactAndAllowWhileIdle DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_1
    throw v0
.end method

.method public cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "cancelAlarm"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "cancelAlarm DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    :cond_1
    throw v0
.end method

.method public getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to getApplicationInfo"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "getApplicationInfo"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 380
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_1
    throw v0
.end method

.method public getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/facebook/rti/common/util/FbnsPackageInfo;
    .locals 5

    .prologue
    .line 306
    new-instance v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;

    invoke-direct {v0, p2}, Lcom/facebook/rti/common/util/FbnsPackageInfo;-><init>(Ljava/lang/String;)V

    .line 308
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 309
    iput-object v1, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 310
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4

    .line 311
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->hasValidFbnsReceiver(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 313
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    sget-object v1, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->INSTALLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v1, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->UNSUPPORTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v1, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 329
    sget-object v1, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->NOT_INSTALLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v1, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    goto :goto_0

    .line 321
    :cond_2
    :try_start_1
    sget-object v1, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->DISABLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v1, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 330
    :catch_1
    move-exception v1

    .line 332
    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "Failed to getPackageInfo"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v2, :cond_3

    .line 334
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v3, "RtiGracefulSystemMethodHelper"

    const-string v4, "getPackageInfo"

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :cond_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-nez v2, :cond_0

    .line 341
    throw v1

    .line 325
    :cond_4
    :try_start_2
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Got null PackageInfo"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public getRunningServices(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 419
    const-string v0, "activity"

    const-class v1, Landroid/app/ActivityManager;

    .line 420
    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 422
    const v1, 0x7fffffff

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 423
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to getRunningServices"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "getRunningServices"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in getting system service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBroadcastReceivers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to queryBroadcastReceivers"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "queryBroadcastReceivers"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    throw v0
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 4
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_1
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to registerReceiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "registerReceiver"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_0
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "registerReceiver DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 192
    :cond_1
    throw v0

    .line 181
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    const/4 v0, 0x1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "Failed to sendBroadcast"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v3, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v4, "sendBroadcast"

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v3, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v4, "sendBroadcast DeadObjectException"

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    :cond_1
    throw v1
.end method

.method public startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 221
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string v3, "Failed to startService"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v3, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v4, "startService SecurityException"

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    :catch_1
    move-exception v1

    .line 229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 233
    throw v1

    .line 234
    :catch_2
    move-exception v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v3, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v4, "startService DeadObjectException"

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_1
    throw v1
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :goto_1
    const-string v1, "RtiGracefulSystemMethodHelper"

    const-string v2, "Failed to unregisterReceiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "unregisterReceiver"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_0
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const-string v2, "RtiGracefulSystemMethodHelper"

    const-string/jumbo v3, "unregisterReceiver DeadObjectException"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 213
    :cond_1
    throw v0

    .line 202
    :catch_2
    move-exception v0

    goto :goto_1
.end method
