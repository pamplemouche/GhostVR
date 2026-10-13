.class public final synthetic Lq80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lu80;

.field public final x:I

.field public final y:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lu80;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq80;->w:Lu80;

    iput p2, p0, Lq80;->x:I

    iput-object p3, p0, Lq80;->y:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lq80;->w:Lu80;

    iget v1, p0, Lq80;->x:I

    iget-object v2, p0, Lq80;->y:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 1
    iput-object v3, v0, Lu80;->F:Ljava/lang/Runnable;

    .line 2
    iget-object v4, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    if-eqz v4, :cond_0

    iput-object v3, v4, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->k:Ljava/lang/Integer;

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v2, v1, v5

    .line 3
    invoke-virtual {v0, v1}, Lu80;->a([Ljava/lang/Integer;)V

    .line 4
    :cond_1
    invoke-virtual {v0, v3, v5, v5, v5}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    return-void
.end method
