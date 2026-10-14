.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final b:Ljava/lang/String; = "SeslDatePickerSpinnerLayout"


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/Object;

.field private J:Ljava/lang/reflect/Method;

.field private K:Ljava/lang/reflect/Method;

.field private L:Landroid/support/v7/widget/ia;

.field private M:[Landroid/widget/EditText;

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:I

.field private final S:I

.field private final T:I

.field private U:Landroid/widget/TextView$OnEditorActionListener;

.field a:Ldalvik/system/PathClassLoader;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/Calendar;

.field private f:Ljava/util/Calendar;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:I

.field private j:Ljava/util/Locale;

.field private k:Landroid/support/v7/widget/SeslDatePicker;

.field private final l:Landroid/support/v7/widget/SeslNumberPicker;

.field private final m:Landroid/support/v7/widget/SeslNumberPicker;

.field private final n:Landroid/support/v7/widget/SeslNumberPicker;

.field private final o:Landroid/widget/EditText;

.field private final p:Landroid/widget/EditText;

.field private final q:Landroid/widget/EditText;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field private final t:Landroid/widget/LinearLayout;

.field private u:[Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/Toast;

.field private x:Landroid/support/v7/widget/hu;

.field private y:Landroid/support/v7/widget/ho;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a:Ldalvik/system/PathClassLoader;

    new-instance p4, Landroid/support/v7/widget/hr;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/hr;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->L:Landroid/support/v7/widget/ia;

    const/4 p4, 0x3

    new-array v0, p4, [Landroid/widget/EditText;

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->N:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->O:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->P:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->Q:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->R:I

    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->S:I

    iput p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->T:I

    new-instance p4, Landroid/support/v7/widget/ht;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/ht;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->U:Landroid/widget/TextView$OnEditorActionListener;

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v2, Landroid/support/v7/b/i;->sesl_date_picker_spinner:I

    invoke-virtual {p4, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Locale;)V

    new-instance p4, Landroid/support/v7/widget/hs;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/hs;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    sget v2, Landroid/support/v7/b/g;->sesl_date_picker_pickers:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    sget v2, Landroid/support/v7/b/g;->sesl_date_picker_primary_empty:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r:Landroid/view/View;

    sget v2, Landroid/support/v7/b/g;->sesl_date_picker_secondary_empty:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->s:Landroid/view/View;

    sget v2, Landroid/support/v7/b/g;->sesl_date_picker_spinner_day:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    sget v3, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->o:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/hz;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/hz;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->L:Landroid/support/v7/widget/ia;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->c()V

    sget v2, Landroid/support/v7/b/g;->sesl_date_picker_spinner_month:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    sget v3, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->c()V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/hz;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->b()V

    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->L:Landroid/support/v7/widget/ia;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    sget p3, Landroid/support/v7/b/g;->sesl_date_picker_spinner_year:I

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    sget v2, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->q:Landroid/widget/EditText;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->L:Landroid/support/v7/widget/ia;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->c()V

    const-string p3, "sec-roboto-light"

    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroid/support/v7/b/h;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->H:I

    sget p3, Landroid/support/v7/b/h;->sesl_date_picker_spinner_number_text_size_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    sget p4, Landroid/support/v7/b/j;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->v:Ljava/lang/String;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->H:I

    int-to-float v2, v2

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v2, p3

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string v2, "my"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ml"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "bn"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ar"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fa"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ga"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget p3, Landroid/support/v7/b/h;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    goto :goto_2

    :cond_2
    const-string p2, "hu"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p3, p3, -0x4

    goto :goto_2

    :cond_3
    :goto_1
    sget p3, Landroid/support/v7/b/h;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    iget p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->H:I

    goto :goto_3

    :cond_5
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    :goto_3
    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroid/support/v7/b/j;->sesl_date_picker_day:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroid/support/v7/b/j;->sesl_date_picker_month:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroid/support/v7/b/j;->sesl_date_picker_year:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 p4, 0x5

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(III)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h()V

    return-void
.end method

.method static synthetic A(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    return-object p0
.end method

.method private a(IIZ)I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->I:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->K:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->B:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b:Ljava/lang/String;

    const-string p2, "method is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " InvocationTargetException"

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalArgumentException"

    goto :goto_0

    :catch_2
    move-exception p1

    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalAccessException"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    return-object p0
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private a(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v5, -0x1

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    iget-object v8, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    iget-object v8, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    iget-object v8, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v8}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object v7, v7, v1

    new-instance v8, Landroid/support/v7/widget/hw;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v9, v1, v2}, Landroid/support/v7/widget/hw;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object v7, v7, v5

    new-instance v8, Landroid/support/v7/widget/hw;

    invoke-direct {v8, p0, v3, v5, v4}, Landroid/support/v7/widget/hw;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object v7, v7, v5

    new-instance v8, Landroid/support/v7/widget/hw;

    invoke-direct {v8, p0, v0, v5, v4}, Landroid/support/v7/widget/hw;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object v7, v7, v6

    new-instance v8, Landroid/support/v7/widget/hw;

    invoke-direct {v8, p0, v3, v6, v2}, Landroid/support/v7/widget/hw;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->U:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object p1, p1, v1

    new-instance v0, Landroid/support/v7/widget/hv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/hv;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object p1, p1, v5

    new-instance v0, Landroid/support/v7/widget/hv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/hv;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    aget-object p1, p1, v6

    new-instance v0, Landroid/support/v7/widget/hv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/hv;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d(III)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(ZZZZ)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const p2, 0x2000005

    goto :goto_0

    :cond_0
    const p2, 0x2000006

    :goto_0
    sget p3, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(ZZZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    const/4 p2, 0x2

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p3

    const/16 p3, 0xb

    if-nez v2, :cond_1

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v3, :cond_2

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->E:I

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move p3, v2

    :goto_0
    const/16 v2, 0xb

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    move v2, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p3, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_6
    const/4 p3, 0x5

    if-eqz p4, :cond_d

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p4

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, p4

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v3, p4

    goto/16 :goto_3

    :cond_7
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v3, :cond_8

    iget p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->E:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->F:I

    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v4, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v5, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    invoke-direct {p0, p4, v2, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(IIZ)I

    move-result v2

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_3

    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    invoke-direct {p0, p4, v2, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(IIZ)I

    move-result p4

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v4, :cond_c

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    invoke-direct {p0, p4, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(IIZ)I

    move-result v2

    goto :goto_2

    :cond_c
    move v2, v3

    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_d
    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-boolean p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz p4, :cond_f

    iget p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->F:I

    :cond_f
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p4

    if-eqz p4, :cond_10

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    add-int/2addr p1, v1

    goto :goto_4

    :cond_10
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    :goto_4
    invoke-virtual {p4, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-boolean p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz p3, :cond_11

    iget p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->G:I

    :cond_11
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_12
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    if-eqz p1, :cond_14

    array-length p2, p1

    const/4 p3, 0x0

    :goto_5
    if-ge p3, p2, :cond_14

    aget-object p4, p1, p3

    invoke-virtual {p4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p4, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p4}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->C:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->D:I

    return p1
.end method

.method private c(III)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->E:I

    return p0
.end method

.method private d(III)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->E:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->F:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->G:I

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->F:I

    return p0
.end method

.method static synthetic f(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->G:I

    return p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x79

    const/16 v5, 0x4d

    const/16 v6, 0x64

    const/4 v7, 0x1

    if-ge v3, v1, :cond_5

    aget-char v8, v0, v3

    if-eq v8, v5, :cond_2

    if-eq v8, v6, :cond_1

    if-ne v8, v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    :goto_1
    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslNumberPicker;II)V

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->s:Landroid/view/View;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->t:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->r:Landroid/view/View;

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    aget-char v1, v0, v2

    aget-char v0, v0, v7

    if-eq v1, v5, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_6

    goto :goto_5

    :cond_6
    if-ne v0, v6, :cond_7

    const/4 v0, 0x3

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    :goto_4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(I)V

    goto :goto_5

    :cond_8
    invoke-direct {p0, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(I)V

    goto :goto_5

    :cond_9
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(I)V

    :goto_5
    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->A:Z

    return p0
.end method

.method static synthetic i(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->D:I

    return p0
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->x:Landroid/support/v7/widget/hu;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/hu;->a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V

    :cond_0
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic k(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->C:I

    return p0
.end method

.method static synthetic l(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic m(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->B:I

    return p0
.end method

.method static synthetic n(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->I:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic o(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->J:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic p(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i()V

    return-void
.end method

.method static synthetic q(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslDatePicker;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    return-object p0
.end method

.method static synthetic r(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->M:[Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic s(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic t(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic u(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic v(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->w:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic w(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->j:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic z(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->E:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public a(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d(III)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(ZZZZ)V

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(ZZZZ)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/ho;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->y:Landroid/support/v7/widget/ho;

    return-void
.end method

.method public a(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/hu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->x:Landroid/support/v7/widget/hu;

    return-void
.end method

.method protected a(Ljava/util/Locale;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->f:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->e:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i:I

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->u:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->y:Landroid/support/v7/widget/ho;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->k:Landroid/support/v7/widget/SeslDatePicker;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ho;->a(Landroid/support/v7/widget/SeslDatePicker;Z)V

    :cond_3
    return-void
.end method

.method public b()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->F:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public b(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d(III)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(ZZZZ)V

    return-void
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(ZZZZ)V

    return-void
.end method

.method public c()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->G:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->q:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->p:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->o:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->c:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/h;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->H:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/support/v7/b/h;->sesl_date_picker_spinner_number_text_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->H:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "my"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "bn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ar"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "fa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ga"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "hu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x4

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->h:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->l:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->m:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->n:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method
