.class Lcom/oculus/database/sqlite/SqlExpression$BinaryExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$Expression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryExpression"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# virtual methods
.method bridge synthetic getParameterIterable()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oculus/database/sqlite/SqlExpression$BinaryExpression;->getParameterIterable()Ljava/util/Collection;

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
    .line 214
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlExpression$BinaryExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
