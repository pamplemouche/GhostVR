.class final Lcom/facebook/common/util/TriStateUtil$2;
.super Ljava/lang/Object;
.source "TriStateUtil.java"

# interfaces
.implements Lcom/facebook/common/util/Combiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/util/TriStateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/util/Combiner",
        "<",
        "Lcom/facebook/common/util/TriState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/facebook/common/util/TriState;Lcom/facebook/common/util/TriState;)Lcom/facebook/common/util/TriState;
    .locals 1
    .param p1, "o1"    # Lcom/facebook/common/util/TriState;
    .param p2, "o2"    # Lcom/facebook/common/util/TriState;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->asBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/common/util/TriState;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 73
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 75
    goto :goto_0
.end method

.method public bridge synthetic combine(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/facebook/common/util/TriState;

    check-cast p2, Lcom/facebook/common/util/TriState;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/util/TriStateUtil$2;->combine(Lcom/facebook/common/util/TriState;Lcom/facebook/common/util/TriState;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
