.class Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;
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
    .line 537
    iput-object p1, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;->this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;->val$notificationFBID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 546
    invoke-static {}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in setting notification %s to seen state SEEN_AND_READ: %s"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;->val$notificationFBID:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;->this$0:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->access$100(Lcom/oculus/horizon/notifications/legacy/OculusNotifications;)Lcom/oculus/horizon/notificationsFeed/interfaces/NotificationsFeedManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/notificationsFeed/interfaces/NotificationsFeedManager;->updateCount()V

    .line 541
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 537
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationReadResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$2;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationReadResponse;)V

    return-void
.end method
