.class public Lcom/oculus/database/supplier/TablesDbSchemaPart;
.super Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;
.source "TablesDbSchemaPart.java"


# instance fields
.field private final mTables:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/sqlite/SqlTable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/oculus/database/supplier/TablesDbSchemaPart;->mTables:Lcom/google/common/collect/ImmutableList;

    .line 24
    return-void
.end method


# virtual methods
.method protected onAppUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/database/supplier/TablesDbSchemaPart;->mTables:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/sqlite/SqlTable;

    .line 48
    invoke-virtual {v0, p1}, Lcom/oculus/database/sqlite/SqlTable;->appUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/database/supplier/TablesDbSchemaPart;->mTables:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/sqlite/SqlTable;

    .line 34
    invoke-virtual {v0, p1}, Lcom/oculus/database/sqlite/SqlTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method protected onOpenAfterTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/database/supplier/TablesDbSchemaPart;->mTables:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/sqlite/SqlTable;

    .line 55
    invoke-virtual {v0, p1}, Lcom/oculus/database/sqlite/SqlTable;->open(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method protected onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/database/supplier/TablesDbSchemaPart;->mTables:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/sqlite/SqlTable;

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/database/sqlite/SqlTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
