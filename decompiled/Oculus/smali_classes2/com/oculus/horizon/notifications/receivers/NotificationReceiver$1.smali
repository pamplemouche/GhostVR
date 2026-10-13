.class Lcom/oculus/horizon/notifications/receivers/NotificationReceiver$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->updateReachabilityChecks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver$1;->this$0:Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutation ChangeReachabilityMutation error: "

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 360
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method
