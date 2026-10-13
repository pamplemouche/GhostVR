.class Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "InternalSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment$8;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v0, v0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$300(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v1, v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    sget v2, Lcom/oculus/horizon/R$string;->reset_activity_privacy_roadblock_failed:I

    .line 273
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to reset Activity privacy roadblock"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 257
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v0, v0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenActivityPrivacyUpdateRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v0, v0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$600(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    move-result-object v0

    const/16 v1, 0x1334

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;->invalidateCacheForSurface(I)V

    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v0, v0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$300(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsFragment$8;

    iget-object v1, v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    sget v2, Lcom/oculus/horizon/R$string;->reset_activity_privacy_roadblock_succeeded:I

    .line 267
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 268
    return-void
.end method
