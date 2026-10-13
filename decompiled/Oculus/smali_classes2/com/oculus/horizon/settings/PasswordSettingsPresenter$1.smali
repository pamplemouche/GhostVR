.class Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PasswordSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->getCallback()Lcom/oculus/http/core/base/ApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/profile/ChangePasswordResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PasswordSettingsPresenter;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->access$100(Lcom/oculus/horizon/settings/PasswordSettingsPresenter;Lcom/oculus/http/core/base/ApiError;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->access$000(Lcom/oculus/horizon/settings/PasswordSettingsPresenter;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;->setLoading(Z)V

    .line 138
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/profile/ChangePasswordResponse;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->access$000(Lcom/oculus/horizon/settings/PasswordSettingsPresenter;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;->finish()V

    .line 132
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/oculus/horizon/api/profile/ChangePasswordResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter$1;->onResponse(Lcom/oculus/horizon/api/profile/ChangePasswordResponse;)V

    return-void
.end method
