.class public LV20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LV20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->c(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object p1, p0, LV20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->F:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p3, p0, LV20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 5
    iget-object p3, p3, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->F:Ljava/lang/Runnable;

    const-wide/16 p4, 0x1e

    .line 6
    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iget-object p1, p0, LV20;->w:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 8
    iput-object p2, p1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->F:Ljava/lang/Runnable;

    :cond_0
    return-void

    .line 9
    :cond_1
    throw p2
.end method
