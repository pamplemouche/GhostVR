.class public LyD0;
.super LXg0;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LXg0;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    .line 1
    invoke-static {}, LpF0;->c()V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    sget-object v1, LxD0;->w:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method
