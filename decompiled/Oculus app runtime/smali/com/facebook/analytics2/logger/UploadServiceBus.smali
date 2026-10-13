.class Lcom/facebook/analytics2/logger/UploadServiceBus;
.super Ljava/lang/Object;
.source "UploadServiceBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;
    }
.end annotation


# static fields
.field private static final ACTION_JOB_RAN:Ljava/lang/String; = "com.facebook.analytics2.action.UPLOAD_JOB_RAN"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerJobRanReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.analytics2.action.UPLOAD_JOB_RAN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static signalJobRan(Landroid/content/Context;ILjava/lang/String;ZLandroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(ILjava/lang/String;ZLandroid/support/v4/util/SimpleArrayMap;)V

    .line 44
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.facebook.analytics2.action.UPLOAD_JOB_RAN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 47
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static unregisterJobRanReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
