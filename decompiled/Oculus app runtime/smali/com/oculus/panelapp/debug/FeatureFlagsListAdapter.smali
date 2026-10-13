.class public Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeatureFlagsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 477
    new-array v0, v0, [Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;>;)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 477
    new-array v0, v0, [Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    .line 426
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->setItems(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>([Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 477
    new-array v0, v0, [Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    .line 422
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->setItems([Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->isNumeric(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)Z

    move-result p0

    return p0
.end method

.method private static isNumeric(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object p0

    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 43
    check-cast p1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->onBindViewHolder(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;I)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$1100(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;
    .locals 2

    .line 433
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/debug/R$layout;->debug_feature_flag_item:I

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 435
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->onViewRecycled(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V
    .locals 1

    .line 446
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->unbind()V

    return-void
.end method

.method public setItems(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;>;)V"
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    new-instance v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    invoke-direct {v2}, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;-><init>()V

    .line 467
    sget-object v3, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->CATEGORY_HEADER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    iput-object v3, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->type:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    .line 468
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    .line 469
    new-instance v3, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;-><init>(Lcom/oculus/panelapp/debug/SettingsIPC;Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 473
    new-array p1, p1, [Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    .line 474
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    return-void
.end method

.method public setItems([Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mItems:[Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    return-void
.end method
