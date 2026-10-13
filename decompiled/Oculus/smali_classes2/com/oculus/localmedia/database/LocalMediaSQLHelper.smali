.class public Lcom/oculus/localmedia/database/LocalMediaSQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalMediaSQLHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 3

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "localmedia"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable;->SQL_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "DROP TABLE IF EXISTS localmedia_metadata"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    return-void
.end method
