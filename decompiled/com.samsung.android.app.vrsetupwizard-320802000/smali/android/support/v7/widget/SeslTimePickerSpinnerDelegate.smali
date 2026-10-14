.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
.super Landroid/support/v7/widget/jr;


# static fields
.field private static final F:[C


# instance fields
.field private final A:I

.field private final B:I

.field private C:[Landroid/widget/EditText;

.field private D:Landroid/support/v7/widget/ia;

.field private E:Landroid/widget/TextView$OnEditorActionListener;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/support/v7/widget/SeslNumberPicker;

.field private final j:Landroid/support/v7/widget/SeslNumberPicker;

.field private final k:Landroid/support/v7/widget/SeslNumberPicker;

.field private final l:Landroid/widget/EditText;

.field private final m:Landroid/widget/EditText;

.field private final n:Landroid/widget/EditText;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/view/View;

.field private final q:Landroid/view/View;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field private final t:[Ljava/lang/String;

.field private u:Z

.field private v:Ljava/util/Calendar;

.field private w:Z

.field private x:C

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->F:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/jr;-><init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->f:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->u:Z

    iput-boolean p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->z:Z

    const/4 p5, 0x3

    new-array p5, p5, [Landroid/widget/EditText;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    new-instance p5, Landroid/support/v7/widget/jz;

    invoke-direct {p5, p0}, Landroid/support/v7/widget/jz;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->D:Landroid/support/v7/widget/ia;

    new-instance p5, Landroid/support/v7/widget/ka;

    invoke-direct {p5, p0}, Landroid/support/v7/widget/ka;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->E:Landroid/widget/TextView$OnEditorActionListener;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b:Landroid/content/Context;

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    sget v0, Landroid/support/v7/b/i;->sesl_time_picker_spinner:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p5, v0, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p5, Landroid/support/v7/b/g;->hour:I

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/j;->sesl_time_picker_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->D:Landroid/support/v7/widget/ia;

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v0, Landroid/support/v7/widget/jv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/jv;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    sget v0, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p5}, Landroid/support/v7/widget/SeslNumberPicker;->c()V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    const v0, 0x2000005

    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v0, 0x2

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->E:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p5, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v1, Landroid/support/v7/b/g;->divider:I

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l()V

    :cond_0
    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p5}, Landroid/support/v7/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    sget v1, Landroid/support/v7/b/e;->sesl_time_picker_dialog_min_width:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->A:I

    sget v1, Landroid/support/v7/b/e;->sesl_time_picker_spinner_height:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->B:I

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v1, Landroid/support/v7/b/g;->minute:I

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p5}, Landroid/support/v7/widget/SeslNumberPicker;->c()V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p5, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p5, v1, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p5, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/hz;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/hz;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/j;->sesl_time_picker_minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->D:Landroid/support/v7/widget/ia;

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v1, Landroid/support/v7/widget/jx;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/jx;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    sget v1, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p5, v1}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    const v1, 0x2000006

    invoke-virtual {p5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->E:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->t:[Ljava/lang/String;

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget p5, Landroid/support/v7/b/g;->amPm:I

    invoke-virtual {p2, p5}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v0, Landroid/support/v7/b/g;->sesl_timepicker_empty_1:I

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->r:Landroid/view/View;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v0, Landroid/support/v7/b/g;->sesl_timepicker_empty_2:I

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->s:Landroid/view/View;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v0, Landroid/support/v7/b/g;->sesl_timepicker_ampm_picker_margin_left:I

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p:Landroid/view/View;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    sget v0, Landroid/support/v7/b/g;->sesl_timepicker_ampm_picker_margin_right:I

    invoke-virtual {p5, v0}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q:Landroid/view/View;

    check-cast p2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setAmPm(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->t:[Ljava/lang/String;

    invoke-virtual {p2, p5}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p5, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->D:Landroid/support/v7/widget/ia;

    invoke-virtual {p2, p5}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/ia;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance p5, Landroid/support/v7/widget/jy;

    invoke-direct {p5, p0}, Landroid/support/v7/widget/jy;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p2, p5}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/ic;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    sget p5, Landroid/support/v7/b/g;->numberpicker_input:I

    invoke-virtual {p2, p5}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Landroid/support/v7/b/g;->sesl_timepicker_layout:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n()V

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Z)V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/SeslTimePicker;->setImportantForAccessibility(I)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->t()V

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x48

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x68

    if-eq v3, v4, :cond_1

    const/16 v4, 0x6b

    if-eq v3, v4, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Landroid/text/SpannableStringBuilder;I)I

    move-result p0

    invoke-virtual {v2, v0, p0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string p0, ":"

    return-object p0
.end method

.method private a(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p()V

    :cond_4
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    return p1
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/support/v4/e/a;->a(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/support/v4/e/a;->b(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/support/v4/e/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/support/v4/e/a;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->r()Z

    move-result v6

    if-eqz v6, :cond_0

    aput-object v4, v0, v3

    aput-object v1, v0, v5

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    aput-object v2, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    aput-object p0, v0, v5

    goto :goto_2

    :cond_3
    const-string p0, "SeslTimePickerSpinner"

    const-string v0, "LocaleData failed. Use DateFormatSymbols for ampm"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/text/DateFormatSymbols;

    invoke-direct {p0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)C
    .locals 0

    iget-char p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->x:C

    return p0
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->z:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d(Z)V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->z:Z

    return p0
.end method

.method static synthetic f(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    return p0
.end method

.method static synthetic g(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n()V

    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o()V

    return-void
.end method

.method static synthetic i(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m()V

    return-void
.end method

.method static synthetic i()[C
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->F:[C

    return-object v0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->w:Z

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iput-char v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->x:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    iput-boolean v4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->w:Z

    :cond_3
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->f:Z

    return p0
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    return-object p0
.end method

.method private l()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "sec-roboto-condensed-light"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "sec-roboto-light"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "sans-serif-thin"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_clock"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private n()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private o()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    const/16 v2, 0xc

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_5
    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d:Landroid/support/v7/widget/jt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d:Landroid/support/v7/widget/jt;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/jt;->a(Landroid/support/v7/widget/SeslTimePicker;II)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-char v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->x:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0x18

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0x17

    goto :goto_0

    :cond_1
    iget-char v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->x:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0xb

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v1, 0xc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->w:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/hz;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/hz;)V

    return-void
.end method

.method private static r()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static s()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/support/v7/widget/kd;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4, v2}, Landroid/support/v7/widget/kd;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/support/v7/widget/kd;

    invoke-direct {v1, p0, v4, v3}, Landroid/support/v7/widget/kd;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/support/v7/widget/kc;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/kc;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->C:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/support/v7/widget/kc;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/kc;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v0, v0, 0xc

    return v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/support/v7/widget/jv;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(IZ)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/js;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->e:Landroid/support/v7/widget/js;

    return-void
.end method

.method public a(Landroid/support/v7/widget/jt;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d:Landroid/support/v7/widget/jt;

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/jr;->a(Ljava/util/Locale;)V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a()I

    move-result v0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->q()V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(IZ)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->n()V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->p()V

    return-void
.end method

.method public b(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(I)V

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SavedState;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(I)V

    return-void
.end method

.method public b(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->v:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->u:Z

    return-void
.end method

.method public c(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->k:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->e:Landroid/support/v7/widget/js;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->e:Landroid/support/v7/widget/js;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/js;->a(Landroid/support/v7/widget/SeslTimePicker;Z)V

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->u:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->A:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->B:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->y:Z

    return v0
.end method
