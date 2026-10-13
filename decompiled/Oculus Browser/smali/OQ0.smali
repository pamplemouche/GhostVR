.class public LOQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:LQQ0;


# direct methods
.method public constructor <init>(LQQ0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOQ0;->x:LQQ0;

    iput-object p2, p0, LOQ0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LOQ0;->x:LQQ0;

    .line 2
    iget p2, p1, LQQ0;->D:I

    if-eq p2, p3, :cond_3

    .line 3
    iget-object p2, p1, LQQ0;->x:LTQ0;

    .line 4
    iget-object p1, p1, LQQ0;->E:Landroid/widget/ArrayAdapter;

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 6
    iget-object p2, p2, LTQ0;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object p2, p0, LOQ0;->x:LQQ0;

    .line 8
    iget-object p2, p2, LQQ0;->x:LTQ0;

    .line 9
    iget-object p2, p2, LTQ0;->t:Ljava/lang/CharSequence;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    move-object p1, p4

    .line 10
    :cond_0
    iget-object p2, p0, LOQ0;->x:LQQ0;

    .line 11
    iput p3, p2, LQQ0;->D:I

    .line 12
    iget-object p2, p2, LQQ0;->x:LTQ0;

    .line 13
    iget-object p3, p0, LOQ0;->w:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 14
    iget-object p5, p2, LTQ0;->t:Ljava/lang/CharSequence;

    if-nez p5, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iput-object p1, p2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 16
    iget-object p2, p2, LTQ0;->u:Lorg/chromium/base/Callback;

    if-eqz p2, :cond_2

    .line 17
    new-instance p5, Landroid/util/Pair;

    invoke-direct {p5, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p5}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, LOQ0;->x:LQQ0;

    .line 19
    iget-object p2, p1, LQQ0;->x:LTQ0;

    .line 20
    iput-object p4, p2, LTQ0;->n:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, LQQ0;->a(Z)V

    :cond_3
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
