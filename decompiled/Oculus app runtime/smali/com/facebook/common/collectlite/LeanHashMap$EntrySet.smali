.class final Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LeanHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/LeanHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method private constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 889
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 892
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 893
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$900(Lcom/facebook/common/collectlite/LeanHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 884
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;

    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 908
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 911
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 912
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$1000(Lcom/facebook/common/collectlite/LeanHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->size()I

    move-result v0

    return v0
.end method
