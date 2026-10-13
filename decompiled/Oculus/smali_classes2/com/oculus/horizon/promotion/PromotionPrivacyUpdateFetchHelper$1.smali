.class Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PromotionPrivacyUpdateFetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->doRoadblockPromotionFetch(Lcom/oculus/horizon/promotion/PromotionManager;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

.field final synthetic val$listener:Lcom/oculus/horizon/promotion/PromotionManager;

.field final synthetic val$surfaceId:I

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;Lcom/oculus/horizon/promotion/PromotionManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    iput-object p2, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$listener:Lcom/oculus/horizon/promotion/PromotionManager;

    iput p3, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$surfaceId:I

    iput-object p4, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$trigger:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "Could not check if user has seen activity privacy roadblock. Got error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    invoke-static {v1}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->access$200(Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;)V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User has seen the activity privacy update roadblock [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;->viewer:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$Viewer;->social_settings_info:Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$SocialSettingsInfo;

    iget-boolean v2, v2, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse$SocialSettingsInfo;->has_seen_activity_roadblock:Z

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$listener:Lcom/oculus/horizon/promotion/PromotionManager;

    iget v2, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$surfaceId:I

    iget-object v3, p0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->val$trigger:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->access$100(Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;Lcom/oculus/horizon/promotion/PromotionManager;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper$1;->onResponse(Lcom/oculus/horizon/social/api/HasSeenActivityPrivacyUpdateRoadblockResponse;)V

    return-void
.end method
