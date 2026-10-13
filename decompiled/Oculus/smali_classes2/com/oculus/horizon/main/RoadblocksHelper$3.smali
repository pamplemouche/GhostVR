.class Lcom/oculus/horizon/main/RoadblocksHelper$3;
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
        "Lcom/oculus/horizon/social/api/HasSeenNuxResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/RoadblocksHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/RoadblocksHelper;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$3;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 182
    const-string v0, "Could not check if user has seen NUX. Got error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 183
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$3;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v1}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$100(Lcom/oculus/horizon/main/RoadblocksHelper;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/HasSeenNuxResponse;)V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User has seen the social NUX [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/social/api/HasSeenNuxResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/HasSeenNuxResponse$Viewer;->social_settings_info:Lcom/oculus/horizon/social/api/HasSeenNuxResponse$SocialSettingsInfo;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/HasSeenNuxResponse$SocialSettingsInfo;->has_seen_nux_on_android:Ljava/lang/Boolean;

    .line 173
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/main/RoadblocksHelper$3;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v0, p1}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$400(Lcom/oculus/horizon/main/RoadblocksHelper;Lcom/oculus/horizon/social/api/HasSeenNuxResponse;)V

    .line 178
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Lcom/oculus/horizon/social/api/HasSeenNuxResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/main/RoadblocksHelper$3;->onResponse(Lcom/oculus/horizon/social/api/HasSeenNuxResponse;)V

    return-void
.end method
