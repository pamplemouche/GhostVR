.class public Lcom/oculus/horizon/feedbuilder/FeedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/feedbuilder/FeedViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundViewHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBinderMap:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactoryMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactories:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBoundViewHolders:Ljava/util/Set;

    return-void
.end method

.method private static throwIfUnsupported(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No supported render styles found for feed item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFirstSupportedRenderStyle(Lcom/oculus/horizon/feedbuilder/FeedItem;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/oculus/horizon/feedbuilder/FeedItem;->getRenderStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBinderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/FeedItem;

    .line 85
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getFirstSupportedRenderStyle(Lcom/oculus/horizon/feedbuilder/FeedItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->throwIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactoryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;

    .line 87
    iget-object v1, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->onBindViewHolder(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/FeedItem;

    .line 99
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getFirstSupportedRenderStyle(Lcom/oculus/horizon/feedbuilder/FeedItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->throwIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBinderMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/feedbuilder/FeedViewBinder;

    .line 101
    invoke-interface {v1, p1, v0}, Lcom/oculus/horizon/feedbuilder/FeedViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;

    .line 93
    invoke-interface {v0, p1}, Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;->createViewHolder(Landroid/view/ViewGroup;)Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->onViewRecycled(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;->reset()V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBinderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactories:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mFactories:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public resetBoundViewHolders()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mBoundViewHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;

    .line 117
    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;->reset()V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/oculus/horizon/feedbuilder/FeedUtils;->filter(Lcom/oculus/horizon/feedbuilder/FeedAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->mDataset:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
