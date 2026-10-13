.class Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "InternalSettingsQuickPromotionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: "

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;->this$1:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;

    iget-object v0, v0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->access$100(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenNewLibrary(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 76
    return-void
.end method
