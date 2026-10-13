.class Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression$1;
.super Ljava/lang/Object;
.source "SqlExpression.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;->getParameterIterable()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/database/sqlite/SqlExpression$Expression;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;


# direct methods
.method constructor <init>(Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression$1;->this$0:Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/database/sqlite/SqlExpression$Expression;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/database/sqlite/SqlExpression$Expression;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/oculus/database/sqlite/SqlExpression$Expression;->getParameterIterable()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    check-cast p1, Lcom/oculus/database/sqlite/SqlExpression$Expression;

    invoke-virtual {p0, p1}, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression$1;->apply(Lcom/oculus/database/sqlite/SqlExpression$Expression;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
