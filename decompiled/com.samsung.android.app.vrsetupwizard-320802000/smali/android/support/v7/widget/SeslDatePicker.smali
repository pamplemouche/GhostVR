.class public Landroid/support/v7/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/support/v7/widget/jp;
.implements Landroid/support/v7/widget/jq;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static ax:Landroid/content/pm/PackageManager;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/support/v7/widget/hj;

.field private N:Landroid/support/v4/view/ViewPager;

.field private O:Landroid/widget/RelativeLayout;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/support/v7/widget/hl;

.field private S:Landroid/widget/ViewAnimator;

.field private T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/RelativeLayout;

.field private W:Ljava/text/SimpleDateFormat;

.field a:Ldalvik/system/PathClassLoader;

.field private aA:Ljava/lang/reflect/Field;

.field private aB:Ljava/lang/reflect/Field;

.field private aC:Ljava/lang/reflect/Field;

.field private final aD:Landroid/view/View$OnFocusChangeListener;

.field private aE:Landroid/os/Handler;

.field private aF:Landroid/view/View$OnTouchListener;

.field private aG:Landroid/view/View$OnKeyListener;

.field private aH:Landroid/view/View$OnClickListener;

.field private aa:Landroid/widget/ImageButton;

.field private ab:Landroid/widget/ImageButton;

.field private ac:Landroid/view/View;

.field private ad:Landroid/view/View;

.field private ae:Landroid/support/v7/widget/hn;

