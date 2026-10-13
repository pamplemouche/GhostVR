.class public Lcom/facebook/common/util/TriStateUtil;
.super Ljava/lang/Object;
.source "TriStateUtil.java"


# static fields
.field public static AND_COMBINER:Lcom/facebook/common/util/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/util/Combiner",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field public static OR_COMBINER:Lcom/facebook/common/util/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/util/Combiner",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/common/util/TriStateUtil$1;

    invoke-direct {v0}, Lcom/facebook/common/util/TriStateUtil$1;-><init>()V

    sput-object v0, Lcom/facebook/common/util/TriStateUtil;->AND_COMBINER:Lcom/facebook/common/util/Combiner;

    .line 66
    new-instance v0, Lcom/facebook/common/util/TriStateUtil$2;

    invoke-direct {v0}, Lcom/facebook/common/util/TriStateUtil$2;-><init>()V

    sput-object v0, Lcom/facebook/common/util/TriStateUtil;->OR_COMBINER:Lcom/facebook/common/util/Combiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/util/List;Lcom/facebook/common/util/Combiner;Lcom/facebook/common/util/TriState;)Lcom/facebook/common/util/TriState;
    .locals 3
    .param p2, "earlyTerminateState"    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Lcom/facebook/common/util/Combiner",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Lcom/facebook/common/util/TriState;",
            ")",
            "Lcom/facebook/common/util/TriState;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "triStates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/util/TriState;>;"
    .local p1, "combiner":Lcom/facebook/common/util/Combiner;, "Lcom/facebook/common/util/Combiner<Lcom/facebook/common/util/TriState;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/common/util/TriState;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TriState;

    .line 35
    .local v0, "base":Lcom/facebook/common/util/TriState;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/facebook/common/util/Combiner;->combine(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "base":Lcom/facebook/common/util/TriState;
    check-cast v0, Lcom/facebook/common/util/TriState;

    .line 37
    .restart local v0    # "base":Lcom/facebook/common/util/TriState;
    if-ne v0, p2, :cond_2

    goto :goto_0
.end method
