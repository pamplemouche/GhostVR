.class public final synthetic LOx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final a:LTx0;


# direct methods
.method public constructor <init>(LTx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOx0;->a:LTx0;

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, LOx0;->a:LTx0;

    .line 1
    iget-object p2, p1, LTx0;->U:Landroid/widget/MediaController;

    invoke-virtual {p2}, Landroid/widget/MediaController;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p1, LTx0;->U:Landroid/widget/MediaController;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const p2, 0x7f0b0120

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object p3, p1, LTx0;->U:Landroid/widget/MediaController;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iget-object p2, p1, LTx0;->U:Landroid/widget/MediaController;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 4
    iget-object p2, p1, LTx0;->U:Landroid/widget/MediaController;

    iget-object v0, p1, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {p2, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 5
    iget-object p2, p1, LTx0;->U:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 6
    iget-object p1, p1, LTx0;->U:Landroid/widget/MediaController;

    invoke-virtual {p1, p3}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method
