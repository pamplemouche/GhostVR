.class public Lcom/facebook/common/util/EmptySortedMap;
.super Ljava/lang/Object;
.source "EmptySortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/util/Comparator",
        "<TK;>;"
    }
.end annotation


# static fields
.field public static EMPTY_SORTED_MAP:Ljava/util/SortedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/common/util/EmptySortedMap;

    invoke-direct {v0}, Lcom/facebook/common/util/EmptySortedMap;-><init>()V

    sput-object v0, Lcom/facebook/common/util/EmptySortedMap;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptySortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/common/util/EmptySortedMap;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "o1":Ljava/lang/Object;, "TK;"
    .local p2, "o2":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    sget-object v0, Lcom/facebook/common/util/EmptySortedMap;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    sget-object v0, Lcom/facebook/common/util/EmptySortedMap;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    sget-object v0, Lcom/facebook/common/util/EmptySortedMap;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/facebook/common/util/EmptySortedMap;, "Lcom/facebook/common/util/EmptySortedMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
