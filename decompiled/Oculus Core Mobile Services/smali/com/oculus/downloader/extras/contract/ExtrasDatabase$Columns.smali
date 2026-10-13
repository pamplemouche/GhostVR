.class public Lcom/oculus/downloader/extras/contract/ExtrasDatabase$Columns;
.super Ljava/lang/Object;
.source "ExtrasDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/downloader/extras/contract/ExtrasDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static DOWNLOAD_ID:Ljava/lang/String;

.field public static EXTRA_KEY:Ljava/lang/String;

.field public static EXTRA_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "download_id"

    sput-object v0, Lcom/oculus/downloader/extras/contract/ExtrasDatabase$Columns;->DOWNLOAD_ID:Ljava/lang/String;

    .line 39
    const-string v0, "key"

    sput-object v0, Lcom/oculus/downloader/extras/contract/ExtrasDatabase$Columns;->EXTRA_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "value"

    sput-object v0, Lcom/oculus/downloader/extras/contract/ExtrasDatabase$Columns;->EXTRA_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
