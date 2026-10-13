.class Lcom/oculus/horizon/util/permissions/PermissionRequest$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PermissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/util/permissions/PermissionRequest;->requestPermission(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/util/permissions/PermissionRequest;

.field final synthetic val$requestId:J


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/util/permissions/PermissionRequest;[Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->this$0:Lcom/oculus/horizon/util/permissions/PermissionRequest;

    iput-wide p3, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->val$requestId:J

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 8

    .prologue
    .line 62
    const-string v0, "platform_request_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 63
    const-string v0, "permission_status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/oculus/horizon/util/permissions/PermissionRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v4, "permission status %s recieved for reqeustId %d, called with requestId %d"

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->val$requestId:J

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 64
    invoke-static {v1, v4, v0, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-wide v4, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->val$requestId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->this$0:Lcom/oculus/horizon/util/permissions/PermissionRequest;

    invoke-static {v1}, Lcom/oculus/horizon/util/permissions/PermissionRequest;->access$100(Lcom/oculus/horizon/util/permissions/PermissionRequest;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    iget-object v1, p0, Lcom/oculus/horizon/util/permissions/PermissionRequest$1;->this$0:Lcom/oculus/horizon/util/permissions/PermissionRequest;

    invoke-static {v1}, Lcom/oculus/horizon/util/permissions/PermissionRequest;->access$200(Lcom/oculus/horizon/util/permissions/PermissionRequest;)Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v4, "granted"

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 73
    :goto_0
    invoke-interface {v1, v0, v2, v3}, Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;->onPermissionResult(ZJ)V

    .line 77
    :cond_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
