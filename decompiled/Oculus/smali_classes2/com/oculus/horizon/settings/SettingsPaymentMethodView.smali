.class public Lcom/oculus/horizon/settings/SettingsPaymentMethodView;
.super Landroid/widget/LinearLayout;
.source "SettingsPaymentMethodView.java"


# instance fields
.field private mDefaultLabel:Landroid/widget/TextView;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mOptionButton:Landroid/widget/ImageView;

.field private mPaymentMethodInfoView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

.field private mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v1, Lcom/oculus/horizon/R$layout;->settings_payment_method_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->payment_method_info:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mPaymentMethodInfoView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->menu_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mOptionButton:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->default_label:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mDefaultLabel:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mOptionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->createAndShowDeleteCardModal(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    return-void
.end method

.method private createAndShowDeleteCardModal(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_delete_payment_method_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->getFormattedInfoAllCaps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_delete_payment_method_description:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_delete_payment_method_dialog_delete_button:I

    new-instance v2, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$2;-><init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 117
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v2, "delete_card_modal_fragment"

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 119
    return-void
.end method

.method private setupMenu(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mOptionButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView$1;-><init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mPaymentMethodInfoView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 97
    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mDefaultLabel:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcom/oculus/horizon/commerce/PaymentMethodModel;->isDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->setupMenu(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setup(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mPaymentMethodSettingsPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    .line 53
    iput-object p2, p0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 54
    return-void
.end method
