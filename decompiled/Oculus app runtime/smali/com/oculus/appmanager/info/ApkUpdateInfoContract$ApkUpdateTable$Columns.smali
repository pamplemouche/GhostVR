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
    .locals 4

    .line 446
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 449
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "INTEGER"

    const-string v2, "base_version"

    invoke-direct {v0, v2, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->BASE_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 452
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v2, "version"

    invoke-direct {v0, v2, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->TARGET_VERSION:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 455
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v2, "TEXT"

    const-string v3, "item_id"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ITEM_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 458
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "access_token"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->ACCESS_TOKEN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 461
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "package_name"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->PACKAGE_NAME:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 464
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "download_url"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DOWNLOAD_URL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 467
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "download_size"

    invoke-direct {v0, v3, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DOWNLOAD_SIZE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 470
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "display_title"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DISPLAY_TITLE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 476
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "update_type"

    invoke-direct {v0, v3, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->UPDATE_TYPE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 479
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v3, "is_update"

    invoke-direct {v0, v3, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->IS_UPDATE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 482
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "dependencies"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->DEPENDENCIES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 485
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "requesting_package"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->REQUESTING_PACKAGE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 488
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "request_origin"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->REQUEST_ORIGIN:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 491
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "signature"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->SIGNATURE:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 494
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "external_signatures"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->EXTERNAL_SIGNATURES:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    .line 497
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    const-string v1, "binary_id"

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;->BINARY_ID:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
