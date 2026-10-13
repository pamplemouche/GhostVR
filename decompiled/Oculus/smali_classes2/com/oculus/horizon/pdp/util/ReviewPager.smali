.class public Lcom/oculus/horizon/pdp/util/ReviewPager;
.super Lcom/oculus/horizon/util/Pager;
.source "ReviewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/util/Pager",
        "<",
        "Lcom/oculus/horizon/api/common/Item$QualityRating;",
        "Ljava/lang/String;",
        "Lcom/oculus/http/core/base/ApiError;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemId:Ljava/lang/String;

.field private mListener:Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;

.field private final mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

.field private final mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/StoreItemMethods;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p5}, Lcom/oculus/horizon/util/Pager;-><init>(I)V

    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mItemId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    .line 34
    iput-object p4, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    .line 35
    iput-object p2, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/util/ReviewPager;Lcom/oculus/horizon/api/common/Item;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/util/ReviewPager;->notifyItem(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/pdp/util/ReviewPager;->onPage(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/util/ReviewPager;->onError(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private getApiFilterOptions()Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    iget-object v5, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->optionString:Ljava/lang/String;

    move-object v0, v1

    .line 84
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    const-string v3, ""

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->data:Ljava/lang/String;

    move-object v3, v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-boolean v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->selected:Z

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v2, v5, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    move-object v0, v2

    :goto_1
    move-object v2, v0

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private notifyItem(Lcom/oculus/horizon/api/common/Item;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mListener:Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mListener:Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;->onItem(Lcom/oculus/horizon/api/common/Item;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic load(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/util/ReviewPager;->load(Ljava/lang/String;I)V

    return-void
.end method

.method protected load(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/oculus/horizon/api/rating/ReviewsRequest;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    iget-object v4, v2, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->optionString:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/util/ReviewPager;->getApiFilterOptions()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/api/rating/ReviewsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableMap;)V

    .line 49
    iget-object v1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    new-instance v2, Lcom/oculus/horizon/pdp/util/ReviewPager$1;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/pdp/util/ReviewPager$1;-><init>(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/pdp/StoreItemMethods;->getReviews(Lcom/oculus/horizon/api/rating/ReviewsRequest;Lretrofit/Callback;)V

    .line 67
    return-void
.end method

.method public setListener(Lcom/oculus/horizon/util/Pager$Listener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/oculus/horizon/util/Pager;->setListener(Lcom/oculus/horizon/util/Pager$Listener;)V

    .line 41
    check-cast p1, Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;

    iput-object p1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager;->mListener:Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;

    .line 42
    return-void
.end method
