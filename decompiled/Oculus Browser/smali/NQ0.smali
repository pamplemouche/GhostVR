.class public LNQ0;
.super LiM0;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Landroid/text/InputFilter;

.field public final G:Landroid/text/TextWatcher;

.field public H:Landroid/text/TextWatcher;

.field public I:Landroid/view/View;

.field public J:LYQ0;

.field public K:Landroid/widget/Button;

.field public L:Z

.field public M:Landroid/view/ViewGroup;

.field public N:Landroid/view/View;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/animation/Animator;

.field public R:Ljava/lang/Runnable;

.field public S:Z

.field public final w:Landroid/content/Context;

.field public final x:LZQ0;

.field public final y:Landroid/os/Handler;

.field public final z:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LNQ0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x7f14024b

    .line 1
    invoke-direct {p0, p1, v0}, LiM0;-><init>(Landroid/app/Activity;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iput-object p1, p0, LNQ0;->w:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LNQ0;->x:LZQ0;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LNQ0;->y:Landroid/os/Handler;

    .line 6
    iput-boolean v2, p0, LNQ0;->S:Z

    .line 7
    new-instance v0, LEQ0;

    invoke-direct {v0, p0}, LEQ0;-><init>(LNQ0;)V

    iput-object v0, p0, LNQ0;->z:Landroid/widget/TextView$OnEditorActionListener;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LNQ0;->A:I

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070253

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LNQ0;->B:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LNQ0;->C:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LNQ0;->D:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LNQ0;->E:Ljava/util/List;

    const-string p1, "^[\\d- ]*$"

    .line 13
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 14
    new-instance v0, LFQ0;

    invoke-direct {v0, p0, p1}, LFQ0;-><init>(LNQ0;Ljava/util/regex/Pattern;)V

    iput-object v0, p0, LNQ0;->F:Landroid/text/InputFilter;

    .line 15
    new-instance p1, Lgz0;

    invoke-direct {p1}, Lgz0;-><init>()V

    iput-object p1, p0, LNQ0;->G:Landroid/text/TextWatcher;

    .line 16
    iput-object p2, p0, LNQ0;->R:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f13032a

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, p0, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;LTQ0;)Landroid/view/View;
    .locals 11

    .line 15
    iget v0, p2, LTQ0;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 16
    new-instance v0, LWQ0;

    iget-object v1, p0, LNQ0;->w:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, LWQ0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;LTQ0;)V

    .line 17
    iget-object p2, v0, LWQ0;->a:Landroid/view/View;

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 18
    new-instance v0, LXQ0;

    iget-object v1, p0, LNQ0;->w:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, LXQ0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;LTQ0;)V

    .line 19
    iget-object p2, v0, LXQ0;->a:Landroid/view/View;

    goto/16 :goto_4

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 20
    new-instance v0, LJQ0;

    invoke-direct {v0, p0}, LJQ0;-><init>(LNQ0;)V

    .line 21
    new-instance v1, LQQ0;

    iget-object v2, p0, LNQ0;->w:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, LQQ0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;LTQ0;Ljava/lang/Runnable;)V

    .line 22
    iget-object p2, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p2, p0, LNQ0;->E:Ljava/util/List;

    .line 24
    iget-object v0, v1, LQQ0;->A:Landroid/widget/Spinner;

    .line 25
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p2, v1, LQQ0;->y:Landroid/view/View;

    goto/16 :goto_4

    :cond_2
    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 27
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, LNQ0;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0348

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 29
    iget-object v1, p2, LTQ0;->p:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 32
    iget-object v3, p2, LTQ0;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    new-instance v1, LKQ0;

    invoke-direct {v1, p0, p2}, LKQ0;-><init>(LNQ0;LTQ0;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    :goto_0
    move-object p2, v0

    goto :goto_4

    :cond_4
    const/4 v1, 0x7

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 35
    iget-object v3, p0, LNQ0;->F:Landroid/text/InputFilter;

    .line 36
    iget-object v0, p0, LNQ0;->G:Landroid/text/TextWatcher;

    :goto_1
    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_2

    :cond_5
    if-ne v0, v2, :cond_6

    .line 37
    iget-object v0, p2, LTQ0;->i:Landroid/text/TextWatcher;

    .line 38
    iput-object v0, p0, LNQ0;->H:Landroid/text/TextWatcher;

    goto :goto_1

    :goto_2
    move-object v8, v0

    move-object v9, v3

    goto :goto_3

    :cond_6
    move-object v8, v3

    move-object v9, v8

    .line 39
    :goto_3
    new-instance v0, LeR0;

    iget-object v5, p0, LNQ0;->w:Landroid/content/Context;

    iget-object v7, p0, LNQ0;->z:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, LeR0;-><init>(Landroid/content/Context;LTQ0;Landroid/widget/TextView$OnEditorActionListener;Landroid/text/InputFilter;Landroid/text/TextWatcher;)V

    .line 40
    iget-object v3, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, v0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 42
    iget-object v4, p0, LNQ0;->D:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget p2, p2, LTQ0;->a:I

    if-ne p2, v1, :cond_7

    .line 44
    iput-object v3, p0, LNQ0;->O:Landroid/widget/TextView;

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_3

    .line 45
    iput-object v3, p0, LNQ0;->P:Landroid/widget/TextView;

    goto :goto_0

    .line 46
    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Z)Ljava/util/List;
    .locals 4

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 95
    :goto_0
    iget-object v2, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    iget-object v2, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUQ0;

    .line 97
    invoke-interface {v2}, LUQ0;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final a()V
    .locals 9

    .line 4
    iget-object v0, p0, LNQ0;->Q:Landroid/animation/Animator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    iget-object v1, p0, LNQ0;->I:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v6, v5

    aput v4, v6, v7

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 8
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v7

    .line 9
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10
    iput-object v3, p0, LNQ0;->Q:Landroid/animation/Animator;

    const-wide/16 v0, 0xc3

    .line 11
    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 12
    iget-object v0, p0, LNQ0;->Q:Landroid/animation/Animator;

    sget-object v1, LNM0;->b:Lb8;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object v0, p0, LNQ0;->Q:Landroid/animation/Animator;

    new-instance v1, LIQ0;

    invoke-direct {v1, p0}, LIQ0;-><init>(LNQ0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iget-object v0, p0, LNQ0;->Q:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(LYQ0;)V
    .locals 5

    .line 47
    iget-object v0, p0, LNQ0;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 49
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    iput-object p1, p0, LNQ0;->J:LYQ0;

    .line 51
    iget-object p1, p0, LNQ0;->w:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0156

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LNQ0;->I:Landroid/view/View;

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, LNQ0;->w:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e00ac

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LNQ0;->N:Landroid/view/View;

    .line 54
    iget-object p1, p0, LNQ0;->I:Landroid/view/View;

    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06011e

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1401bf

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 59
    iget-object v0, p0, LNQ0;->J:LYQ0;

    .line 60
    iget-object v0, v0, LYQ0;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, LNQ0;->R:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;->m0:Z

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f0b0150

    .line 65
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/widget/prefeditor/EditorDialogToolbar;->m0:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 67
    :cond_2
    new-instance v0, LGQ0;

    invoke-direct {v0, p0}, LGQ0;-><init>(LNQ0;)V

    .line 68
    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->f0:LTh;

    const v0, 0x7f1301d4

    .line 69
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->c(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0800fb

    const v4, 0x7f060079

    .line 71
    invoke-static {v0, v3, v4}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 73
    new-instance v0, LHQ0;

    invoke-direct {v0, p0}, LHQ0;-><init>(LNQ0;)V

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 75
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    const v3, 0x7f0b039a

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 78
    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;->a(II)V

    .line 79
    iget-object v1, p0, LNQ0;->I:Landroid/view/View;

    const v2, 0x7f0b03df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 84
    new-instance v2, Lwy0;

    invoke-direct {v2, v0, v1}, Lwy0;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 85
    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 86
    invoke-virtual {p0}, LNQ0;->b()V

    .line 87
    iget-object p1, p0, LNQ0;->I:Landroid/view/View;

    const v0, 0x7f0b0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, LNQ0;->K:Landroid/widget/Button;

    const v0, 0x7f0b0181

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 89
    iget-object p1, p0, LNQ0;->K:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, LNQ0;->I:Landroid/view/View;

    const v0, 0x7f0b0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0b0347

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final b()V
    .locals 9

    .line 1
    invoke-virtual {p0}, LNQ0;->c()V

    .line 2
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LNQ0;->M:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, LNQ0;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, LNQ0;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, LNQ0;->J:LYQ0;

    .line 8
    iget-object v2, v2, LYQ0;->b:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 10
    iget-object v2, p0, LNQ0;->J:LYQ0;

    .line 11
    iget-object v2, v2, LYQ0;->b:Ljava/util/List;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTQ0;

    const/4 v3, 0x0

    .line 13
    iget-object v4, p0, LNQ0;->J:LYQ0;

    .line 14
    iget-object v4, v4, LYQ0;->b:Ljava/util/List;

    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_1
    iget-boolean v6, v2, LTQ0;->z:Z

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    .line 17
    iget-object v3, p0, LNQ0;->J:LYQ0;

    .line 18
    iget-object v3, v3, LYQ0;->b:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    .line 19
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTQ0;

    .line 20
    iget-boolean v7, v3, LTQ0;->z:Z

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-nez v6, :cond_7

    if-eqz v4, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, LNQ0;->w:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object v6, p0, LNQ0;->M:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, v4, v2}, LNQ0;->a(Landroid/view/ViewGroup;LTQ0;)Landroid/view/View;

    move-result-object v6

    .line 24
    invoke-virtual {p0, v4, v3}, LNQ0;->a(Landroid/view/ViewGroup;LTQ0;)Landroid/view/View;

    move-result-object v4

    .line 25
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v7, 0x3f800000    # 1.0f

    .line 28
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 29
    iget v8, p0, LNQ0;->A:I

    .line 30
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 31
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 32
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 33
    invoke-virtual {v2}, LTQ0;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, LTQ0;->a()Z

    move-result v7

    if-nez v7, :cond_4

    .line 34
    :cond_3
    invoke-virtual {v3}, LTQ0;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, LTQ0;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 35
    :cond_4
    invoke-virtual {v2}, LTQ0;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v4, v6

    .line 36
    :cond_5
    iget v2, p0, LNQ0;->B:I

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 37
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    :cond_7
    :goto_2
    iget-object v3, p0, LNQ0;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v2}, LNQ0;->a(Landroid/view/ViewGroup;LTQ0;)Landroid/view/View;

    :goto_3
    add-int/2addr v1, v5

    goto/16 :goto_0

    .line 39
    :cond_8
    iget-object v0, p0, LNQ0;->M:Landroid/view/ViewGroup;

    iget-object v1, p0, LNQ0;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LNQ0;->O:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, LNQ0;->G:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, LNQ0;->O:Landroid/widget/TextView;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iput-object v1, p0, LNQ0;->O:Landroid/widget/TextView;

    .line 5
    :cond_0
    iget-object v0, p0, LNQ0;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, LNQ0;->H:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iput-object v1, p0, LNQ0;->P:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, LNQ0;->a(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, LNQ0;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUQ0;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3, v4}, LUQ0;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 7
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, LUQ0;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, LUQ0;

    goto :goto_1

    .line 10
    :cond_1
    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUQ0;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {v2}, LUQ0;->a()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUQ0;

    invoke-interface {v1}, LUQ0;->a()V

    .line 15
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LNQ0;->Q:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0181

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, LNQ0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, LNQ0;->L:Z

    .line 5
    invoke-virtual {p0}, LNQ0;->a()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0347

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, LNQ0;->a()V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LNQ0;->S:Z

    .line 2
    iget-object p1, p0, LNQ0;->J:LYQ0;

    if-eqz p1, :cond_3

    .line 3
    iget-boolean v0, p0, LNQ0;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, LYQ0;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    :cond_0
    iput-object v1, p1, LYQ0;->c:Ljava/lang/Runnable;

    .line 6
    iput-object v1, p1, LYQ0;->d:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, LNQ0;->L:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, LYQ0;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9
    :cond_2
    iput-object v1, p1, LYQ0;->c:Ljava/lang/Runnable;

    .line 10
    iput-object v1, p1, LYQ0;->d:Ljava/lang/Runnable;

    .line 11
    :goto_0
    iput-object v1, p0, LNQ0;->J:LYQ0;

    .line 12
    :cond_3
    invoke-virtual {p0}, LNQ0;->c()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, LNQ0;->Q:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, LNQ0;->S:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lrc1;->x:Lrc1;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrc1;->a(Landroid/view/View;)Z

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, LNQ0;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    iget-object v1, p0, LNQ0;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 9
    iget-object v0, p0, LNQ0;->I:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v2, [F

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 11
    iget-object v1, p0, LNQ0;->I:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 12
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, p1

    aput-object v1, v2, v5

    .line 13
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14
    iput-object v3, p0, LNQ0;->Q:Landroid/animation/Animator;

    const-wide/16 v0, 0x12c

    .line 15
    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 16
    iget-object p1, p0, LNQ0;->Q:Landroid/animation/Animator;

    sget-object v0, LNM0;->e:Ld8;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object p1, p0, LNQ0;->Q:Landroid/animation/Animator;

    new-instance v0, LLQ0;

    invoke-direct {v0, p0}, LLQ0;-><init>(LNQ0;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object p1, p0, LNQ0;->Q:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
