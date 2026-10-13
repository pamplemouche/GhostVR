.class final Lcom/oculus/database/sqlite/SqlColumn$3;
.super Ljava/lang/Object;
.source "SqlColumn.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/database/sqlite/SqlColumn;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$trimString:Ljava/lang/String;


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, Lcom/oculus/database/sqlite/SqlColumn;

    invoke-virtual {p0, p1}, Lcom/oculus/database/sqlite/SqlColumn$3;->apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "trim(%s, \'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/database/sqlite/SqlColumn;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oculus/database/sqlite/SqlColumn$3;->val$trimString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
