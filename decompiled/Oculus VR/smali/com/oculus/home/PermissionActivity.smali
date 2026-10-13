.class public Lcom/oculus/home/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final acceptedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mVRUtils:Lcom/oculus/util/vr/VRUtils;

.field private requestID:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/oculus/home/PermissionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/home/PermissionActivity;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oculus/home/PermissionActivity;->acceptedPermissions:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/home/PermissionActivity;->requestID:J

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/oculus/util/vr/VRUtils;

    invoke-direct {v0, p0}, Lcom/oculus/util/vr/VRUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/home/PermissionActivity;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    .line 49
    iget-object v0, p0, Lcom/oculus/home/PermissionActivity;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    invoke-virtual {v0}, Lcom/oculus/util/vr/VRUtils;->isVRModeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/oculus/home/PermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Not in VR mode. Finishing"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->finish()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requested_permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    sget-object v0, Lcom/oculus/home/PermissionActivity;->acceptedPermissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permission passed to PermissionActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    sget-object v0, Lcom/oculus/home/PermissionActivity;->TAG:Ljava/lang/String;

    const-string v2, "Requesting permission %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "platform_request_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/home/PermissionActivity;->requestID:J

    .line 66
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "platform_action_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_4

    const-string v0, "com.oculus.horizon_permission_change"

    :cond_4
    iput-object v0, p0, Lcom/oculus/home/PermissionActivity;->mActionName:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/oculus/home/PermissionActivity;->TAG:Ljava/lang/String;

    const-string v2, "PermissionActivity invoked with requestId %d, action %s"

    iget-wide v4, p0, Lcom/oculus/home/PermissionActivity;->requestID:J

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/home/PermissionActivity;->mActionName:Ljava/lang/String;

    .line 68
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0, v6}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/oculus/home/PermissionActivity;->setIntent(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 77
    array-length v0, p3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->finish()V

    .line 101
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/oculus/home/PermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Received permission result for %s = %s"

    aget-object v2, p2, v4

    aget v3, p3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    aget v0, p3, v4

    if-nez v0, :cond_1

    .line 86
    const-string v0, "granted"

    .line 95
    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/home/PermissionActivity;->mActionName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v2, "platform_request_id"

    iget-wide v4, p0, Lcom/oculus/home/PermissionActivity;->requestID:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    const-string v2, "permission_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/oculus/home/PermissionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/oculus/home/PermissionActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_1
    aget-object v0, p2, v4

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "denied"

    goto :goto_1

    .line 91
    :cond_2
    const-string v0, "blocked"

    goto :goto_1
.end method
