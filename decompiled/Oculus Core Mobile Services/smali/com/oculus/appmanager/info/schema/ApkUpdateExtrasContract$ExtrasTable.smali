.class public Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable;
.super Ljava/lang/Object;
.source "ApkUpdateExtrasContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtrasTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;
    }
.end annotation


# static fields
.field public static FOREIGN_KEY:Lcom/oculus/database/sqlite/SqlKeys$SqlKey;

.field public static NAME:Ljava/lang/String;

.field public static PRIMARY_KEY:Lcom/oculus/database/sqlite/SqlKeys$SqlKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    const-string v0, "apk_updates_extras"

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable;->NAME:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/oculus/database/sqlite/SqlKeys$PrimaryKey;

    sget-object v1, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->APK_UPDATE_ID:Lcom/oculus/database/sqlite/SqlColumn;

    sget-object v2, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->EXTRA_KEY:Lcom/oculus/database/sqlite/SqlColumn;

    .line 17
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/database/sqlite/SqlKeys$PrimaryKey;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable;->PRIMARY_KEY:Lcom/oculus/database/sqlite/SqlKeys$SqlKey;

    .line 19
    new-instance v0, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;

    sget-object v1, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable$Columns;->APK_UPDATE_ID:Lcom/oculus/database/sqlite/SqlColumn;

    .line 21
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;->NAME:Ljava/lang/String;

    new-instance v3, Lcom/oculus/database/sqlite/SqlColumn;

    sget-object v4, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    iget-object v4, v4, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;->name:Ljava/lang/String;

    sget-object v5, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    iget-object v5, v5, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/oculus/database/sqlite/SqlColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/database/sqlite/SqlKeys$ForeignKey;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasContract$ExtrasTable;->FOREIGN_KEY:Lcom/oculus/database/sqlite/SqlKeys$SqlKey;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
