.class public Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "PaymentMethodSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

.field private mAddCreditCardHint:Landroid/view/View;

.field private mAddPaymentMethodView:Landroid/view/View;

.field private mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->$ul_$xXXcom_oculus_horizon_settings_PaymentMethodSettingsPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentForUICallback()Lcom/oculus/horizon/base/OculusBaseFragment;
    .locals 0

    .prologue
    .line 172
    return-object p0
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/oculus/horizon/R$string;->settings_payment_method:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_MANAGE_PAYMENT_METHOD:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->setView(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 53
    sget v0, Lcom/oculus/horizon/R$layout;->settings_payment_method_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    new-instance v0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAdapter:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

    .line 58
    sget v0, Lcom/oculus/horizon/R$id;->payment_methods_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$1;

    .line 60
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAdapter:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onDestroy()V

    .line 110
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onPause()V

    .line 104
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->updateTitleBarText()V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onResume()V

    .line 99
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->add_credit_card_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddCreditCardHint:Landroid/view/View;

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->content_empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->add_payment_method:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setPaymentMethods(Ljava/util/List;Lcom/oculus/horizon/api/common/PaymentMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PaymentMethod;",
            ">;",
            "Lcom/oculus/horizon/api/common/PaymentMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAdapter:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->setPaymentMethods(Ljava/util/List;Lcom/oculus/horizon/api/common/PaymentMethod;)V

    .line 168
    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAdapter:Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->clear()V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddCreditCardHint:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddCreditCardHint:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public showErrorToast(I)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method

.method public showErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddCreditCardHint:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public showLoadingView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public showPaymentMethodView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddPaymentMethodView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mAddCreditCardHint:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;->mPaymentMethodsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 157
    return-void
.end method
