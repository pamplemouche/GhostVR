.class public Lcom/oculus/horizon/feedbuilder/FeedUtils;
.super Ljava/lang/Object;
.source "FeedUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Lcom/oculus/horizon/feedbuilder/FeedAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/feedbuilder/FeedAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/FeedItem;

    .line 14
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getFirstSupportedRenderStyle(Lcom/oculus/horizon/feedbuilder/FeedItem;)Ljava/lang/String;

    move-result-object v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    return-object v1
.end method
