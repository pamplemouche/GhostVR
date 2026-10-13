.class public final LZ4;
.super Landroid/media/VolumeProvider;
.source "PG"


# instance fields
.field public final synthetic a:La5;


# direct methods
.method public constructor <init>(IIILa5;)V
    .locals 0

    .line 1
    iput-object p4, p0, LZ4;->a:La5;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LZ4;->a:La5;

    check-cast v0, LW4;

    .line 2
    iget-object v0, v0, LW4;->a:LY4;

    check-cast v0, Ljb;

    .line 3
    iget-object v1, v0, Ljb;->f:Lkb;

    iget-object v1, v1, Lkb;->c:Lnb;

    iget-object v1, v1, Lnb;->i:Lgb;

    new-instance v2, Lib;

    invoke-direct {v2, v0, p1}, Lib;-><init>(Ljb;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LZ4;->a:La5;

    check-cast v0, LW4;

    .line 2
    iget-object v0, v0, LW4;->a:LY4;

    check-cast v0, Ljb;

    .line 3
    iget-object v1, v0, Ljb;->f:Lkb;

    iget-object v1, v1, Lkb;->c:Lnb;

    iget-object v1, v1, Lnb;->i:Lgb;

    new-instance v2, Lhb;

    invoke-direct {v2, v0, p1}, Lhb;-><init>(Ljb;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
