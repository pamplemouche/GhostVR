.class Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "FbnsPushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->onRegistered(Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/push/FbnsPushNotificationHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->this$0:Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

    iput-object p2, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->this$0:Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->access$100(Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    invoke-static {}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Push token Registered."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->this$0:Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

    invoke-virtual {v0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/push/PushTokenSharedPreferencesHelper;->setPushToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return-void
.end method
