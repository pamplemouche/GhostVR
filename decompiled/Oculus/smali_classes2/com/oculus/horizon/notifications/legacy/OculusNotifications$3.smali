.class Lcom/oculus/horizon/notifications/legacy/OculusNotifications$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "OculusNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->markNotificationRead(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationReadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

.field final synthetic val$notificationFBID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/legacy/OculusNotifications;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$3;->this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$3;->val$notificationFBID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 569
    invoke-static {}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in marking notification %s as read: %s"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$3;->val$notificationFBID:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 562
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$3;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V

    return-void
.end method
