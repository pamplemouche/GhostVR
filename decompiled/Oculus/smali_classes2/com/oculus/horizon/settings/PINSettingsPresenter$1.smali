.class Lcom/oculus/horizon/settings/PINSettingsPresenter$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PINSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PINSettingsPresenter;->onChangePinRequest(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/settings/PINSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PINSettingsPresenter;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/horizon/settings/PINSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->access$100(Lcom/oculus/horizon/settings/PINSettingsPresenter;Lcom/oculus/http/core/base/ApiError;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->access$200(Lcom/oculus/horizon/settings/PINSettingsPresenter;)Lcom/oculus/horizon/settings/PINSettingsPresenter$View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/horizon/settings/PINSettingsPresenter$View;->setLoading(Z)V

    .line 101
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/ChangePinResponse;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->access$000(Lcom/oculus/horizon/settings/PINSettingsPresenter;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 95
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lcom/oculus/horizon/api/profile/ChangePinResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PINSettingsPresenter$1;->onResponse(Lcom/oculus/horizon/api/profile/ChangePinResponse;)V

    return-void
.end method
