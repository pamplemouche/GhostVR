.class public LL10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:LN10;


# direct methods
.method public constructor <init>(LN10;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL10;->w:LN10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LL10;->w:LN10;

    .line 2
    iget-object p2, p1, LN10;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object p1, p0, LL10;->w:LN10;

    .line 5
    iget p2, p1, LN10;->D:I

    int-to-float p2, p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7
    iget-object p1, p0, LL10;->w:LN10;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, LN10;->E:Z

    .line 9
    invoke-virtual {p1, p2}, LN10;->a(Z)V

    return-void
.end method
