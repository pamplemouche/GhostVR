.class public Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreOrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/StoreOrdersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreOrderViewHolder"
.end annotation


# instance fields
.field private mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mItemTextView:Landroid/widget/TextView;

.field private mOptionsButton:Landroid/widget/ImageView;

.field private mPaymentMethodView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

.field private mPurchaseTimeTextView:Landroid/widget/TextView;

.field private mRefundStatusView:Landroid/widget/TextView;

.field private mStoreCreditUsedTextView:Landroid/widget/TextView;

.field private mTotalAmountTextView:Landroid/widget/TextView;

.field private mTotalRow:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 114
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 117
    sget v0, Lcom/oculus/horizon/R$id;->item_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mItemTextView:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/oculus/horizon/R$id;->purchase_time_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPurchaseTimeTextView:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/oculus/horizon/R$id;->options_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mOptionsButton:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/oculus/horizon/R$id;->refund_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mRefundStatusView:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/oculus/horizon/R$id;->total_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mTotalRow:Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lcom/oculus/horizon/R$id;->total_amount_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mTotalAmountTextView:Landroid/widget/TextView;

    .line 124
    sget v0, Lcom/oculus/horizon/R$id;->payment_method_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    .line 126
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_used_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mStoreCreditUsedTextView:Landroid/widget/TextView;

    .line 127
    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mOptionsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private enableRefunds(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)Landroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;",
            ")",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 185
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->refund_status:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->refund_status:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 187
    if-eqz v0, :cond_3

    .line 188
    iget-object v4, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mRefundStatusView:Landroid/widget/TextView;

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mRefundStatusView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    invoke-static {v4}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$000(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    .line 192
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 205
    :goto_1
    return-object v0

    .line 195
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    .line 197
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 198
    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$200(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-nez v0, :cond_2

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->setupOptionsMenuForRejectRefund(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V

    .line 205
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->setupOptionsMenuForRefund(Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private setupOptionsMenuForRefund(Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mOptionsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;-><init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;Lcom/oculus/horizon/api/common/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method private setupOptionsMenuForRejectRefund(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mOptionsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;-><init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public bindModel(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 130
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v1, v1, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 138
    :goto_0
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mItemTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->app_store_item:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->enableRefunds(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)Landroidx/core/util/Pair;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mOptionsButton:Landroid/widget/ImageView;

    iget-object v0, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mRefundStatusView:Landroid/widget/TextView;

    iget-object v0, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->purchase:Lcom/oculus/horizon/api/common/PurchaseDetails;

    .line 147
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/PurchaseDetails;->purchase_time:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "dd MMMM yyyy"

    iget-object v2, v0, Lcom/oculus/horizon/api/common/PurchaseDetails;->purchase_time:Ljava/lang/String;

    .line 149
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/oculus/horizon/util/DateUtils;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPurchaseTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, v0, Lcom/oculus/horizon/api/common/PurchaseDetails;->total:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    .line 154
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->offset_amount:Ljava/lang/String;

    invoke-static {v2}, Lcom/oculus/horizon/util/ProductUtils;->isNonZeroPrice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mTotalRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mTotalAmountTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    invoke-virtual {v1, v5}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    iget-object v2, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;

    .line 160
    invoke-static {v2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V

    .line 169
    :goto_1
    iget-object v0, v0, Lcom/oculus/horizon/api/common/PurchaseDetails;->usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    .line 170
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->offset_amount:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/horizon/util/ProductUtils;->isNonZeroPrice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mStoreCreditUsedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mStoreCreditUsedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 173
    invoke-static {v2}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$000(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->settings_store_credit_used_string:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_1
    :goto_2
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto/16 :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mPaymentMethodView:Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    invoke-virtual {v1, v4}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setVisibility(I)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mTotalRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->mStoreCreditUsedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
