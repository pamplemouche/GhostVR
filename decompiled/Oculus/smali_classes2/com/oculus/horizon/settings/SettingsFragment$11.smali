.class Lcom/oculus/horizon/settings/SettingsFragment$11;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsFragment;->onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$1100(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 397
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;)V
    .locals 1

    .prologue
    .line 387
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;->success:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$1000(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$1100(Lcom/oculus/horizon/settings/SettingsFragment;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/SettingsFragment$11;->onResponse(Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;)V

    return-void
.end method
