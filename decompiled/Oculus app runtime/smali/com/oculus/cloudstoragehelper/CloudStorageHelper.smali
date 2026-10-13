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
.field public static final EXTRA_KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final EXTRA_KEY_CALLBACK_RECEIVER:Ljava/lang/String; = "callback_receiver"

.field public static final EXTRA_KEY_CONFLICT_RESOLUTION:Ljava/lang/String; = "conflict_resolution"

.field public static final EXTRA_KEY_WORK_TYPE:Ljava/lang/String; = "work_type"

.field private static final TAG:Ljava/lang/String; = "CloudStorageHelper"

.field private static final TARGET_INTENT_SERVICE_CLASS:Ljava/lang/String; = "com.oculus.horizon.cloudstorage2.CloudStorageIntentService"

.field private static final TARGET_SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static run(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.oculus.horizon"

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {p1, v1}, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient;->addToBundle(Landroid/os/Bundle;I)V

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon.cloudstorage2.CloudStorageIntentService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception p0

    .line 92
    sget-object p1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to lookup id for target service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static runConflictResolve(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Start service for conflict resolution."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->RESOLVE_CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "conflict_resolution"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p1, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {p1, p3}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V

    .line 81
    invoke-virtual {p1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->getReceiverForIPC()Landroid/os/ResultReceiver;

    move-result-object p1

    const-string p2, "callback_receiver"

    .line 79
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-static {p0, v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->run(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static runLaunchSync(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V
    .locals 3

    .line 57
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Start service for a launch sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->LAUNCH_SYNC:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {p1, p2}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V

    .line 63
    invoke-virtual {p1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->getReceiverForIPC()Landroid/os/ResultReceiver;

    move-result-object p1

    const-string p2, "callback_receiver"

    .line 61
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-static {p0, v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->run(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
