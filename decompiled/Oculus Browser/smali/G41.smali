.class public LG41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:LR41;

.field public final synthetic c:LS41;

.field public final synthetic d:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;JLR41;LS41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG41;->d:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, LG41;->a:J

    iput-object p4, p0, LG41;->b:LR41;

    iput-object p5, p0, LG41;->c:LS41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, LG41;->d:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, LG41;->a:J

    const-string v2, "Fail to update persistent storage"

    invoke-static {p1, v0, v1, v2}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, LG41;->d:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, LG41;->b:LR41;

    iget-object v1, p0, LG41;->c:LS41;

    .line 5
    iget-object v1, v1, LS41;->b:Ljava/lang/String;

    .line 6
    iget-wide v2, p0, LG41;->a:J

    invoke-static {p1, v0, v1, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;LR41;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
