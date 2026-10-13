.class public Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$Expression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConjunctionExpression"
.end annotation


# instance fields
.field private final conjunction:Ljava/lang/String;

.field private final expressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/database/sqlite/SqlExpression$Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/oculus/database/sqlite/SqlExpression$Expression;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;->expressions:Ljava/util/List;

    .line 127
    iput-object p1, p0, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;->conjunction:Ljava/lang/String;

    .line 128
    return-void
.end method


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
    .line 163
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;->expressions:Ljava/util/List;

    new-instance v1, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression$1;

    invoke-direct {v1, p0}, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression$1;-><init>(Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;)V

    .line 164
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
