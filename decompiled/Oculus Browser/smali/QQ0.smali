.class public LQQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LUQ0;


# instance fields
.field public final A:Landroid/widget/Spinner;

.field public final B:Landroid/view/View;

.field public final C:Landroid/widget/TextView;

.field public D:I

.field public E:Landroid/widget/ArrayAdapter;

.field public F:LZQ0;

.field public final w:Landroid/content/Context;

.field public final x:LTQ0;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;LTQ0;Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQQ0;->w:Landroid/content/Context;

    .line 3
    iput-object p3, p0, LQQ0;->x:LTQ0;

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, LQQ0;->F:LZQ0;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0e0157

    invoke-virtual {p3, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LQQ0;->y:Landroid/view/View;

    const p3, 0x7f0b0420

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LQQ0;->z:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, LQQ0;->x:LTQ0;

    invoke-virtual {p3}, LTQ0;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LQQ0;->x:LTQ0;

    .line 9
    iget-object v1, v1, LTQ0;->p:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 11
    :cond_0
    iget-object p3, p0, LQQ0;->x:LTQ0;

    .line 12
    iget-object p3, p3, LTQ0;->p:Ljava/lang/CharSequence;

    .line 13
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, LQQ0;->y:Landroid/view/View;

    const p3, 0x7f0b0421

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LQQ0;->B:Landroid/view/View;

    .line 15
    iget-object p2, p0, LQQ0;->y:Landroid/view/View;

    const p3, 0x7f0b041e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LQQ0;->C:Landroid/widget/TextView;

    .line 16
    iget-object p2, p0, LQQ0;->x:LTQ0;

    .line 17
    iget-object p2, p2, LTQ0;->d:Ljava/util/List;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 19
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 20
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYy0;

    .line 21
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iget-object p2, p0, LQQ0;->x:LTQ0;

    .line 24
    iget-object p3, p2, LTQ0;->t:Ljava/lang/CharSequence;

    if-eqz p3, :cond_3

    .line 25
    iget-boolean p2, p2, LTQ0;->A:Z

    if-eqz p2, :cond_2

    .line 26
    new-instance p2, LgR0;

    const v3, 0x7f0e011c

    const v4, 0x7f0b041f

    iget-object p3, p0, LQQ0;->x:LTQ0;

    .line 27
    iget-object p3, p3, LTQ0;->t:Ljava/lang/CharSequence;

    .line 28
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LgR0;-><init>(Landroid/content/Context;IILjava/util/List;Ljava/lang/Object;)V

    iput-object p2, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 29
    :cond_2
    new-instance p2, LfR0;

    const v3, 0x7f0e011c

    const v4, 0x7f0b041f

    iget-object p3, p0, LQQ0;->x:LTQ0;

    .line 30
    iget-object p3, p3, LTQ0;->t:Ljava/lang/CharSequence;

    .line 31
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LfR0;-><init>(Landroid/content/Context;IILjava/util/List;Ljava/lang/Object;)V

    iput-object p2, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    .line 32
    :goto_2
    iget-object p1, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    const p2, 0x7f0e0155

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_3

    .line 33
    :cond_3
    new-instance p2, LBQ0;

    const p3, 0x7f0e011c

    invoke-direct {p2, p1, p3, v5}, LBQ0;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    const p1, 0x1090009

    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    :goto_3
    iget-object p1, p0, LQQ0;->x:LTQ0;

    .line 36
    iget-object p1, p1, LTQ0;->s:Ljava/lang/CharSequence;

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    .line 38
    :cond_4
    iget-object p1, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    iget-object p2, p0, LQQ0;->x:LTQ0;

    .line 39
    iget-object p2, p2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 40
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    :goto_4
    iput p1, p0, LQQ0;->D:I

    if-gez p1, :cond_5

    .line 41
    iget-object p1, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    iget-object p2, p0, LQQ0;->x:LTQ0;

    .line 42
    iget-object p3, p2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 43
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 44
    iget-object p2, p2, LTQ0;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, LQQ0;->D:I

    .line 46
    :cond_5
    iget p1, p0, LQQ0;->D:I

    if-gez p1, :cond_6

    iput v0, p0, LQQ0;->D:I

    .line 47
    :cond_6
    iget-object p1, p0, LQQ0;->y:Landroid/view/View;

    const p2, 0x7f0b041d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, LQQ0;->A:Landroid/widget/Spinner;

    .line 48
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, LQQ0;->A:Landroid/widget/Spinner;

    iget-object p2, p0, LQQ0;->E:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 50
    iget-object p1, p0, LQQ0;->A:Landroid/widget/Spinner;

    iget p2, p0, LQQ0;->D:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    iget-object p1, p0, LQQ0;->A:Landroid/widget/Spinner;

    new-instance p2, LOQ0;

    invoke-direct {p2, p0, p4}, LOQ0;-><init>(LQQ0;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 52
    iget-object p1, p0, LQQ0;->A:Landroid/widget/Spinner;

    new-instance p2, LPQ0;

    invoke-direct {p2, p0}, LPQ0;-><init>(LQQ0;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LQQ0;->x:LTQ0;

    invoke-virtual {v0}, LTQ0;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, LQQ0;->a(Z)V

    .line 3
    invoke-virtual {p0}, LQQ0;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 4
    iget-object v0, p0, LQQ0;->A:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, LQQ0;->w:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080129

    iget-object v2, p0, LQQ0;->w:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 8
    invoke-static {p1, v1, v2}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, LY0;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, LY0;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LQQ0;->x:LTQ0;

    .line 12
    iget-object v1, v1, LTQ0;->o:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, LQQ0;->B:Landroid/view/View;

    iget-object v0, p0, LQQ0;->w:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b4

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object p1, p0, LQQ0;->C:Landroid/widget/TextView;

    iget-object v0, p0, LQQ0;->x:LTQ0;

    .line 19
    iget-object v0, v0, LTQ0;->o:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, LQQ0;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, LQQ0;->B:Landroid/view/View;

    iget-object v1, p0, LQQ0;->w:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060114

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 27
    iget-object v0, p0, LQQ0;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, LQQ0;->C:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lrc1;->x:Lrc1;

    .line 2
    iget-object v1, p0, LQQ0;->A:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lrc1;->a(Landroid/view/View;)Z

    .line 3
    iget-object v0, p0, LQQ0;->A:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, LQQ0;->A:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, LQQ0;->A:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQQ0;->x:LTQ0;

    invoke-virtual {v0}, LTQ0;->d()Z

    move-result v0

    return v0
.end method
