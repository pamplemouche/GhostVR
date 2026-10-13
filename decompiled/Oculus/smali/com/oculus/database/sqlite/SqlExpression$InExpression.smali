.class Lcom/oculus/database/sqlite/SqlExpression$InExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$Expression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InExpression"
.end annotation


# instance fields
.field private final parameterValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# virtual methods
.method getParameterIterable()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlExpression$InExpression;->parameterValues:Ljava/util/Collection;

    invoke-static {}, Lcom/google/common/base/Functions;->toStringFunction()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
