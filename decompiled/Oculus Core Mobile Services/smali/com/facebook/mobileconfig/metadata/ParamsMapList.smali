.class public Lcom/facebook/mobileconfig/metadata/ParamsMapList;
.super Ljava/lang/Object;
.source "ParamsMapList.java"


# instance fields
.field public final entries:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final entryMap:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private reverseMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/mobileconfig/metadata/ParamsMapEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->reverseMapping:Ljava/util/Map;

    .line 23
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entries:Lcom/google/common/collect/ImmutableList;

    .line 25
    new-instance v0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    new-instance v1, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;

    invoke-direct {v1, p0}, Lcom/facebook/mobileconfig/metadata/ParamsMapList$1;-><init>(Lcom/facebook/mobileconfig/metadata/ParamsMapList;)V

    invoke-direct {v0, v1}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;-><init>(Lcom/facebook/common/cache/CacheLoader;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/metadata/ParamsMapList;->entryMap:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    .line 50
    return-void
.end method
