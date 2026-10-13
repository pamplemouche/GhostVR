.class public Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;
.super Ljava/lang/Object;
.source "SqlKeys.java"

# interfaces
.implements Lcom/oculus/database/sqlite/SqlKeys$SqlKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/database/sqlite/SqlKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForeignKey"
.end annotation


# instance fields
.field private final foreignKeyColumns:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            ">;"
        }
    .end annotation
.end field

.field private final foreignTableName:Ljava/lang/String;

.field private final keyColumns:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->keyColumns:Lcom/google/common/collect/ImmutableList;

    .line 55
    iput-object p2, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignTableName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignKeyColumns:Lcom/google/common/collect/ImmutableList;

    .line 57
    return-void
.end method


# virtual methods
.method public getSql()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->keyColumns:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->keyColumns:Lcom/google/common/collect/ImmutableList;

    .line 63
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignTableName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignKeyColumns:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignKeyColumns:Lcom/google/common/collect/ImmutableList;

    .line 66
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "All fields for foreign key must be specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const-string v1, "FOREIGN KEY ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->keyColumns:Lcom/google/common/collect/ImmutableList;

    sget-object v3, Lcom/oculus/database/sqlite/SqlColumn;->COLUMN_TO_NAME:Lcom/google/common/base/Function;

    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ") REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", "

    .line 75
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;->foreignKeyColumns:Lcom/google/common/collect/ImmutableList;

    sget-object v3, Lcom/oculus/database/sqlite/SqlColumn;->COLUMN_TO_NAME:Lcom/google/common/base/Function;

    .line 76
    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
