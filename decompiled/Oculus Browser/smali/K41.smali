.class public LK41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic a:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;LD41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK41;->a:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 1

    .line 1
    iget-object p1, p0, LK41;->a:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;[B)LR41;

    move-result-object p1

    .line 2
    iget-object p2, p0, LK41;->a:Lorg/chromium/media/MediaDrmBridge;

    new-instance v0, LJ41;

    invoke-direct {v0, p0, p1, p3, p4}, LJ41;-><init>(LK41;LR41;J)V

    invoke-static {p2, p1, v0}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;LR41;Ljava/lang/Runnable;)V

    return-void
.end method
