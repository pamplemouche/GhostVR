.class Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;
.super Ljava/lang/Object;
.source "FacebookLiveStreamingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->clearLiveVideoMinutiae()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

.field final synthetic val$graphURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;->this$0:Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

    iput-object p2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;->val$graphURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;->this$0:Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;->val$graphURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager$2;->this$0:Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->access$000(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->access$100(Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    goto :goto_1
.end method
