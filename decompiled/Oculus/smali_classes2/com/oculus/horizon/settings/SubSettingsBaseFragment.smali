.class public abstract Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SubSettingsBaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTitleBarTextResourceId()I
.end method

.method protected startFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method protected updateTitleBarText()V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->getTitleBarTextResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 23
    return-void
.end method
