.class public Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;
.super Ljava/lang/Object;
.source "ApkUpdateExtrasContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static APK_UPDATE_ID:Lcom/oculus/database/sqlite/SqlColumn;

.field public static EXTRA_KEY:Lcom/oculus/database/sqlite/SqlColumn;

.field public static EXTRA_VALUE:Lcom/oculus/database/sqlite/SqlColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn;

    const-string v1, "apk_update_id"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/database/sqlite/SqlColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->APK_UPDATE_ID:Lcom/oculus/database/sqlite/SqlColumn;

    .line 33
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn;

    const-string v1, "key"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/database/sqlite/SqlColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->EXTRA_KEY:Lcom/oculus/database/sqlite/SqlColumn;

    .line 36
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn;

    const-string v1, "value"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/database/sqlite/SqlColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->EXTRA_VALUE:Lcom/oculus/database/sqlite/SqlColumn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
