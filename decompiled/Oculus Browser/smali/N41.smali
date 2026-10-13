.class public LN41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LR41;

.field public final b:J

.field public final c:Z

.field public final synthetic d:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;LR41;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, LN41;->d:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LN41;->a:LR41;

    .line 3
    iput-wide p3, p0, LN41;->b:J

    .line 4
    iput-boolean p5, p0, LN41;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LN41;->d:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, LN41;->b:J

    const-string v2, "failed to update key after response accepted"

    invoke-static {p1, v0, v1, v2}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, LN41;->c:Z

    iget-object p1, p0, LN41;->a:LR41;

    .line 4
    invoke-virtual {p1}, LR41;->a()Ljava/lang/String;

    .line 5
    iget-object p1, p0, LN41;->d:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, LN41;->b:J

    invoke-static {p1, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;J)V

    .line 6
    iget-boolean p1, p0, LN41;->c:Z

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_1

    .line 7
    iget-object p1, p0, LN41;->d:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, LN41;->a:LR41;

    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, LN41;->c:Z

    .line 9
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;[Ljava/lang/Object;ZZ)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, LN41;->a(Ljava/lang/Boolean;)V

    return-void
.end method
