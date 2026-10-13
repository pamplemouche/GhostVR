.class Lcom/oculus/downloader/extras/DownloadExtrasSQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadExtrasSQLHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "oculus-downloader"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/downloader/extras/contract/ExtrasDatabase;->SQL_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "DROP TABLE IF EXISTS download_extras"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/oculus/downloader/extras/DownloadExtrasSQLHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    return-void
.end method
