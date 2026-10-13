.class public abstract Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;
.super Lz2;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public u0:Ljava/lang/String;

.field public v0:Z

.field public w0:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method


# virtual methods
.method public O()V
    .locals 0

    return-void
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract Q()I
.end method

.method public abstract R()Z
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Lz2;->c(Z)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->w0:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "guid"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->v0:Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->v0:Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->v0:Z

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->g(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f0e0031

    .line 10
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b039a

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 12
    invoke-virtual {v0, v1, p3}, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;->a(II)V

    .line 13
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    const v2, 0x7f0b03df

    .line 14
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 15
    new-instance v3, Lwy0;

    invoke-direct {v3, v0, v2}, Lwy0;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const v1, 0x7f0b00e9

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->Q()I

    move-result v1

    invoke-virtual {p1, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0e0032

    .line 19
    invoke-virtual {p1, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0008

    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0150

    .line 27
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->v0:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->P()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0150

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->O()V

    .line 22
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2

    .line 23
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b01f3

    if-ne p1, v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-static {p1}, LNQ0;->a(Landroid/content/Context;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public abstract g(Z)I
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    instance-of p2, p1, Landroid/widget/Spinner;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v0
.end method
