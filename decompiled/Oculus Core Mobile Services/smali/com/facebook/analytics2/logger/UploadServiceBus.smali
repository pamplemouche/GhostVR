.class Lcom/facebook/analytics2/logger/UploadServiceBus;
.super Ljava/lang/Object;
.source "UploadServiceBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBroadcastAuthToken(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.analytics2.action.UPLOAD_JOB_RAN.token"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    :try_start_0
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 82
    :catch_0
    move-exception v2

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 90
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 93
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 98
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v4, :cond_0

    .line 99
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 104
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s, ctx_pm=%s, uid=%d, uid_pn=%s, calling_uid=%d, calling_uid_pn=%s, pi_pn=%s"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v3, 0x2

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x3

    aput-object v5, v9, v3

    const/4 v3, 0x4

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x5

    aput-object v7, v9, v3

    const/4 v3, 0x6

    aput-object v0, v9, v3

    .line 105
    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static registerJobRanReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.analytics2.action.UPLOAD_JOB_RAN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method public static signalJobRan(Landroid/content/Context;ILjava/lang/String;ZLandroidx/collection/SimpleArrayMap;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(ILjava/lang/String;ZLandroidx/collection/SimpleArrayMap;)V

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.analytics2.action.UPLOAD_JOB_RAN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uploader_service_broadcast_auth_token"

    .line 58
    invoke-static {p0}, Lcom/facebook/analytics2/logger/UploadServiceBus;->createBroadcastAuthToken(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 65
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_0
    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "UploadServiceBus"

    const-string v2, "Failed to send broadcast. Handler may have died"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_1
    throw v1
.end method
