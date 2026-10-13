.class public Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReviewSortFilterMenuViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;,
        Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;
    }
.end annotation


# instance fields
.field private mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

.field private mFilterMenuModel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;"
        }
    .end annotation
.end field

.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private mListener:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;

.field private mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

.field private mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    sget v0, Lcom/oculus/horizon/R$id;->sort_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    sget v1, Lcom/oculus/horizon/R$menu;->pdp_review_sort_menu:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setMenuId(I)V

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    sget v1, Lcom/oculus/horizon/R$string;->store_sort_selector_title:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setTitle(I)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->optionString:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v3, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->filter_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    sget v1, Lcom/oculus/horizon/R$menu;->pdp_review_filter_menu:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setMenuId(I)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    sget v1, Lcom/oculus/horizon/R$string;->pdp_review_filter_header:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setTitle(I)V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    return-object p1
.end method

.method static synthetic access$100(I)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getOptionFromMenuId(I)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getFilterMenuModel()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mListener:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getFilterText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    return-object v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getFilterKeyFromMenuItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    return-object v0
.end method

.method private static getFilterKeyFromMenuItem(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/oculus/horizon/R$id;->latest_version:I

    if-ne v0, p0, :cond_0

    .line 171
    sget-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->BINARY_ID:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->optionString:Ljava/lang/String;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getFilterMenuModel()Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-static {v0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 165
    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getFilterText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-boolean v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->selected:Z

    if-eqz v0, :cond_2

    .line 122
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    if-lez v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    .line 127
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$string;->pdp_review_filters_some_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 126
    invoke-static {v0, v3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_2
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_review_filters_none_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static getMenuIdFromOption(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;)I
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$4;->$SwitchMap$com$oculus$horizon$pdp$view$ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->most_helpful:I

    :goto_0
    return v0

    .line 106
    :pswitch_0
    sget v0, Lcom/oculus/horizon/R$id;->most_helpful:I

    goto :goto_0

    .line 108
    :pswitch_1
    sget v0, Lcom/oculus/horizon/R$id;->most_recent:I

    goto :goto_0

    .line 110
    :pswitch_2
    sget v0, Lcom/oculus/horizon/R$id;->most_critical:I

    goto :goto_0

    .line 112
    :pswitch_3
    sget v0, Lcom/oculus/horizon/R$id;->latest_version:I

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getOptionFromMenuId(I)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->most_helpful:I

    if-ne p0, v0, :cond_0

    .line 93
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->most_recent:I

    if-ne p0, v0, :cond_1

    .line 95
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_RECENT:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->most_critical:I

    if-ne p0, v0, :cond_2

    .line 97
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_CRITICAL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private setFilterMenuModel(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)V

    .line 137
    invoke-static {p1, v0}, Lcom/oculus/util/collection/CollectionUtil;->mapValue(Ljava/util/Map;Lcom/oculus/util/collection/CollectionUtil$Predicate;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;)V
    .locals 4

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 79
    iput-object p4, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mListener:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;

    .line 80
    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    .line 81
    invoke-direct {p0, p3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->setFilterMenuModel(Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-boolean v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->selected:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuModel:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getMenuIdFromOption(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setOption(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getMenuIdFromOption(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setOption(I)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->mFilterMenuButton:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-direct {p0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->getFilterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setText(Ljava/lang/String;)V

    .line 89
    return-void
.end method
