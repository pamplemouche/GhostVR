.class Lcom/oculus/horizon/service_media/OVRMediaServiceManager$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "OVRMediaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->sendCastNotification(Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/media/CastNotifResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 1185
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed deliver cast notif: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/media/CastNotifResponse;)V
    .locals 3

    .prologue
    .line 1180
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cast notif response: %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1177
    check-cast p1, Lcom/oculus/horizon/api/media/CastNotifResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$2;->onResponse(Lcom/oculus/horizon/api/media/CastNotifResponse;)V

    return-void
.end method
