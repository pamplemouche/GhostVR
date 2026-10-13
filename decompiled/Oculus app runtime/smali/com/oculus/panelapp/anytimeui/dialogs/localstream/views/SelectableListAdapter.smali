.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;,
        Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;,
        Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;

.field private final mContext:Landroid/content/Context;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    .line 38
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->onItemClicked(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;)V

    return-void
.end method

.method private onItemClicked(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->getItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    .line 162
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    invoke-interface {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$SelectableListCallback;->onItemSelected(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItem()Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 50
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->onBindViewHolder(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;I)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;

    .line 72
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mSelectedItemId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 74
    :goto_0
    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 75
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->setImageResource(I)V

    .line 76
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->setTextPrimary(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->setTextSecondary(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;
    .locals 2

    .line 64
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->local_stream_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
