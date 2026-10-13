.class Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ConfirmPasswordSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onChangePinRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/profile/ChangePinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->access$500(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;Lcom/oculus/http/core/base/ApiError;)V

    .line 219
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/ChangePinResponse;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->access$300(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->access$400(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 214
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Lcom/oculus/horizon/api/profile/ChangePinResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;->onResponse(Lcom/oculus/horizon/api/profile/ChangePinResponse;)V

    return-void
.end method
