.class public Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;
.super Ljava/lang/Object;
.source "ApkUpdateInfoContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static ACCESS_TOKEN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static BASE_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static BINARY_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static DEPENDENCIES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static DISPLAY_TITLE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static DOWNLOAD_CHECKSUM:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static DOWNLOAD_SIZE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static DOWNLOAD_URL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static EXTERNAL_SIGNATURES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static IS_UPDATE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static ITEM_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static PACKAGE_NAME:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static REQUESTING_PACKAGE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static REQUEST_ORIGIN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static SIGNATURE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static TARGET_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

.field public static UPDATE_TYPE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 472
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "base_version"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->BASE_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 475
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string/jumbo v1, "version"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->TARGET_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 478
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "item_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ITEM_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 481
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "access_token"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ACCESS_TOKEN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 484
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "package_name"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->PACKAGE_NAME:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 487
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "download_url"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DOWNLOAD_URL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 490
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "download_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DOWNLOAD_SIZE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 493
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "display_title"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DISPLAY_TITLE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 499
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string/jumbo v1, "update_type"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->UPDATE_TYPE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 502
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "is_update"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->IS_UPDATE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 505
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "dependencies"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DEPENDENCIES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 508
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string/jumbo v1, "requesting_package"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->REQUESTING_PACKAGE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 511
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string/jumbo v1, "request_origin"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->REQUEST_ORIGIN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 514
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string/jumbo v1, "signature"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->SIGNATURE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 517
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "external_signatures"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->EXTERNAL_SIGNATURES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 520
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "checksum_hash"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DOWNLOAD_CHECKSUM:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 523
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "binary_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->BINARY_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
