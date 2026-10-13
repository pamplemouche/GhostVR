.class final Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;
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
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/collectlite/LeanHashMap<",
        "TK;TV;>.BaseMapIterator;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method private constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
