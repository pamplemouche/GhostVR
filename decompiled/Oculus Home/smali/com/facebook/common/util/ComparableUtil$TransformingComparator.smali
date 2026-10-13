.class Lcom/facebook/common/util/ComparableUtil$TransformingComparator;
.super Ljava/lang/Object;
.source "ComparableUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/util/ComparableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<TV;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/facebook/common/util/ComparableUtil$TransformingComparator;, "Lcom/facebook/common/util/ComparableUtil$TransformingComparator<TV;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TV;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/common/util/ComparableUtil$TransformingComparator;->mFunction:Lcom/google/common/base/Function;

    .line 58
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)I"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/common/util/ComparableUtil$TransformingComparator;, "Lcom/facebook/common/util/ComparableUtil$TransformingComparator<TV;>;"
    .local p1, "lhsObject":Ljava/lang/Object;, "TV;"
    .local p2, "rhsObject":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/facebook/common/util/ComparableUtil$TransformingComparator;->mFunction:Lcom/google/common/base/Function;

    invoke-interface {v2, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    .local v0, "lhs":I
    iget-object v2, p0, Lcom/facebook/common/util/ComparableUtil$TransformingComparator;->mFunction:Lcom/google/common/base/Function;

    invoke-interface {v2, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 65
    .local v1, "rhs":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
