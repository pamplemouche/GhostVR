.class public Lcom/oculus/appmanager/installer/events/DownloadingResponse;
.super Ljava/lang/Object;
.source "DownloadingResponse.java"


# instance fields
.field public final downloadSize:J

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/appmanager/installer/events/DownloadingResponse;->packageName:Ljava/lang/String;

    .line 11
    iput-wide p2, p0, Lcom/oculus/appmanager/installer/events/DownloadingResponse;->downloadSize:J

    .line 12
    return-void
.end method
