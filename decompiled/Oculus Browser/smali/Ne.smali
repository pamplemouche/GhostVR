.class public LNe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic w:LPe;


# direct methods
.method public constructor <init>(LPe;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNe;->w:LPe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, LNe;->w:LPe;

    iget-object v1, v0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v1}, LA7;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, LPe;->d0:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LNe;->w:LPe;

    invoke-virtual {v0}, Lmg;->dismiss()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, LNe;->w:LPe;

    invoke-virtual {v0}, LPe;->e()V

    .line 5
    iget-object v0, p0, LNe;->w:LPe;

    invoke-static {v0}, LPe;->a(LPe;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
