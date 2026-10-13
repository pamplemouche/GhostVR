.class public LcR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:LeR0;


# direct methods
.method public constructor <init>(LeR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LcR0;->w:LeR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LcR0;->w:LeR0;

    .line 2
    iget-object p1, p1, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 3
    invoke-static {p1}, LA7;->m(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, LcR0;->w:LeR0;

    .line 4
    iget-object p3, p3, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 5
    invoke-virtual {p3}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, LcR0;->w:LeR0;

    .line 6
    iget-object p4, p4, LeR0;->A:Landroid/view/View;

    .line 7
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, LcR0;->w:LeR0;

    .line 8
    iget-object p5, p5, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 9
    invoke-virtual {p5}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result p5

    .line 10
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
