.class public Lcom/oculus/horizon/settings/StoreOrdersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StoreOrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final REFUND_STATUS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLibraryCreationTimestamp:J

.field private final mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

.field private final mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-class v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "SCHEDULED"

    sget v2, Lcom/oculus/horizon/R$string;->commerce_request_refund_status_scheduled:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->oculus_blue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "GRANTED"

    sget v2, Lcom/oculus/horizon/R$string;->commerce_request_refund_status_granted:I

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "REJECTED"

    sget v2, Lcom/oculus/horizon/R$string;->commerce_request_refund_status_rejected:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->oculus_red:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->REFUND_STATUS_MAP:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/oculus/libraryapi/OVRLibraryInternal;Ljava/util/List;Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;",
            ">;",
            "Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    invoke-static {}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->getInstance()Lcom/oculus/horizon/payments/events/CommerceEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    .line 71
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mOrders:Ljava/util/List;

    .line 75
    invoke-virtual {p5}, Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;->getLibraryCreationTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mLibraryCreationTimestamp:J

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->REFUND_STATUS_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mLibraryCreationTimestamp:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Lcom/oculus/horizon/payments/events/CommerceEventBus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->bindModel(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V

    .line 92
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/oculus/horizon/R$layout;->settings_order_row_item:I

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;-><init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter;Landroid/view/View;)V

    return-object v0
.end method
