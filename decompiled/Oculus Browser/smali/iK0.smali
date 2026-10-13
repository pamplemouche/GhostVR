.class public LiK0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LkK0;

.field public final b:Landroid/os/Handler;

.field public c:I


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LiK0;->a:LkK0;

    .line 3
    new-instance p1, LhK0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, LhK0;-><init>(LiK0;Landroid/os/Looper;)V

    iput-object p1, p0, LiK0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LiK0;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
