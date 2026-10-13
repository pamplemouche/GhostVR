.class public LeR0;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements LUQ0;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/ImageView;

.field public D:I

.field public E:Z

.field public F:LZQ0;

.field public w:LTQ0;

.field public x:Landroid/widget/TextView$OnEditorActionListener;

.field public y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

.field public z:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LeR0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LTQ0;Landroid/widget/TextView$OnEditorActionListener;Landroid/text/InputFilter;Landroid/text/TextWatcher;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, LeR0;->w:LTQ0;

    .line 3
    iput-object p3, p0, LeR0;->x:Landroid/widget/TextView$OnEditorActionListener;

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, LeR0;->F:LZQ0;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0e015c

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0b0480

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    iput-object p3, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 7
    iget-object p3, p2, LTQ0;->p:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p2}, LTQ0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "*"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    :cond_0
    iget-object v0, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 10
    iput-object p3, v0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->B:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a()V

    const/16 v2, 0x800

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    .line 14
    iget-object v0, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    const v3, 0x7f0b0483

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    .line 15
    iget-object v3, p2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p3}, Landroid/widget/AutoCompleteTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p3, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, LeR0;->x:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p3, v0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 19
    iget-object p3, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    sget-object v0, LaR0;->w:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p3, 0x7f0b020d

    .line 20
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, LeR0;->A:Landroid/view/View;

    .line 21
    new-instance v0, LcR0;

    invoke-direct {v0, p0}, LcR0;-><init>(LeR0;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    iget-object p3, p2, LTQ0;->v:Ljava/lang/Runnable;

    if-eqz p3, :cond_1

    .line 23
    iget-object p3, p0, LeR0;->A:Landroid/view/View;

    const v0, 0x7f0b0027

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, LeR0;->B:Landroid/widget/ImageView;

    .line 24
    iget v0, p2, LTQ0;->x:I

    const v3, 0x7f06007a

    .line 25
    invoke-static {p1, v0, v3}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object p3, p0, LeR0;->B:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 27
    iget v0, p2, LTQ0;->y:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, LeR0;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, LeR0;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_1
    iget-object p1, p2, LTQ0;->k:LSQ0;

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, LeR0;->A:Landroid/view/View;

    const p3, 0x7f0b04e2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LeR0;->C:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :cond_2
    iget-object p1, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    new-instance p3, LbR0;

    invoke-direct {p3, p0}, LbR0;-><init>(LeR0;)V

    .line 35
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->A:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    new-instance p3, LdR0;

    invoke-direct {p3, p0, p2}, LdR0;-><init>(LeR0;LTQ0;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    iget-object p1, p2, LTQ0;->h:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 39
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x1090009

    .line 40
    iget-object v4, p2, LTQ0;->h:Ljava/util/List;

    .line 41
    invoke-direct {p3, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 44
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    new-array p3, v1, [Landroid/text/InputFilter;

    aput-object p4, p3, v2

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    if-eqz p5, :cond_5

    .line 45
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p5}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p5, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 47
    :cond_5
    iget p1, p2, LTQ0;->a:I

    packed-switch p1, :pswitch_data_0

    .line 48
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/16 p2, 0x2071

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/16 p2, 0x1071

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/16 p2, 0x2061

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const p2, 0x22071

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static final synthetic a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return p2

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p0, p0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, LeR0;->w:LTQ0;

    .line 6
    iget-object p1, p1, LTQ0;->o:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LeR0;->C:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LeR0;->w:LTQ0;

    .line 3
    iget-object v0, v0, LTQ0;->k:LSQ0;

    .line 4
    iget-object v1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v0, Lqu0;

    .line 5
    iget-object v0, v0, Lqu0;->a:LBu0;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, LBu0;->h:Ljava/util/Map;

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v3

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v3, v1, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAu0;

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 11
    :cond_2
    iget v0, v0, LAu0;->a:I

    .line 12
    :goto_1
    iget v1, p0, LeR0;->D:I

    if-ne v1, v0, :cond_3

    if-nez p1, :cond_3

    return-void

    .line 13
    :cond_3
    iput v0, p0, LeR0;->D:I

    if-nez v0, :cond_4

    .line 14
    iget-object p1, p0, LeR0;->C:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, LeR0;->C:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, LeR0;->D:I

    invoke-static {v0, v1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, LeR0;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, LeR0;->w:LTQ0;

    invoke-virtual {v0}, LTQ0;->d()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LeR0;->w:LTQ0;

    .line 2
    iget-object p1, p1, LTQ0;->v:Ljava/lang/Runnable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LeR0;->y:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    iget-object p2, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getY()F

    move-result p2

    add-float/2addr p2, p1

    iget-object p1, p0, LeR0;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget-object p1, p0, LeR0;->A:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, LeR0;->A:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 4
    iget-object p1, p0, LeR0;->A:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, LeR0;->b(Z)V

    :cond_0
    return-void
.end method
