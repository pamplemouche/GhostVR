.class public abstract Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "Nux360BaseFragment.java"

# interfaces
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oculus/horizon/base/OculusBaseFragment;",
        "Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mFragmentHost:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getViewToFocus()Landroid/view/View;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->mFragmentHost:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 76
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onNetworkErrorRetryClicked()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onNetworkErrorCancelClicked()V

    goto :goto_0
.end method

.method protected onNetworkErrorCancelClicked()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getViewToFocus()Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setupToolbar(Landroid/view/View;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method protected setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 41
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v1, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment$1;-><init>(Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected showNetworkErrorDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_retry:I

    .line 58
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 59
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "download_error_modal_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 62
    return-void
.end method

.method protected showUserFacingErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 68
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 69
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 71
    return-void
.end method
