.class public LM41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field public final synthetic a:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;LD41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM41;->a:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 7

    .line 1
    iget-object p1, p0, LM41;->a:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;[B)LR41;

    move-result-object p1

    .line 2
    iget-object p2, p0, LM41;->a:Lorg/chromium/media/MediaDrmBridge;

    .line 3
    iget-object p2, p2, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    .line 4
    invoke-virtual {p2, p1}, LT41;->a(LR41;)LS41;

    move-result-object p2

    .line 5
    iget p2, p2, LS41;->c:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, LM41;->a:Lorg/chromium/media/MediaDrmBridge;

    new-instance v6, LL41;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LL41;-><init>(LM41;LR41;ZLjava/util/List;Z)V

    invoke-static {p2, p1, v6}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;LR41;Ljava/lang/Runnable;)V

    return-void
.end method
