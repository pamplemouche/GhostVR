.class public LE41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 0

    .line 1
    iput-object p1, p0, LE41;->b:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, LE41;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, LR41;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LE41;->b:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, LE41;->a:J

    invoke-static {p1, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->b(Lorg/chromium/media/MediaDrmBridge;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LE41;->b:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v1, p0, LE41;->a:J

    invoke-static {v0, p1, v1, v2}, Lorg/chromium/media/MediaDrmBridge;->b(Lorg/chromium/media/MediaDrmBridge;LR41;J)V

    :goto_0
    return-void
.end method
