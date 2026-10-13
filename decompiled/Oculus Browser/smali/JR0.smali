.class public LJR0;
.super Lgc1;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements LFR0;


# instance fields
.field public final A:Ljava/lang/Runnable;

.field public final x:Landroid/content/Context;

.field public final y:LCR0;

.field public z:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LJR0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;LCR0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lgc1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    new-instance p2, LHR0;

    invoke-direct {p2, p0}, LHR0;-><init>(LJR0;)V

    iput-object p2, p0, LJR0;->A:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, LJR0;->x:Landroid/content/Context;

    .line 4
    iput-object p3, p0, LJR0;->y:LCR0;

    .line 5
    iget-object p1, p0, Lgc1;->w:Lkc1;

    invoke-interface {p1, p0}, Lkc1;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object p1, p0, Lgc1;->w:Lkc1;

    invoke-interface {p1, p0}, Lkc1;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 7
    iget-object p1, p0, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->e()V

    .line 8
    iget-object p1, p0, LJR0;->x:Landroid/content/Context;

    const p2, 0x7f130182

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lgc1;->w:Lkc1;

    invoke-interface {p2, p1}, Lkc1;->a(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, LJR0;->y:LCR0;

    invoke-interface {v0}, LCR0;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, LDR0;

    .line 2
    iget-object p2, p0, LJR0;->z:Ljava/util/List;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object p2, p0, LJR0;->y:LCR0;

    invoke-interface {p2, p1}, LCR0;->b(I)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, LDR0;

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/AutofillSuggestion;

    .line 3
    iget-boolean p2, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->f:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p2, p0, LJR0;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    iget-object p2, p0, LJR0;->y:LCR0;

    invoke-interface {p2, p1}, LCR0;->a(I)V

    const/4 p1, 0x1

    return p1
.end method
