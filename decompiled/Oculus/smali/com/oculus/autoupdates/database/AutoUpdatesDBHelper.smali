.class public Lcom/oculus/autoupdates/database/AutoUpdatesDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AutoUpdatesDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    const-string v0, "autoupdates.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/oculus/autoupdates/database/AutoUpdatesDBContract$AutoUpdatesDBTable;->SQL_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "DROP TABLE IF EXISTS autoupdates"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/autoupdates/database/AutoUpdatesDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    return-void
.end method
