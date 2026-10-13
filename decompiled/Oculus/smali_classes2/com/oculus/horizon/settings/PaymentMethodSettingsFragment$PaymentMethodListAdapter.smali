.class Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentMethodSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaymentMethodListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/PaymentMethodModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 199
    iput-object p2, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    .line 200
    iput-object p3, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    .line 202
    return-void
.end method

.method private add(Lcom/oculus/horizon/api/common/PaymentMethod;Lcom/oculus/horizon/api/common/PaymentMethod;)V
    .locals 1

    .prologue
    .line 205
    invoke-static {p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->add(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 206
    return-void
.end method

.method private add(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    .line 214
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->onBindViewHolder(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;I)V
    .locals 2

    .prologue
    .line 236
    iget-object v1, p1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/PaymentMethodModel;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 237
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/oculus/horizon/R$layout;->settings_payment_method_view_wrapper:I

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;

    .line 230
    iget-object v1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mPresenter:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    iget-object v2, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/settings/SettingsPaymentMethodView;->setup(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Landroidx/fragment/app/FragmentManager;)V

    .line 231
    new-instance v1, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter$ViewHolder;-><init>(Lcom/oculus/horizon/settings/SettingsPaymentMethodView;)V

    return-object v1
.end method

.method public setPaymentMethods(Ljava/util/List;Lcom/oculus/horizon/api/common/PaymentMethod;)V
    .locals 2
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
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->mDataSet:Ljava/util/List;

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PaymentMethod;

    .line 220
    invoke-direct {p0, v0, p2}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->add(Lcom/oculus/horizon/api/common/PaymentMethod;Lcom/oculus/horizon/api/common/PaymentMethod;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsFragment$PaymentMethodListAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method
