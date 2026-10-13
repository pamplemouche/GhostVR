.class public LZd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public w:Lce;

.field public final synthetic x:Lee;


# direct methods
.method public constructor <init>(Lee;Lce;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZd;->x:Lee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LZd;->w:Lce;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LZd;->x:Lee;

    .line 2
    iget-object v0, v0, Lcd;->y:Lqd;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lqd;->A:Lod;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lod;->a(Lqd;)V

    .line 5
    :cond_0
    iget-object v0, p0, LZd;->x:Lee;

    .line 6
    iget-object v0, v0, Lcd;->D:LHd;

    .line 7
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LZd;->w:Lce;

    invoke-virtual {v0}, LDd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, LZd;->x:Lee;

    iget-object v1, p0, LZd;->w:Lce;

    iput-object v1, v0, Lee;->Q:Lce;

    .line 10
    :cond_1
    iget-object v0, p0, LZd;->x:Lee;

    const/4 v1, 0x0

    iput-object v1, v0, Lee;->S:LZd;

    return-void
.end method
