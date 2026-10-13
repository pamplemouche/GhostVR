.class public final synthetic Lr90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:LB90;

.field public final x:Lx90;

.field public final y:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(LB90;Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr90;->w:LB90;

    iput-object p2, p0, Lr90;->x:Lx90;

    iput-object p3, p0, Lr90;->y:Lorg/chromium/chrome/browser/download/DownloadInfo;

    iput-object p4, p0, Lr90;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p1, p0, Lr90;->w:LB90;

    iget-object v6, p0, Lr90;->x:Lx90;

    iget-object v2, p0, Lr90;->y:Lorg/chromium/chrome/browser/download/DownloadInfo;

    iget-object v5, p0, Lr90;->z:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-wide/16 v3, -0x1

    move-object v0, p1

    move-object v1, v6

    .line 1
    invoke-virtual/range {v0 .. v5}, LB90;->a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1, v6}, LB90;->a(Lx90;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
