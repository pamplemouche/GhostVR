.class final Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;
.super Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;
.source "LeanHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/LeanHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/collectlite/LeanHashMap<",
        "TK;TV;>.BaseMapIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method private constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 854
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