.field private af:Landroid/support/v7/widget/hq;

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:[I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ay:Ljava/lang/Object;

.field private az:Ljava/lang/reflect/Method;

.field private b:Landroid/support/v7/widget/hk;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Locale;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Calendar;

.field private m:Ljava/util/Calendar;

.field private n:Ljava/util/Calendar;

.field private o:Ljava/util/Calendar;

.field private p:Ljava/util/Calendar;

.field private q:Ljava/util/Calendar;

.field private r:Ljava/util/Calendar;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->h:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->k:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->y:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->z:I

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->H:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->L:I

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ag:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aj:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ak:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->a:Ldalvik/system/PathClassLoader;

    new-instance v3, Landroid/support/v7/widget/gy;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/gy;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aD:Landroid/view/View$OnFocusChangeListener;

    new-instance v3, Landroid/support/v7/widget/ha;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/ha;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    new-instance v3, Landroid/support/v7/widget/hb;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/hb;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aF:Landroid/view/View$OnTouchListener;

    new-instance v3, Landroid/support/v7/widget/hc;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/hc;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aG:Landroid/view/View$OnKeyListener;

    new-instance v3, Landroid/support/v7/widget/hd;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/hd;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aH:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->b()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->f()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->f:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->g()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->g:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->h()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->j:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->j:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    const-string v5, "EEEEE"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    const-string v5, "EEE"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->W:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Landroid/support/v7/b/l;->DatePicker:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Landroid/support/v7/b/l;->DatePicker_android_startYear:I

    const/16 v6, 0x76e

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget v6, Landroid/support/v7/b/l;->DatePicker_android_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v7, v5, v0, v1}, Ljava/util/Calendar;->set(III)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/16 v7, 0xb

    const/16 v8, 0x1f

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    sget v6, Landroid/support/v7/b/i;->sesl_date_picker:I

    goto :goto_1

    :cond_1
    sget v6, Landroid/support/v7/b/i;->sesl_date_picker_legacy:I

    :goto_1
    invoke-virtual {v5, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v5, Landroid/support/v7/b/l;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/b/l;->DatePicker:[I

    invoke-virtual {v4, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    new-instance p3, Landroid/support/v7/widget/hl;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    invoke-direct {p3, p0, p4, p2}, Landroid/support/v7/widget/hl;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->R:Landroid/support/v7/widget/hl;

    sget p3, Landroid/support/v7/b/l;->DatePicker_dayNumberTextColor:I

    sget p4, Landroid/support/v7/b/d;->sesl_date_picker_normal_day_number_text_color_light:I

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    sget p4, Landroid/support/v7/b/l;->DatePicker_btnTintColor:I

    sget v4, Landroid/support/v7/b/d;->sesl_date_picker_button_tint_color_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, p4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    new-instance p2, Landroid/support/v7/widget/hj;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/hj;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {p2, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    new-instance v4, Landroid/support/v7/widget/hi;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/widget/hi;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/gy;)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ce;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->setMouseWheelEventSupport(Z)V

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->z:I

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->O:Landroid/widget/RelativeLayout;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_view_animator:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ViewAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->S:Landroid/widget/ViewAnimator;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_spinner_view:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance p3, Landroid/support/v7/widget/he;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/he;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {p2, p0, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/hu;)V

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    new-instance p3, Landroid/support/v7/widget/hf;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/hf;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->d()V

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->E:I

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_day_of_the_week:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->Q:Landroid/widget/LinearLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->Q:Landroid/widget/LinearLayout;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->R:Landroid/support/v7/widget/hl;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_layout:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->U:Landroid/widget/LinearLayout;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_layout:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->V:Landroid/widget/RelativeLayout;

    iget-boolean p2, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    if-eqz p2, :cond_3

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    sget v0, Landroid/support/v7/b/j;->sesl_date_picker_increment_month:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    sget v0, Landroid/support/v7/b/j;->sesl_date_picker_decrement_month:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    :goto_2
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aF:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aF:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aG:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aG:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aD:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->aD:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101045c

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->H:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->A:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->B:I

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->D:I

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    sget p2, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    sget p1, Landroid/support/v7/b/g;->sesl_date_picker_between_header_and_weekend:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ac:Landroid/view/View;

    sget p1, Landroid/support/v7/b/g;->sesl_date_picker_between_weekend_and_calender:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ad:Landroid/view/View;

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->t:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->u:I

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->A:I

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->t:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->u:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->B:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->v:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->b(Z)V

    return-void
.end method

.method static synthetic A(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    return p0
.end method

.method static synthetic B(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic C(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic D(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    return p0
.end method

.method static synthetic E(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    return p0
.end method

.method static synthetic F(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->aj:Z

    return p0
.end method

.method static synthetic G(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic H(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/hj;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    return-object p0
.end method

.method static synthetic I(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->w:I

    return p0
.end method

.method static synthetic J(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    return p0
.end method

.method static synthetic K(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    return p0
.end method

.method static synthetic L(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->x:I

    return p0
.end method

.method static synthetic M(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->W:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic N(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->z:I

    return p0
.end method

.method static synthetic O(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a(I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->al:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->al:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/b/e;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->E:I

    mul-int/lit8 v0, p2, 0x2

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, p2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown measure mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_5
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->E:I

    mul-int/lit8 p2, p1, 0x2

    sub-int p2, v2, p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v2, p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    return p1
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Picker"

    if-nez p2, :cond_0

    const-string p1, "field is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalArgumentException"

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalAccessException"

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Picker"

    if-nez p2, :cond_0

    const-string p1, "method is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " InvocationTargetException"

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalArgumentException"

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalAccessException"

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    const-string v2, "LLLL y"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    const-string v2, "y LLLL"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {v3, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v8, 0x24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v6

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

.method private a()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ae:Landroid/support/v7/widget/hn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v3, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ae:Landroid/support/v7/widget/hn;

    invoke-interface {v3, p0, v0, v1, v2}, Landroid/support/v7/widget/hn;->a(Landroid/support/v7/widget/SeslDatePicker;III)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->c()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->b:Landroid/support/v7/widget/hk;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/hk;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/hk;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->b:Landroid/support/v7/widget/hk;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->b:Landroid/support/v7/widget/hk;

    invoke-static {v0, p1}, Landroid/support/v7/widget/hk;->a(Landroid/support/v7/widget/hk;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->b:Landroid/support/v7/widget/hk;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->e:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    return p1
.end method

.method private b(I)Landroid/support/v7/widget/hm;
    .locals 8

    new-instance v0, Landroid/support/v7/widget/hm;

    invoke-direct {v0}, Landroid/support/v7/widget/hm;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_5

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->a(I)I

    move-result v3

    if-ge p1, v3, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->a(I)I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->c(I)I

    move-result v1

    const/16 v3, 0xd

    const/16 v6, 0xc

    if-le v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0xd

    :goto_2
    if-ge p1, v1, :cond_2

    move v7, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, p1, -0x1

    :goto_3
    if-ne v6, v3, :cond_3

    if-ne v1, p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    move v1, v2

    move p1, v4

    move v4, v7

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v0, v1, v4, v5, p1}, Landroid/support/v7/widget/hm;->a(IIIZ)V

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    return-object p0
.end method

.method private b(Z)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v4, :cond_0

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->ak:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->c(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v5

    if-ne v2, v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->a(I)I

    move-result v2

    :goto_1
    add-int/2addr v4, v2

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    if-eq v2, v3, :cond_6

    :cond_4
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    if-ne v2, v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    if-eq v0, v3, :cond_6

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    if-eqz v0, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :cond_7
    iput v4, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4, p1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    return p1
.end method

.method private c(I)I
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ay:Ljava/lang/Object;

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->aA:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->ay:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aB:Ljava/lang/reflect/Field;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ay:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->aC:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int p1, p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ay:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->az:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-direct {p0, v0, v2, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p1, "Picker"

    const-string v0, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->b:Landroid/support/v7/widget/hk;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/gz;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/gz;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslDatePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->b(Z)V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    return p1
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/e;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aj:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    return-object p0
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ay:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->a:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->al:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xc

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->c(I)I

    move-result v5

    if-gt v5, v4, :cond_2

    if-ge v5, v2, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->c(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    if-ge v2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_2
    move v4, v2

    goto :goto_3

    :cond_6
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->c(I)I

    move-result v2

    if-le v2, v4, :cond_7

    goto :goto_3

    :cond_7
    const/16 v4, 0xd

    :goto_3
    add-int/2addr v0, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->al:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    sub-int v3, v1, v3

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    return p1
.end method

.method static synthetic f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->aa:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    return p1
.end method

.method static synthetic g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ab:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "com.android.calendar"

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    invoke-static {v1, v0}, Landroid/support/v4/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Landroid/support/v7/widget/SeslDatePicker;->ax:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    return p0
.end method

.method static synthetic h(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    return p1
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic i(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->J:I

    return p0
.end method

.method static synthetic i(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    return p1
.end method

.method static synthetic j(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->H:I

    return p0
.end method

.method static synthetic j(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    return p1
.end method

.method static synthetic k(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    return p1
.end method

.method static synthetic k(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    return p0
.end method

.method static synthetic l(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->J:I

    return p1
.end method

.method static synthetic l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic m(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic m(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    return p0
.end method

.method static synthetic n(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    return p0
.end method

.method static synthetic n(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/hm;
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->b(I)Landroid/support/v7/widget/hm;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->w:I

    return p1
.end method

.method static synthetic o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic p(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->x:I

    return p1
.end method

.method static synthetic p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic q(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    return p1
.end method

.method static synthetic q(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->a()V

    return-void
.end method

.method static synthetic r(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    return p0
.end method

.method static synthetic s(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    return p0
.end method

.method static synthetic t(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    return p0
.end method

.method static synthetic u(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ag:Z

    return p0
.end method

.method static synthetic v(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    return p0
.end method

.method static synthetic w(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    return p0
.end method

.method static synthetic x(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    return p0
.end method

.method static synthetic y(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    return p0
.end method

.method static synthetic z(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    return p0
.end method


# virtual methods
.method public a(III)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e8

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    :cond_3
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->a(Z)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->a()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/jn;III)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayClick day : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->a(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v8, :cond_0

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    :cond_0
    invoke-virtual {v0, v4, v3, v2}, Landroid/support/v7/widget/SeslDatePicker;->a(III)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v9

    sub-int v9, v4, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    if-eq v9, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-ne v4, v1, :cond_2

    if-ne v3, v6, :cond_2

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->y:I

    if-ne v2, v1, :cond_2

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-nez v1, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->y:I

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {v1}, Landroid/support/v7/widget/hj;->c()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    move v10, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1f

    const/16 v10, 0x1f

    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ag:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->a:Ldalvik/system/PathClassLoader;

    move-object/from16 v15, p1

    invoke-virtual {v15, v1, v8, v9}, Landroid/support/v7/widget/jn;->a(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_6
    move-object/from16 v15, p1

    :goto_3
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-boolean v12, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v12, :cond_7

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iget v11, v0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    move v12, v5

    move v14, v7

    move/from16 v16, v8

    move/from16 v19, v9

    goto :goto_4

    :cond_7
    move/from16 v16, v5

    move/from16 v19, v7

    move v12, v8

    move v14, v9

    :goto_4
    move/from16 v20, v11

    move v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget v13, v0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    move/from16 v17, v1

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move v7, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v1 .. v18}, Landroid/support/v7/widget/jn;->a(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/jn;->invalidate()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/jn;IIIZZ)V
    .locals 1

    iget-boolean p5, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    if-eqz p6, :cond_0

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    add-int/2addr p2, v0

    :goto_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->b(I)Landroid/support/v7/widget/hm;

    move-result-object p2

    iget p3, p2, Landroid/support/v7/widget/hm;->a:I

    iget p5, p2, Landroid/support/v7/widget/hm;->b:I

    iget-boolean p2, p2, Landroid/support/v7/widget/hm;->d:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePicker;->ai:Z

    if-eqz p6, :cond_1

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_1
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    add-int/2addr p2, v0

    :goto_1
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    iget p6, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    invoke-virtual {p2, p6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, p1, p3, p5, p4}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/jn;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/jn;III)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Z)V

    :goto_2
    return-void
.end method

.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->af:Landroid/support/v7/widget/hq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/hq;->a(Z)V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    return v0
.end method

.method public getDateMode()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->L:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->k:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_prev_button:I

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->J:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_3
    sget v0, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    if-eqz p1, :cond_4

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    if-nez p1, :cond_2

    return-void

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->J:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    :cond_5
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->b()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->f()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->f:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->d:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->h()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->j:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_1
    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->W:Ljava/text/SimpleDateFormat;

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->U:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->h:Z

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->A:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->B:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->t:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->u:I

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->A:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->t:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->u:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->B:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->v:I

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->e:Z

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->d()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->c()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_prev_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->a(ZJ)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v7/b/g;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->J:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->a(ZJ)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->a(II)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->v:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->setCurrentViewType(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->h:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->D:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    if-ne v0, v3, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->h:Z

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->D:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->V:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->A:I

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->Q:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->R:Landroid/support/v7/widget/hl;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->G:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->F:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/hl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->C:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->B:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->N:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ac:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->t:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ad:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->u:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    check-cast p1, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->c()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->b()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->a()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v4, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    :cond_0
    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v9, -0x1

    new-instance v11, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILandroid/support/v7/widget/gy;)V

    return-object v11
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 6

    const/16 v0, 0x3e8

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    if-eq v2, p1, :cond_5

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v2, v1, :cond_2

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v5, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v5, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v5, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iget v4, p0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    :cond_3
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v2, v4, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(III)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->S:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {v1}, Landroid/support/v7/widget/hj;->c()V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d()V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->S:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDateMode(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-boolean v7, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v7, :cond_2

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-boolean v7, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v7, :cond_2

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    :cond_2
    :goto_0
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v7, v1, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(III)V

    :goto_1
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    const/4 v5, 0x0

    if-ne v1, v4, :cond_3

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    iget-object v1, v1, Landroid/support/v7/widget/hj;->a:Landroid/util/SparseArray;

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->I:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/jn;

    if-eqz v1, :cond_8

    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-boolean v9, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v9, :cond_4

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->am:I

    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->an:I

    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->ao:I

    :cond_4
    move v9, v6

    move/from16 v24, v8

    move v8, v7

    move/from16 v7, v24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v6

    move v11, v6

    goto :goto_2

    :cond_5
    const/4 v11, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v6

    if-ne v6, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v6

    move v12, v6

    goto :goto_3

    :cond_6
    const/16 v6, 0x1f

    const/16 v12, 0x1f

    :goto_3
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v14, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v14, :cond_7

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->ap:I

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->aq:I

    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->ar:I

    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->at:I

    iget v10, v0, Landroid/support/v7/widget/SeslDatePicker;->au:I

    iget v13, v0, Landroid/support/v7/widget/SeslDatePicker;->av:I

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v13

    goto :goto_4

    :cond_7
    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v19, v4

    move v15, v6

    move/from16 v16, v10

    move/from16 v17, v13

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v10

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->as:I

    move/from16 v18, v2

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->aw:I

    move/from16 v22, v2

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->K:I

    move/from16 v23, v2

    move-object v6, v1

    invoke-virtual/range {v6 .. v23}, Landroid/support/v7/widget/jn;->a(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v1}, Landroid/support/v7/widget/jn;->invalidate()V

    :cond_8
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v1, :cond_9

    invoke-direct {v0, v5}, Landroid/support/v7/widget/SeslDatePicker;->b(Z)V

    :cond_9
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {v1}, Landroid/support/v7/widget/hj;->c()V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->s:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->k:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->L:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->e()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->a()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->q:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->b(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {p1}, Landroid/support/v7/widget/hj;->c()V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    new-instance p2, Landroid/support/v7/widget/hh;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/hh;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->ah:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->e()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->a()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->p:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(J)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->M:Landroid/support/v7/widget/hj;

    invoke-virtual {p1}, Landroid/support/v7/widget/hj;->c()V

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->aE:Landroid/os/Handler;

    new-instance p2, Landroid/support/v7/widget/hg;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/hg;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/ho;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->T:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/ho;)V

    return-void
.end method

.method public setValidationCallback(Landroid/support/v7/widget/hq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->af:Landroid/support/v7/widget/hq;

    return-void
.end method
