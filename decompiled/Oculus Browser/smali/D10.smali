.class public LD10;
.super LXg0;
.source "PG"


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:Ljava/lang/Runnable;

.field public final synthetic y:LH10;


# direct methods
.method public constructor <init>(LH10;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD10;->y:LH10;

    iput-object p2, p0, LD10;->w:Ljava/lang/Runnable;

    iput-object p3, p0, LD10;->x:Ljava/lang/Runnable;

    invoke-direct {p0}, LXg0;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    iget-object v1, p0, LD10;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    iget-object v1, p0, LD10;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 3
    iget-object v0, p0, LD10;->y:LH10;

    .line 4
    iget-boolean v1, v0, LH10;->c:Z

    .line 5
    invoke-virtual {v0, v1}, LH10;->a(Z)V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD10;->y:LH10;

    .line 2
    iget-boolean v0, v0, LH10;->c:Z

    return v0
.end method
