.class public Lbh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic a:Lch0;


# direct methods
.method public constructor <init>(Lch0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh0;->a:Lch0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbh0;->a:Lch0;

    .line 2
    iget-object v1, v0, Lch0;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lch0;->b:Ljava/lang/Runnable;

    .line 5
    :cond_0
    sget-object v0, LZ01;->b:LFW;

    new-instance v1, Lah0;

    invoke-direct {v1, p0}, Lah0;-><init>(Lbh0;)V

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
