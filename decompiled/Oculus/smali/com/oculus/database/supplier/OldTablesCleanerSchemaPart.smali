.class public Lcom/oculus/database/supplier/OldTablesCleanerSchemaPart;
.super Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;
.source "OldTablesCleanerSchemaPart.java"


# instance fields
.field private final mOldTablesToDelete:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/database/supplier/OldTablesCleanerSchemaPart;->mOldTablesToDelete:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oculus/database/supplier/OldTablesCleanerSchemaPart;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method protected onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oculus/database/supplier/OldTablesCleanerSchemaPart;->dropOldTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method
