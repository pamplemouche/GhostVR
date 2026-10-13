.class public Lcom/oculus/horizon/settings/StoreCreditFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "StoreCreditFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mExpiredCreditLabelTextView:Landroid/widget/TextView;

.field private mExpiredCreditsTable:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

.field private mTotalBalanceTextView:Landroid/widget/TextView;

.field private mUnexpiredCreditsTable:Landroid/widget/LinearLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/StoreCreditFragment;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/StoreCreditFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/StoreCreditFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/StoreCreditFragment;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreCreditFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oculus/horizon/settings/StoreCreditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/StoreCreditFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/StoreCreditFragment;Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/StoreCreditFragment;->onPaymentAccountResponse(Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oculus/horizon/settings/StoreCreditFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/StoreCreditFragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->showErrorView()V

    return-void
.end method

.method private onPaymentAccountResponse(Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;)V
    .locals 10

    .prologue
    .line 145
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/PaymentAccountResponse;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v1, v0, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    .line 146
    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->showErrorView()V

    .line 178
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 152
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 154
    iget-object v0, v1, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->subcredits:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;

    .line 155
    iget-object v5, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->expiration_time:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 157
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    new-instance v6, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    iget-object v7, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;-><init>(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 160
    const-string v5, "EXPIRED"

    iget-object v7, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->subcredit_status:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 162
    :cond_2
    const-string v5, "ACTIVE"

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->subcredit_status:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 168
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 170
    new-instance v3, Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v4, v1, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/oculus/horizon/commerce/StoreCreditModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    .line 177
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->setBalanceDetailView()V

    goto :goto_0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v1, Lcom/oculus/horizon/api/commerce/PaymentAccountRequest;

    invoke-direct {v1}, Lcom/oculus/horizon/api/commerce/PaymentAccountRequest;-><init>()V

    new-instance v2, Lcom/oculus/horizon/settings/StoreCreditFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/StoreCreditFragment$1;-><init>(Lcom/oculus/horizon/settings/StoreCreditFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 142
    return-void
.end method

.method private setBalanceDetailView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->showBalanceDetailView()V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mTotalBalanceTextView:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->settings_store_credit_balance_total_string:I

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 184
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/settings/StoreCreditFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditLabelTextView:Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    .line 191
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mUnexpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    :goto_1
    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mUnexpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mUnexpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, v2}, Lcom/oculus/horizon/settings/StoreCreditFragment;->setSubcreditsView(Ljava/util/List;ZLandroid/widget/LinearLayout;)V

    .line 197
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$dimen;->payment_method_item_row_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mStoreCreditModel:Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditsTable:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v6, v1}, Lcom/oculus/horizon/settings/StoreCreditFragment;->setSubcreditsView(Ljava/util/List;ZLandroid/widget/LinearLayout;)V

    goto :goto_1
.end method

.method private setSubcreditsView(Ljava/util/List;ZLandroid/widget/LinearLayout;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;Z",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 215
    const/4 v0, 0x0

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    .line 217
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/oculus/horizon/R$layout;->store_credit_row_item:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 218
    sget v1, Lcom/oculus/horizon/R$id;->value:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 219
    sget v2, Lcom/oculus/horizon/R$id;->expiration_date:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 220
    iget-object v7, v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->formattedAmount:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const-string v7, "dd MMMM yyyy"

    iget-object v0, v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->expirationDate:Ljava/util/Calendar;

    .line 223
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 222
    invoke-static {v7, v8, v9}, Lcom/oculus/horizon/util/DateUtils;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 227
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    :cond_0
    invoke-virtual {p3, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 230
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 231
    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method private showBalanceDetailView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 244
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 250
    return-void
.end method

.method private showLoadingView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 238
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/oculus/horizon/R$string;->settings_store_credit:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_STORE_CREDIT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/StoreCreditFragment;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/oculus/horizon/R$layout;->settings_store_credit_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 111
    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 113
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroy()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 105
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->updateTitleBarText()V

    .line 99
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->refresh()V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->balance_detail_linear_layout:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mBalanceDetailLinearLayout:Landroid/widget/LinearLayout;

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->content_empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->total_balance_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mTotalBalanceTextView:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->unexpired_credits_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mUnexpiredCreditsTable:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->expired_credit_label_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditLabelTextView:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/oculus/horizon/R$id;->expired_credits_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreCreditFragment;->mExpiredCreditsTable:Landroid/widget/LinearLayout;

    .line 87
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreCreditFragment;->showLoadingView()V

    .line 88
    return-void
.end method
