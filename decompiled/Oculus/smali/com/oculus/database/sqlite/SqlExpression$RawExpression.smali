.class Lcom/oculus/database/sqlite/SqlExpression$RawExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$Expression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawExpression"
.end annotation


# virtual methods
.method bridge synthetic getParameterIterable()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/oculus/database/sqlite/SqlExpression$RawExpression;->getParameterIterable()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getParameterIterable()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
