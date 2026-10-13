.class public Le51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field public final synthetic a:Lt51;


# direct methods
.method public synthetic constructor <init>(Lt51;Lc51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le51;->a:Lt51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4

    .line 1
    iget-object p2, p0, Le51;->a:Lt51;

    iget-wide v0, p2, Lorg/chromium/media/VideoCapture;->e:J

    const-string v2, "Error id: "

    invoke-static {v2, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x44

    .line 2
    invoke-static {v0, v1, p2, v2, p1}, LJ/N;->MhmwjISE(JLjava/lang/Object;ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Le51;->a:Lt51;

    .line 4
    iget-object p1, p1, Lt51;->g:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Le51;->a:Lt51;

    .line 7
    iget-wide v0, p2, Lt51;->h:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Le51;->a:Lt51;

    iget-object v0, p0, Le51;->a:Lt51;

    .line 10
    iget-wide v0, v0, Lt51;->h:J

    .line 11
    invoke-virtual {p2, v0, v1}, Lorg/chromium/media/VideoCapture;->a(J)V

    .line 12
    iget-object p2, p0, Le51;->a:Lt51;

    .line 13
    iput-wide v2, p2, Lt51;->h:J

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
