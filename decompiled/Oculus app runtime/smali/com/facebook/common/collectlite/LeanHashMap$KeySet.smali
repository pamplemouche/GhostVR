.class final Lcom/facebook/common/collectlite/LeanHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LeanHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/LeanHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method private constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V
    .locals 0

    .line 921
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

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
            "TK;>;"
        }
    .end annotation

    .line 925
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;

    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 945
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->size()I

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v1, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->size()I

    move-result v0

    return v0
.end method
