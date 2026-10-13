.class public LJ41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LR41;

.field public final synthetic x:J

.field public final synthetic y:LK41;


# direct methods
.method public constructor <init>(LK41;LR41;J)V
    .locals 0

    .line 1
    iput-object p1, p0, LJ41;->y:LK41;

    iput-object p2, p0, LJ41;->w:LR41;

    iput-wide p3, p0, LJ41;->x:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LJ41;->w:LR41;

    .line 2
    invoke-virtual {v0}, LR41;->a()Ljava/lang/String;

    iget-wide v0, p0, LJ41;->x:J

    .line 3
    iget-object v2, p0, LJ41;->y:LK41;

    iget-object v2, v2, LK41;->a:Lorg/chromium/media/MediaDrmBridge;

    iget-object v3, p0, LJ41;->w:LR41;

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;LR41;J)V

    return-void
.end method
