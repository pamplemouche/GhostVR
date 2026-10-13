.class public Landroid/support/v7/widget/SearchView;
.super Lbg;
.source "PG"

# interfaces
.implements LOc;


# static fields
.field public static final D0:Luh;


# instance fields
.field public final A0:Landroid/widget/AdapterView$OnItemClickListener;

.field public final B0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public C0:Landroid/text/TextWatcher;

.field public final L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field public final M:Landroid/view/View;

.field public final N:Landroid/view/View;

.field public final O:Landroid/view/View;

.field public final P:Landroid/widget/ImageView;

.field public final Q:Landroid/widget/ImageView;

.field public final R:Landroid/widget/ImageView;

.field public final S:Landroid/widget/ImageView;

.field public final T:Landroid/view/View;

.field public U:Lzh;

.field public V:Landroid/graphics/Rect;

.field public W:Landroid/graphics/Rect;

.field public a0:[I

.field public b0:[I

.field public final c0:Landroid/widget/ImageView;

.field public final d0:Landroid/graphics/drawable/Drawable;

.field public final e0:Landroid/content/Intent;

.field public final f0:Landroid/content/Intent;

.field public final g0:Ljava/lang/CharSequence;

.field public h0:Lwh;

.field public i0:Lvh;

.field public j0:Landroid/view/View$OnFocusChangeListener;

.field public k0:Landroid/view/View$OnClickListener;

.field public l0:Z

.field public m0:Z

.field public n0:Ljava/lang/CharSequence;

.field public o0:Z

.field public p0:I

.field public q0:Ljava/lang/CharSequence;

.field public r0:Ljava/lang/CharSequence;

.field public s0:Z

.field public t0:I

.field public u0:Landroid/app/SearchableInfo;

.field public final v0:Ljava/lang/Runnable;

.field public w0:Ljava/lang/Runnable;

.field public final x0:Landroid/view/View$OnClickListener;

.field public y0:Landroid/view/View$OnKeyListener;

.field public final z0:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luh;

    invoke-direct {v0}, Luh;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->D0:Luh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401de

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->W:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->a0:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->b0:[I

    .line 8
    new-instance v1, Llh;

    invoke-direct {v1, p0}, Llh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->v0:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lmh;

    invoke-direct {v1, p0}, Lmh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->w0:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    new-instance v1, Lph;

    invoke-direct {v1, p0}, Lph;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v1, Lqh;

    invoke-direct {v1, p0}, Lqh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->y0:Landroid/view/View$OnKeyListener;

    .line 13
    new-instance v1, Lrh;

    invoke-direct {v1, p0}, Lrh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->z0:Landroid/widget/TextView$OnEditorActionListener;

    .line 14
    new-instance v1, Lsh;

    invoke-direct {v1, p0}, Lsh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->A0:Landroid/widget/AdapterView$OnItemClickListener;

    .line 15
    new-instance v1, Lth;

    invoke-direct {v1, p0}, Lth;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->B0:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 16
    new-instance v1, Lkh;

    invoke-direct {v1, p0}, Lkh;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->C0:Landroid/text/TextWatcher;

    .line 17
    sget-object v1, LeS;->D0:[I

    .line 18
    new-instance v2, LNh;

    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v2, p1, p2}, LNh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/16 p2, 0x9

    const p3, 0x7f0e0019

    .line 21
    invoke-virtual {v2, p2, p3}, LNh;->f(II)I

    move-result p2

    const/4 p3, 0x1

    .line 22
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b03b0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 24
    iput-object p0, p1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->A:Landroid/support/v7/widget/SearchView;

    const p1, 0x7f0b03a9

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View;

    const p1, 0x7f0b03ae

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/view/View;

    const p1, 0x7f0b0443

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View;

    const p1, 0x7f0b03a7

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    const p1, 0x7f0b03aa

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/ImageView;

    const p1, 0x7f0b03a8

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    const p1, 0x7f0b03b3

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/ImageView;

    const p1, 0x7f0b03ac

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Landroid/widget/ImageView;

    .line 33
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/view/View;

    const/16 p2, 0xa

    .line 34
    invoke-virtual {v2, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 35
    invoke-static {p1, p2}, LA7;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View;

    const/16 p2, 0xe

    .line 37
    invoke-virtual {v2, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    const/16 p2, 0xd

    invoke-virtual {v2, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc

    .line 44
    invoke-virtual {v2, p1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->d0:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1300cb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p1, p2}, LYh;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/16 p1, 0xf

    const p2, 0x7f0e0018

    .line 48
    invoke-virtual {v2, p1, p2}, LNh;->f(II)I

    const/4 p1, 0x5

    .line 49
    invoke-virtual {v2, p1, v3}, LNh;->f(II)I

    .line 50
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->C0:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->z0:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 57
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->A0:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->B0:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 59
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->y0:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 60
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance p2, Lnh;

    invoke-direct {p2, p0}, Lnh;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 p1, 0x8

    .line 61
    invoke-virtual {v2, p1, p3}, LNh;->a(IZ)Z

    move-result p1

    .line 62
    iget-boolean p2, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    .line 64
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->k()V

    :goto_0
    const/4 p1, -0x1

    .line 66
    invoke-virtual {v2, p3, p1}, LNh;->c(II)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 67
    iput p2, p0, Landroid/support/v7/widget/SearchView;->p0:I

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    const/4 p2, 0x6

    .line 69
    invoke-virtual {v2, p2}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SearchView;->g0:Ljava/lang/CharSequence;

    const/16 p2, 0xb

    .line 70
    invoke-virtual {v2, p2}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SearchView;->n0:Ljava/lang/CharSequence;

    const/4 p2, 0x3

    .line 71
    invoke-virtual {v2, p2, p1}, LNh;->d(II)I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 72
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 73
    :cond_2
    invoke-virtual {v2, v0, p1}, LNh;->d(II)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 74
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 75
    :cond_3
    invoke-virtual {v2, v3, p3}, LNh;->a(IZ)Z

    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 77
    iget-object p1, v2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->e0:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->e0:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->T:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 84
    new-instance p2, Loh;

    invoke-direct {p2, p0}, Loh;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    :cond_4
    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->k()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->r0:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 18
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p5, :cond_3

    const-string p1, "action_key"

    .line 20
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 21
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public a()V
    .locals 3

    .line 8
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s0:Z

    .line 10
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->t0:I

    .line 11
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->r0:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->h()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->f()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->g()V

    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->m0:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 2
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    if-eqz p1, :cond_3

    :cond_2
    const/16 v0, 0x8

    .line 7
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->i()V

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->o0:Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 5
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->o0:Z

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->t0:I

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s0:Z

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    sget-object v0, Landroid/support/v7/widget/SearchView;->D0:Luh;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 2
    iget-object v0, v0, Luh;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->D0:Luh;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 5
    iget-object v0, v0, Luh;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i0:Lvh;

    if-eqz v0, :cond_0

    check-cast v0, LDz0;

    .line 5
    iget-object v0, v0, LDz0;->a:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 6
    iput-object v2, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->v0:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->x0:LFz0;

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->y0:Ljava/util/List;

    invoke-virtual {v2, v0}, LOz0;->a(Ljava/util/List;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 9
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k0:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->h0:Lwh;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Z)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->s0:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g0:Ljava/lang/CharSequence;

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 4
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->l0:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->d0:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->d0:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->d0:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v2

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Lbg;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/graphics/Rect;

    .line 3
    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->a0:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->b0:[I

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5
    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->a0:[I

    const/4 v0, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->b0:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 6
    aget p4, p4, v0

    aget v2, v2, v0

    sub-int/2addr p4, v2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->W:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->U:Lzh;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lzh;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->W:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/graphics/Rect;

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Lzh;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->U:Lzh;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->W:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->V:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Lzh;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->m0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lbg;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const v1, 0x7f070034

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->p0:I

    if-lez v0, :cond_6

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/SearchView;->p0:I

    if-lez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 10
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SearchView;->p0:I

    if-lez v0, :cond_5

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const v1, 0x7f070033

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    .line 19
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 21
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 22
    :goto_1
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 23
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 24
    invoke-super {p0, p1, p2}, Lbg;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$SavedState;

    .line 4
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-boolean p1, p1, Landroid/support/v7/widget/SearchView$SavedState;->y:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->m0:Z

    .line 4
    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$SavedState;->y:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->v0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->o0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->m0:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    :cond_2
    return p1

    .line 6
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
