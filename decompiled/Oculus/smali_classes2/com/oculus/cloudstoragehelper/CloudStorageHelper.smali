.class public Lcom/oculus/cloudstoragehelper/CloudStorageHelper;
.super Ljava/lang/Object;
.source "CloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;,
        Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;,
        Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static run(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oculus.horizon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {p1, v0}, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient;->addToBundle(Landroid/os/Bundle;I)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.cloudstorage2.CloudStorageIntentService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to lookup id for target service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static runConflictResolve(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Start service for conflict resolution."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "work_type"

    sget-object v2, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->RESOLVE_CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-virtual {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "conflict_resolution"

    invoke-virtual {p2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "callback_receiver"

    new-instance v2, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {v2, p3}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V

    .line 81
    invoke-virtual {v2}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->getReceiverForIPC()Landroid/os/ResultReceiver;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-static {p0, v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->run(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public static runLaunchSync(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Start service for a launch sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "work_type"

    sget-object v2, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->LAUNCH_SYNC:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-virtual {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "callback_receiver"

    new-instance v2, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {v2, p2}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V

    .line 63
    invoke-virtual {v2}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->getReceiverForIPC()Landroid/os/ResultReceiver;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-static {p0, v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->run(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
