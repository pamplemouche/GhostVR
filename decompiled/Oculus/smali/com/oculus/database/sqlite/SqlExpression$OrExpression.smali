.class Lcom/oculus/database/sqlite/SqlExpression$OrExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrExpression"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "OR"

    invoke-direct {p0, v0}, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;-><init>(Ljava/lang/String;)V

    .line 186
    return-void
.end method
