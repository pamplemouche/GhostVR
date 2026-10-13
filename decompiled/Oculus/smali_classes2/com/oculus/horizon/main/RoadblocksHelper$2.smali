.class Lcom/oculus/horizon/main/RoadblocksHelper$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "RoadblocksHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/RoadblocksHelper;->checkRoadblocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/common/MinimumAppVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/RoadblocksHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/RoadblocksHelper;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$2;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 157
    const-string v0, "Failed to fetch minimum required app version with error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$2;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v1}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$100(Lcom/oculus/horizon/main/RoadblocksHelper;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/MinimumAppVersion;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/main/RoadblocksHelper$2;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v0, p1}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$300(Lcom/oculus/horizon/main/RoadblocksHelper;Lcom/oculus/horizon/api/common/MinimumAppVersion;)V

    .line 153
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lcom/oculus/horizon/api/common/MinimumAppVersion;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/main/RoadblocksHelper$2;->onResponse(Lcom/oculus/horizon/api/common/MinimumAppVersion;)V

    return-void
.end method
