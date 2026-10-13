.class Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "AutoUpdatesDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoUpdateRecordCursorWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getRecord()Lcom/oculus/autoupdates/database/AutoUpdateRecord;
    .locals 4

    .prologue
    .line 130
    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "version_code"

    invoke-virtual {p0, v1}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getInt(I)I

    move-result v1

    .line 132
    const-string v2, "attempts"

    invoke-virtual {p0, v2}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager$AutoUpdateRecordCursorWrapper;->getInt(I)I

    move-result v2

    .line 134
    new-instance v3, Lcom/oculus/autoupdates/database/AutoUpdateRecord;

    invoke-direct {v3, v0, v1, v2}, Lcom/oculus/autoupdates/database/AutoUpdateRecord;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method
