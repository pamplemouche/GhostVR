.class public Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$ColumnsTypes;
.super Ljava/lang/Object;
.source "SizePriorityDownloadContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsTypes"
.end annotation


# static fields
.field public static TEXT_NOT_NULL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "TEXT NOT NULL"

    sput-object v0, Lcom/oculus/appmanager/downloader/contract/SizePriorityDownloadContract$ExtrasTable$ColumnsTypes;->TEXT_NOT_NULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
