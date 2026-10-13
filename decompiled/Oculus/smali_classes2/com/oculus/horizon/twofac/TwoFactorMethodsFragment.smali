.class public Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "TwoFactorMethodsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodAdapter;,
        Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;,
        Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;"
    }
.end annotation


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mErrorText:Landroid/widget/TextView;

.field private mTwoFactorMethodSpinner:Landroid/widget/Spinner;

.field private mTwoFactorMethodsPresenter:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->$ul_$xXXcom_oculus_horizon_twofac_TwoFactorMethodsPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodsPresenter:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodsPresenter:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    return-object v0
.end method

.method private static wrapMethods(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$2;

    invoke-direct {v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$2;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->TWO_FACTOR_METHODS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->twofac_methods_fragment:I

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    sget v0, Lcom/oculus/horizon/R$id;->two_factor_methods:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 93
    sget v0, Lcom/oculus/horizon/R$id;->method_selection_error:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mErrorText:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodsPresenter:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->setView(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;)V

    .line 125
    iput-object v1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 126
    iput-object v1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    .line 127
    iput-object v1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mErrorText:Landroid/widget/TextView;

    .line 128
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 129
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodsPresenter:Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;->setView(Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;)V

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$1;-><init>(Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->setupToolbar(Landroid/view/View;I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMethods(Ljava/util/List;I)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->wrapMethods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 149
    return-void
.end method

.method public showError()V
    .locals 1

    .prologue
    .line 160
    sget v0, Lcom/oculus/horizon/R$string;->common_error_unknown:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->showError(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public showError(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public startLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 135
    return-void
.end method

.method public stopLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mTwoFactorMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method public twoFactorCodeSent(Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {v0, p0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;->twoFactorProceedNext(Landroidx/fragment/app/Fragment;)V

    .line 156
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
