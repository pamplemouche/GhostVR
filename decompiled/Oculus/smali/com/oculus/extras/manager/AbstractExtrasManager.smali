.class public Lcom/oculus/extras/manager/AbstractExtrasManager;
.super Ljava/lang/Object;
.source "AbstractExtrasManager.java"


# instance fields
.field private final mDatabaseSupplier:Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

.field private final mIdColumnName:Ljava/lang/String;

.field private final mKeyColumnName:Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;

.field private final mValueColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/database/supplier/AbstractDatabaseSupplier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mDatabaseSupplier:Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

    .line 51
    iput-object p2, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mTableName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mIdColumnName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mKeyColumnName:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mValueColumnName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getExtras(J)Lcom/oculus/extras/Extras;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 59
    iget-object v0, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mDatabaseSupplier:Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

    invoke-virtual {v0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mKeyColumnName:Ljava/lang/String;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mValueColumnName:Ljava/lang/String;

    aput-object v1, v2, v4

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mIdColumnName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 66
    iget-object v1, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mTableName:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/oculus/extras/Extras;->builder()Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/extras/ExtrasBuilder;->build()Lcom/oculus/extras/Extras;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-static {}, Lcom/oculus/extras/Extras;->builder()Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/extras/ExtrasBuilder;->build()Lcom/oculus/extras/Extras;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mKeyColumnName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mValueColumnName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 81
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 85
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    new-instance v0, Lcom/oculus/extras/Extras;

    invoke-direct {v0, v1}, Lcom/oculus/extras/Extras;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public removeAllExtras(J)V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mDatabaseSupplier:Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

    invoke-virtual {v0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mIdColumnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 163
    iget-object v3, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public setExtras(JLcom/oculus/extras/Extras;)V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p3}, Lcom/oculus/extras/Extras;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/extras/manager/AbstractExtrasManager;->setExtras(JLjava/util/Map;)V

    .line 97
    return-void
.end method

.method public setExtras(JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mDatabaseSupplier:Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

    invoke-virtual {v0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mIdColumnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mKeyColumnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 124
    iget-object v0, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 128
    :cond_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    if-eqz v0, :cond_1

    .line 135
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 136
    iget-object v5, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mIdColumnName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v5, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mKeyColumnName:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mValueColumnName:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/oculus/extras/manager/AbstractExtrasManager;->mTableName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 146
    return-void
.end method
