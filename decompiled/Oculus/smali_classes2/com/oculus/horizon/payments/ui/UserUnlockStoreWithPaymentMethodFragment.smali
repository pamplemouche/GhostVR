.class public Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "UserUnlockStoreWithPaymentMethodFragment.java"


# instance fields
.field private mSkipButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->showPaymentMethodActivity()V

    return-void
.end method

.method private showPaymentMethodActivity()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "roadblock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected closeScreen()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 88
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->UNLOCK_STORE_WITH_PAYMENT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->closeScreen()V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/oculus/horizon/R$layout;->user_payment_methods_on_free_purchase_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    .line 78
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_add_payment_to_unlock_content_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    new-instance v1, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment$1;-><init>(Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->skip_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment$2;-><init>(Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
