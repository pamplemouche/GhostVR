.class public LF41;
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
    iput-object p1, p0, LF41;->b:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, LF41;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "cr_media"

    const-string v1, "Failed to clear persistent storage for non-exist license"

    .line 3
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, LF41;->b:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, LF41;->a:J

    invoke-static {p1, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->b(Lorg/chromium/media/MediaDrmBridge;J)V

    return-void
.end method
