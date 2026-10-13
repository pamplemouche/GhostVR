.class final Lcom/facebook/common/collectlite/LeanHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "LeanHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/LeanHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method private constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V
    .locals 0

    .line 956
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$Values;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

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
            "TV;>;"
        }
    .end annotation

    .line 960
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$ValueIterator;

    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/collectlite/LeanHashMap$ValueIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$Values;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->size()I

    move-result v0

    return v0
.end method
