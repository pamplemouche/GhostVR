.class public Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;
.super Landroidx/mediarouter/media/MediaRouter$RouteGroup;
.source "MediaRouter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicGroupInfo"
.end annotation


# instance fields
.field mController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field private mGroupableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;)V
    .locals 1
    .param p4    # Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1735
    invoke-direct {p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouter$RouteGroup;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mUnselectableRoutes:Ljava/util/List;

    .line 1729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mGroupableRoutes:Ljava/util/List;

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mTransferableRoutes:Ljava/util/List;

    .line 1736
    iput-object p4, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 1737
    return-void
.end method


# virtual methods
.method findRouteByDynamicRouteDescriptor(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 1798
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getRouteDescriptor()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1794
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    return-object v0
.end method

.method public getGroupableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1782
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mGroupableRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransferableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1786
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnselectableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1778
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mUnselectableRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptors(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1741
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1742
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mUnselectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1743
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mGroupableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1744
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1745
    const/4 v0, 0x0

    .line 1748
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 1749
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->findRouteByDynamicRouteDescriptor(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 1750
    if-eqz v3, :cond_0

    .line 1753
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getSelectionState()I

    move-result v4

    .line 1754
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 1755
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v4

    iput v4, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSelectionState:I

    .line 1756
    or-int/lit8 v1, v1, 0x1

    .line 1758
    :cond_1
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isGroupable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1759
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mGroupableRoutes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_2
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isTransferable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1762
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    :cond_3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1765
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1767
    :cond_4
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isUnselectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->mUnselectableRoutes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1773
    :cond_5
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1775
    return-void
.end method
