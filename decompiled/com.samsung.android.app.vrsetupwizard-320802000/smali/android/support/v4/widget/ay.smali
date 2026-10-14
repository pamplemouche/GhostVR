.class Landroid/support/v4/widget/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/aw;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/aw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/widget/aw;->a(Landroid/support/v4/widget/aw;Z)Z

    iget-object v0, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/aw;

    invoke-static {v0}, Landroid/support/v4/widget/aw;->a(Landroid/support/v4/widget/aw;)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/aw;

    invoke-static {v3}, Landroid/support/v4/widget/aw;->b(Landroid/support/v4/widget/aw;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/aw;->onPull(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ay;->a:Landroid/support/v4/widget/aw;

    invoke-static {v0}, Landroid/support/v4/widget/aw;->c(Landroid/support/v4/widget/aw;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
