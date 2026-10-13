.class public LPs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:LWs0;


# direct methods
.method public constructor <init>(LWs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPs0;->w:LWs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LPs0;->w:LWs0;

    .line 2
    iget-object p1, p1, LWs0;->a:LZs0;

    .line 3
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object p1, p0, LPs0;->w:LWs0;

    .line 5
    iget-object p1, p1, LWs0;->a:LZs0;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, LPs0;->w:LWs0;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, LWs0;->a(LWs0;ZLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
