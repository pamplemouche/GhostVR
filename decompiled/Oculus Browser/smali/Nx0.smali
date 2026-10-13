.class public final synthetic LNx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final a:LTx0;


# direct methods
.method public constructor <init>(LTx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNx0;->a:LTx0;

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, LNx0;->a:LTx0;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, LOx0;

    invoke-direct {v1, v0}, LOx0;-><init>(LTx0;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 2
    iget-object p1, v0, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
