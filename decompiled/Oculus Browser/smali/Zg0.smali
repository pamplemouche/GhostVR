.class public LZg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic w:Lch0;


# direct methods
.method public constructor <init>(Lch0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZg0;->w:Lch0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    sget-object v0, LFW;->o:LFW;

    new-instance v1, LYg0;

    invoke-direct {v1, p0}, LYg0;-><init>(LZg0;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 3
    iget-object v0, p0, LZg0;->w:Lch0;

    iget-object v0, v0, Lch0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
