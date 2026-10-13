.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;
.super LPy0;
.source "PG"


# instance fields
.field public A0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

.field public B0:Landroid/widget/EditText;

.field public C0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

.field public D0:Landroid/widget/EditText;

.field public E0:Landroid/widget/Spinner;

.field public F0:Landroid/widget/Spinner;

.field public G0:I

.field public H0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LPy0;-><init>()V

    return-void
.end method


# virtual methods
.method public O()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 5
    invoke-static {v3, v4, v0, v1}, LJ/N;->MIAwuIe5(JLjava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    sget-object v2, LNv0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMv0;

    .line 8
    sget-object v4, LZ01;->a:LFW;

    new-instance v5, LLv0;

    invoke-direct {v5, v0, v3, v1}, LLv0;-><init>(LNv0;LMv0;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 9
    invoke-static {v4, v5, v6, v7}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 10
    :cond_0
    throw v2

    .line 11
    :cond_1
    throw v2

    :cond_2
    return-void
.end method

.method public Q()I
    .locals 1

    const v0, 0x7f0e0034

    return v0
.end method

.method public R()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->D0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->C0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->w0:Landroid/content/Context;

    const v2, 0x7f1304ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-wide v3, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 6
    invoke-static {v3, v4, v1, v0}, LJ/N;->MHzz0BSK(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 7
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->b:Ljava/lang/String;

    const-string v3, "Chrome settings"

    .line 9
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->c:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->B0:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 11
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->f:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->i:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->j:Ljava/lang/String;

    .line 16
    iget-object v3, p0, LPy0;->y0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v3

    .line 17
    iput-object v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->m:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->b:Ljava/lang/String;

    .line 20
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object v1

    invoke-virtual {v1, v0}, LNv0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)V

    .line 21
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->v0:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillCreditCardsAdded"

    .line 22
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public final S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->D0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lz2;->e0:Landroid/view/View;

    const v2, 0x7f0b0096

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    invoke-super {p0, p1, p2, p3}, LPy0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b012a

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->A0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    const p2, 0x7f0b0129

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->B0:Landroid/widget/EditText;

    const p2, 0x7f0b012c

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->C0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    const p2, 0x7f0b012b

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->D0:Landroid/widget/EditText;

    .line 9
    new-instance p3, Lgz0;

    invoke-direct {p3}, Lgz0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0b0059

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    const p2, 0x7f0b005a

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    .line 12
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p3

    const v0, 0x1090008

    invoke-direct {p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 14
    invoke-virtual {p3, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 15
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MMMM (MM)"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    const/4 v5, 0x2

    .line 16
    invoke-virtual {p3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 17
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x1090009

    .line 18
    invoke-virtual {p2, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 19
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    invoke-virtual {v4, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 20
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    invoke-direct {p2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    move v0, p3

    :goto_1
    add-int/lit8 v4, p3, 0xa

    if-ge v0, v4, :cond_1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 24
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 25
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    if-nez p2, :cond_2

    .line 26
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->A0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_5

    .line 27
    :cond_2
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 28
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->A0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 29
    iget-object p2, p2, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    .line 30
    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_3
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 32
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->C0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 33
    iget-object p2, p2, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    .line 34
    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_4
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->A0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 36
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 37
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    :goto_2
    sub-int/2addr p2, v1

    .line 38
    iput p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->G0:I

    .line 39
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 40
    iput v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->H0:I

    const/4 p2, 0x0

    .line 41
    :goto_3
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p3

    invoke-interface {p3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p3

    if-ge p2, p3, :cond_7

    .line 42
    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 43
    iput p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->H0:I

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_8

    .line 44
    iget-object p2, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 45
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    .line 46
    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/ArrayAdapter;

    .line 47
    iget-object p3, p0, LPy0;->x0:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 48
    iput v3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->H0:I

    .line 49
    :cond_8
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    iget p3, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->H0:I

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 50
    :goto_5
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->S()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LPy0;->b(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->B0:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->D0:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public g(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f13016c

    goto :goto_0

    :cond_0
    const p1, 0x7f130173

    :goto_0
    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->F0:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    iget p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->H0:I

    if-ne p3, p2, :cond_2

    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->E0:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    iget p2, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->G0:I

    if-ne p3, p2, :cond_2

    :cond_1
    iget-object p2, p0, LPy0;->y0:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_3

    iget p1, p0, LPy0;->z0:I

    if-eq p3, p1, :cond_3

    .line 2
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillLocalCardEditor;->S()V

    :cond_3
    return-void
.end method
