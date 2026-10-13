.class public Landroidx/mediarouter/media/MediaRouter$RouteGroup;
.super Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
.field protected mMemberRoutes:Ljava/util/List;
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
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1664
    invoke-direct {p0, p1, p2, p3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    .line 1665
    return-void
.end method


# virtual methods
.method public getMemberRoutes()Ljava/util/List;
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
    .line 1673
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1692
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eq v0, p1, :cond_6

    .line 1693
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 1694
    if-eqz p1, :cond_6

    .line 1695
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v3

    .line 1696
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    if-nez v3, :cond_1

    .line 1698
    const-string v0, "MediaRouter"

    const-string v3, "groupMemberIds shouldn\'t be null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1713
    :goto_0
    if-eqz v0, :cond_0

    .line 1714
    iput-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    .line 1718
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-super {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result v0

    or-int/2addr v0, v1

    return v0

    .line 1701
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_2

    move v0, v1

    .line 1702
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1703
    sget-object v6, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    sget-object v6, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v6, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1705
    if-eqz v0, :cond_4

    .line 1706
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    if-nez v3, :cond_4

    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_5
    move v3, v0

    .line 1711
    goto :goto_4

    :cond_2
    move v0, v2

    .line 1701
    goto :goto_3

    :cond_3
    move v1, v2

    .line 1718
    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1679
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1680
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1681
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1682
    if-lez v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
