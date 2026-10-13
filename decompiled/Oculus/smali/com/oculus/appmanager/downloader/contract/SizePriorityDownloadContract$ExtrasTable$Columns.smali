.class public Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$Columns;
.super Ljava/lang/Object;
.source "SizePriorityDownloadContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static EXTRA_KEY:Ljava/lang/String;

.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field public static EXTRA_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "package_name"

    sput-object v0, Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$Columns;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "key"

    sput-object v0, Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$Columns;->EXTRA_KEY:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "value"

    sput-object v0, Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$Columns;->EXTRA_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
