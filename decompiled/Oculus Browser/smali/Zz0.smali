.class public final LZz0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ls2;

.field public b:LWz0;

.field public c:LEA0;

.field public d:Ljava/lang/Runnable;

.field public final e:LYz0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LFA0;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, LFA0;-><init>(J)V

    iput-object v0, p0, LZz0;->b:LWz0;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LZz0;->e:LYz0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LZz0;->a:Ls2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, LZz0;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    sget-object v1, LZ01;->a:LFW;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v0, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LZz0;->a:Ls2;

    .line 6
    iput-object v0, p0, LZz0;->d:Ljava/lang/Runnable;

    .line 7
    iput-object v0, p0, LZz0;->c:LEA0;

    return-void
.end method
