.class public LxW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:LyW;


# direct methods
.method public constructor <init>(LyW;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LxW;->x:LyW;

    iput-object p2, p0, LxW;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LxW;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, LxW;->x:LyW;

    invoke-virtual {v0}, LyW;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LxW;->x:LyW;

    invoke-virtual {v1}, LyW;->a()V

    throw v0
.end method
