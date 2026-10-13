.class public Lcom/facebook/common/util/EnumsUtil;
.super Ljava/lang/Object;
.source "EnumsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStrings(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "strings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Enum;

    .line 52
    .local v3, "values":[Ljava/lang/Enum;, "[TT;"
    const/4 v0, 0x0

    .line 53
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "string":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {p0, v2, p2}, Lcom/facebook/common/util/EnumsUtil;->valueOfIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v5

    aput-object v5, v3, v0

    move v0, v1

    .line 55
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 56
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static fromStrings(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/facebook/common/util/EnumsUtil;->fromStrings(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static isAlphabeticallyOrdered([Ljava/lang/Enum;)Z
    .locals 7
    .param p0, "values"    # [Ljava/lang/Enum;

    .prologue
    const/4 v2, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "previousValue":Ljava/lang/Enum;
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p0, v3

    .line 15
    .local v1, "value":Ljava/lang/Enum;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 20
    .end local v1    # "value":Ljava/lang/Enum;
    :goto_1
    return v2

    .line 18
    .restart local v1    # "value":Ljava/lang/Enum;
    :cond_0
    move-object v0, v1

    .line 14
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "value":Ljava/lang/Enum;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toStringArray(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 36
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 37
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 38
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.method public static valueOfIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 26
    .local v0, "item":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    .end local v0    # "item":Ljava/lang/Enum;, "TT;"
    :goto_1
    return-object v0

    .line 25
    .restart local v0    # "item":Ljava/lang/Enum;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "item":Ljava/lang/Enum;, "TT;"
    :cond_1
    move-object v0, p2

    .line 31
    goto :goto_1
.end method
