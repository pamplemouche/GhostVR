.class public LhK0;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LiK0;


# direct methods
.method public constructor <init>(LiK0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhK0;->a:LiK0;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p0, LhK0;->a:LiK0;

    .line 2
    iget v0, p1, LiK0;->c:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, LiK0;->c:I

    const/16 v1, 0x64

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iput v0, p1, LiK0;->c:I

    .line 5
    iget-object p1, p0, LhK0;->a:LiK0;

    .line 6
    iget-object v0, p1, LiK0;->a:LkK0;

    .line 7
    iget p1, p1, LiK0;->c:I

    .line 8
    invoke-static {v0, p1}, LkK0;->a(LkK0;I)V

    .line 9
    iget-object p1, p0, LhK0;->a:LiK0;

    .line 10
    iget v0, p1, LiK0;->c:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    iget-object p1, p1, LiK0;->a:LkK0;

    .line 12
    iget-object p1, p1, LkK0;->A:LfL0;

    .line 13
    iget-object p1, p1, LfL0;->a:LQK0;

    .line 14
    iget-object p1, p1, LQK0;->D:LqK0;

    invoke-virtual {p1, v2}, LqK0;->a(Z)V

    return-void

    :cond_0
    const-wide/16 v0, 0xa

    .line 15
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
