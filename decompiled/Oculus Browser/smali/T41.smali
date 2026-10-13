.class public LT41;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Ljava/util/HashMap;

.field public c:LU41;


# direct methods
.method public constructor <init>(LU41;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LT41;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LT41;->b:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, LT41;->c:LU41;

    return-void
.end method


# virtual methods
.method public a([B)LR41;
    .locals 1

    .line 18
    iget-object v0, p0, LT41;->a:Ljava/util/HashMap;

    .line 19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS41;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, LS41;->a:LR41;

    :goto_0
    return-object p1
.end method

.method public a(LR41;)LS41;
    .locals 1

    .line 15
    iget-object v0, p0, LT41;->a:Ljava/util/HashMap;

    .line 16
    iget-object p1, p1, LR41;->a:[B

    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS41;

    return-object p1
.end method

.method public a(LR41;Lorg/chromium/base/Callback;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, LR41;->c:[B

    .line 2
    iget-object v0, p0, LT41;->c:LU41;

    .line 3
    iget-object p1, p1, LR41;->a:[B

    .line 4
    invoke-virtual {v0}, LU41;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-wide v1, v0, LU41;->a:J

    .line 6
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->MYa_y6Dg(JLjava/lang/Object;[BLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(LR41;[BLorg/chromium/base/Callback;)V
    .locals 4

    .line 8
    iput-object p2, p1, LR41;->c:[B

    .line 9
    iget-object p2, p0, LT41;->c:LU41;

    invoke-virtual {p0, p1}, LT41;->a(LR41;)LS41;

    move-result-object p1

    .line 10
    new-instance v0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    iget-object v1, p1, LS41;->a:LR41;

    .line 11
    iget-object v2, v1, LR41;->a:[B

    .line 12
    iget-object v1, v1, LR41;->c:[B

    .line 13
    iget-object v3, p1, LS41;->b:Ljava/lang/String;

    iget p1, p1, LS41;->c:I

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;-><init>([B[BLjava/lang/String;I)V

    .line 14
    invoke-virtual {p2, v0, p3}, LU41;->a(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V

    return-void
.end method
