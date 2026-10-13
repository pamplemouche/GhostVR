.class final Lcom/oculus/database/sqlite/SqlTable$1;
.super Ljava/lang/Object;
.source "SqlTable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlTable;
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
.field final synthetic val$appliedFunctions:Lcom/google/common/collect/ImmutableMap;


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    check-cast p1, Lcom/oculus/database/sqlite/SqlColumn;

    invoke-virtual {p0, p1}, Lcom/oculus/database/sqlite/SqlTable$1;->apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/oculus/database/sqlite/SqlColumn;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlTable$1;->val$appliedFunctions:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    .line 201
    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/oculus/database/sqlite/SqlColumn;->COLUMN_TO_NAME:Lcom/google/common/base/Function;

    .line 204
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
