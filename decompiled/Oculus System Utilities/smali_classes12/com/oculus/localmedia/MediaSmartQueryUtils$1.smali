.class final Lcom/oculus/localmedia/MediaSmartQueryUtils$1;
.super Ljava/util/HashMap;
.source "MediaSmartQueryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaSmartQueryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/oculus/localmedia/MediaSmartQueryType;",
        "Ljava/util/List",
        "<",
        "Lcom/oculus/localmedia/MediaSmartQueryType;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ROOT:Lcom/oculus/localmedia/MediaSmartQueryType;

    new-array v1, v6, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT:Lcom/oculus/localmedia/MediaSmartQueryType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_TODAY:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_WEEK:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_MONTH:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_LAST_YEAR:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->RECENT_OLDER:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_AF:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_GK:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_LP:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_QU:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ATOZ_VZ:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS:Lcom/oculus/localmedia/MediaSmartQueryType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_PHOTOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_VIDEOS:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_360:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_180:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_3D:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/oculus/localmedia/MediaSmartQueryType;->VR:Lcom/oculus/localmedia/MediaSmartQueryType;

    new-array v1, v6, [Lcom/oculus/localmedia/MediaSmartQueryType;

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_360:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_180:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oculus/localmedia/MediaSmartQueryType;->ALBUMS_3D:Lcom/oculus/localmedia/MediaSmartQueryType;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/localmedia/MediaSmartQueryUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
