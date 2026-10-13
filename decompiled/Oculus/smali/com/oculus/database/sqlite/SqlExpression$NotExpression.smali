.class Lcom/oculus/database/sqlite/SqlExpression$NotExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$Expression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotExpression"
.end annotation


# instance fields
.field private original:Lcom/oculus/database/sqlite/SqlExpression$Expression;


# virtual methods
.method getParameterIterable()Ljava/lang/Iterable;
    .locals 1
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
    .line 317
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlExpression$NotExpression;->original:Lcom/oculus/database/sqlite/SqlExpression$Expression;

    invoke-virtual {v0}, Lcom/oculus/database/sqlite/SqlExpression$Expression;->getParameterIterable()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
