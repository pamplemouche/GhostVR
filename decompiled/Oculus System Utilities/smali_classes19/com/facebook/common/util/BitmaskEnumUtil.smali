.class public Lcom/facebook/common/util/BitmaskEnumUtil;
.super Ljava/lang/Object;
.source "BitmaskEnumUtil.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/common/util/BitmaskEnumUtil;

    sput-object v0, Lcom/facebook/common/util/BitmaskEnumUtil;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmaskValue(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 9
    .param p1, "bitmask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Ljava/util/EnumSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 64
    .local v1, "toReturn":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    return-object v1

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 68
    .local v0, "enumValue":Ljava/lang/Enum;, "TT;"
    invoke-static {v0}, Lcom/facebook/common/util/BitmaskEnumUtil;->toFlagValue(Ljava/lang/Enum;)J

    move-result-wide v6

    invoke-static {p1, p2, v6, v7}, Lcom/facebook/common/util/BitmaskEnumUtil;->hasFlagSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static fromFlagValue(Ljava/lang/Class;J)Ljava/lang/Enum;
    .locals 9
    .param p1, "flag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Invalid flag value: %d"

    invoke-static {v2, v5, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 35
    .local v1, "ordinal":I
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 36
    .local v0, "enums":[Ljava/lang/Enum;, "[TT;"
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 37
    sget-object v2, Lcom/facebook/common/util/BitmaskEnumUtil;->TAG:Ljava/lang/Class;

    const-string v5, "Unrecognized flag value for enum %s: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2, v5, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v2, 0x0

    .line 40
    :goto_1
    return-object v2

    .end local v0    # "enums":[Ljava/lang/Enum;, "[TT;"
    .end local v1    # "ordinal":I
    :cond_0
    move v2, v4

    .line 33
    goto :goto_0

    .line 40
    .restart local v0    # "enums":[Ljava/lang/Enum;, "[TT;"
    .restart local v1    # "ordinal":I
    :cond_1
    aget-object v2, v0, v1

    goto :goto_1
.end method

.method private static hasFlagSet(JJ)Z
    .locals 8
    .param p0, "bitmask"    # J
    .param p2, "flag"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    and-long v4, p0, p2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1
.end method

.method public static toBitmaskValue(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/util/Set",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "bitmaskEnumSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "bitmask":J
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 85
    .local v2, "flag":Ljava/lang/Enum;, "TT;"
    invoke-static {v2}, Lcom/facebook/common/util/BitmaskEnumUtil;->toFlagValue(Ljava/lang/Enum;)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 86
    goto :goto_0

    .line 87
    .end local v2    # "flag":Ljava/lang/Enum;, "TT;"
    :cond_0
    return-wide v0
.end method

.method public static toFlagValue(Ljava/lang/Enum;)J
    .locals 2
    .param p0, "bitmaskEnum"    # Ljava/lang/Enum;

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
