.class Lcom/oculus/database/sqlite/SqlExpression$AndExpression;
.super Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;
.source "SqlExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndExpression"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "AND"

    invoke-direct {p0, v0}, Lcom/oculus/database/sqlite/SqlExpression$ConjunctionExpression;-><init>(Ljava/lang/String;)V

    .line 179
    return-void
.end method
