.class public Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeU0;


# instance fields
.field public w:J

.field public x:LWT;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    .line 4
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->x:LWT;

    return-void
.end method

.method public static create(J)Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;-><init>(J)V

    return-object v0
.end method

.method private onItemRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, LbU0;

    invoke-direct {v0, p1, p2}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LdU0;

    .line 3
    invoke-interface {p2, v0}, LdU0;->c(LbU0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onItemUpdated(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdU0;

    .line 2
    invoke-interface {v1, p1, p2}, LdU0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onItemsAdded(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdU0;

    .line 3
    invoke-interface {v1, p1}, LdU0;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    return-void
.end method

.method public static onShareInfoAvailable(Lorg/chromium/components/offline_items_collection/ShareCallback;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/offline_items_collection/OfflineItemShareInfo;)V
    .locals 1

    .line 1
    new-instance v0, LbU0;

    invoke-direct {v0, p1, p2}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3}, Lorg/chromium/components/offline_items_collection/ShareCallback;->a(LbU0;Lorg/chromium/components/offline_items_collection/OfflineItemShareInfo;)V

    return-void
.end method

.method public static onVisualsAvailable(Lorg/chromium/components/offline_items_collection/VisualsCallback;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V
    .locals 1

    .line 1
    new-instance v0, LbU0;

    invoke-direct {v0, p1, p2}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p3}, Lorg/chromium/components/offline_items_collection/VisualsCallback;->a(LbU0;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V

    return-void
.end method


# virtual methods
.method public a(ILbU0;)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v5, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v9, p2, LbU0;->a:Ljava/lang/String;

    iget-object v10, p2, LbU0;->b:Ljava/lang/String;

    move-object v7, p0

    move v8, p1

    .line 3
    invoke-static/range {v5 .. v10}, LJ/N;->MXureVYk(JLjava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(LbU0;)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v2, p1, LbU0;->a:Ljava/lang/String;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->MBvrmOCy(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(LbU0;Lorg/chromium/components/offline_items_collection/VisualsCallback;)V
    .locals 6

    .line 10
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v3, p1, LbU0;->a:Ljava/lang/String;

    iget-object v4, p1, LbU0;->b:Ljava/lang/String;

    move-object v2, p0

    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, LJ/N;->MwOuZAaJ(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(LbU0;Z)V
    .locals 11

    .line 7
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 8
    :cond_0
    iget-wide v5, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v8, p1, LbU0;->a:Ljava/lang/String;

    iget-object v9, p1, LbU0;->b:Ljava/lang/String;

    move-object v7, p0

    move v10, p2

    .line 9
    invoke-static/range {v5 .. v10}, LJ/N;->MSy1v2e$(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(LdU0;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(LbU0;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v2, p1, LbU0;->a:Ljava/lang/String;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->Mwk11G0z(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(LbU0;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/components/offline_items_collection/OfflineContentAggregatorBridge;->w:J

    iget-object v2, p1, LbU0;->a:Ljava/lang/String;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->MGbhWq61(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
