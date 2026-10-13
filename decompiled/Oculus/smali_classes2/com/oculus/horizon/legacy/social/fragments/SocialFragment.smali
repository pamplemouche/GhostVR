.class public abstract Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SocialFragment.java"


# instance fields
.field private mAlertDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract destroyViews()V
.end method

.method protected abstract getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end method

.method public hideAlertDialog()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    .line 83
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->init(Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;)V

    .line 33
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->destroyViews()V

    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->hideAlertDialog()V

    .line 58
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->close()V

    .line 60
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 61
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->registerListeners()V

    .line 45
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 73
    return-void
.end method
