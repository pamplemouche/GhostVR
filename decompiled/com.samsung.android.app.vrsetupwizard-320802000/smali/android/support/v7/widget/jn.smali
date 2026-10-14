.class Landroid/support/v7/widget/jn;
.super Landroid/view/View;


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

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/Paint;

.field private final M:Ljava/util/Calendar;

.field private N:Ljava/util/Calendar;

.field private O:Ljava/util/Calendar;

.field private P:Ljava/util/Calendar;

.field private final Q:Landroid/support/v7/widget/jo;

.field private R:Landroid/support/v7/widget/jp;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Ldalvik/system/PathClassLoader;

.field private W:Ljava/lang/Object;

.field private a:I

.field private aa:Ljava/lang/reflect/Method;

.field private ab:Ljava/lang/reflect/Method;

.field private ac:Ljava/lang/reflect/Method;

.field private ad:Ljava/lang/reflect/Method;

.field private ae:Ljava/lang/reflect/Method;

.field private af:Ljava/lang/reflect/Method;

.field private ag:Landroid/support/v7/widget/jq;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/jn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/jn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/jn;->z:[I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/jn;->A:I

    iput v1, p0, Landroid/support/v7/widget/jn;->B:I

    iput v1, p0, Landroid/support/v7/widget/jn;->C:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/jn;->D:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v7/widget/jn;->E:I

    iput v0, p0, Landroid/support/v7/widget/jn;->F:I

    iget v0, p0, Landroid/support/v7/widget/jn;->F:I

    iput v0, p0, Landroid/support/v7/widget/jn;->G:I

    iput v2, p0, Landroid/support/v7/widget/jn;->H:I

    const/16 v0, 0x1f

    iput v0, p0, Landroid/support/v7/widget/jn;->I:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->O:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->T:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->U:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->V:Ldalvik/system/PathClassLoader;

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->ah:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->ai:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->aj:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/jn;->ak:Z

    iput-object p1, p0, Landroid/support/v7/widget/jn;->e:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->m()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/jn;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v4, Landroid/support/v7/b/b;->colorPrimaryDark:I

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, v3, Landroid/util/TypedValue;->data:I

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/jn;->x:I

    sget p1, Landroid/support/v7/b/d;->sesl_date_picker_sunday_number_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->v:I

    sget p1, Landroid/support/v7/b/d;->sesl_date_picker_saturday_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->w:I

    iget-object p1, p0, Landroid/support/v7/widget/jn;->e:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/b/l;->DatePicker:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/b/l;->DatePicker_dayNumberTextColor:I

    sget p3, Landroid/support/v7/b/d;->sesl_date_picker_normal_day_number_text_color_light:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/jn;->u:I

    sget p2, Landroid/support/v7/b/l;->DatePicker_selectedDayNumberTextColor:I

    sget p3, Landroid/support/v7/b/d;->sesl_date_picker_selected_day_number_text_color_light:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/jn;->y:I

    sget p2, Landroid/support/v7/b/l;->DatePicker_dayNumberDisabledAlpha:I

    sget p3, Landroid/support/v7/b/h;->sesl_day_number_disabled_alpha_light:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/jn;->a:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->h:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->k:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_selected_day_circle_stroke:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->l:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->j:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->i:I

    sget p1, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->C:I

    new-instance p1, Landroid/support/v7/widget/jo;

    invoke-direct {p1, p0, p0}, Landroid/support/v7/widget/jo;-><init>(Landroid/support/v7/widget/jn;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-static {p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/jn;->setImportantForAccessibility(I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/jn;->S:Z

    iget-object p1, p0, Landroid/support/v7/widget/jn;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p1, Landroid/support/v7/b/h;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->a:I

    :cond_1
    sget p1, Landroid/support/v7/b/h;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->b:I

    sget p1, Landroid/support/v7/b/h;->sesl_date_picker_abnormal_start_end_date_background_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->c:I

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->i()V

    return-void
.end method

.method private a(FF)I
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/jn;->C:I

    iget-boolean v1, p0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/jn;->i:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v0, v0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/jn;->i:I

    iget v2, p0, Landroid/support/v7/widget/jn;->C:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    iget v2, p0, Landroid/support/v7/widget/jn;->h:I

    div-int/2addr p2, v2

    sub-float/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/jn;->F:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->l()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Landroid/support/v7/widget/jn;->F:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private static a(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    rem-int/lit8 p0, p1, 0x4

    const/16 v0, 0x1c

    if-nez p0, :cond_2

    rem-int/lit8 p0, p1, 0x64

    const/16 v1, 0x1d

    if-nez p0, :cond_1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(IIZ)I
    .locals 6

    invoke-static {p1, p2}, Landroid/support/v7/widget/jn;->a(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    const-string v2, "SemSimpleMonthView"

    if-nez v1, :cond_0

    const-string p1, "getDaysInMonthLunar, mSolarLunarConverter is null"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/jn;->af:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-direct {p0, v1, v3, v4}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const-string p1, "getDaysInMonthLunar, dayLength is not Integer"

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;FF)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/jn;->a(FF)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;IIZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/jn;->a(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SemSimpleMonthView"

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

.method static synthetic a(Landroid/support/v7/widget/jn;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NoSuchMethodException"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SemSimpleMonthView"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jn;->R:Landroid/support/v7/widget/jp;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/jn;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->R:Landroid/support/v7/widget/jp;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/jp;->a(Landroid/support/v7/widget/jn;III)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/jo;->a(II)Z

    return-void
.end method

.method private a(IIIZ)V
    .locals 9

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->T:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    iget-object v2, p0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v7/widget/jn;->O:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/jn;->ag:Landroid/support/v7/widget/jq;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/jn;->playSoundEffect(I)V

    iget-object v2, p0, Landroid/support/v7/widget/jn;->ag:Landroid/support/v7/widget/jq;

    iget-boolean v7, p0, Landroid/support/v7/widget/jn;->U:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/support/v7/widget/jq;->a(Landroid/support/v7/widget/jn;IIIZZ)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {p1, p3, v1}, Landroid/support/v7/widget/jo;->a(II)Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Landroid/support/v7/widget/jn;->h:I

    const/4 v8, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iget v2, v0, Landroid/support/v7/widget/jn;->i:I

    iget v3, v0, Landroid/support/v7/widget/jn;->F:I

    mul-int/lit8 v3, v3, 0x2

    div-int v9, v2, v3

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/jn;->l()I

    move-result v10

    iget v2, v0, Landroid/support/v7/widget/jn;->j:I

    int-to-float v2, v2

    const v3, 0x402ccccd    # 2.7f

    div-float v11, v2, v3

    iget v12, v0, Landroid/support/v7/widget/jn;->m:I

    iget v2, v0, Landroid/support/v7/widget/jn;->n:I

    int-to-float v2, v2

    iget v13, v0, Landroid/support/v7/widget/jn;->o:I

    iget v14, v0, Landroid/support/v7/widget/jn;->q:I

    iget v3, v0, Landroid/support/v7/widget/jn;->r:I

    int-to-float v3, v3

    iget v15, v0, Landroid/support/v7/widget/jn;->s:I

    iget-boolean v4, v0, Landroid/support/v7/widget/jn;->T:Z

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/support/v7/widget/jn;->p:I

    if-ne v4, v6, :cond_0

    add-float/2addr v2, v5

    :cond_0
    move/from16 v16, v2

    iget-boolean v2, v0, Landroid/support/v7/widget/jn;->T:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/support/v7/widget/jn;->t:I

    if-ne v2, v6, :cond_1

    add-float/2addr v3, v5

    :cond_1
    move/from16 v17, v3

    iget v4, v0, Landroid/support/v7/widget/jn;->g:I

    iget v2, v0, Landroid/support/v7/widget/jn;->f:I

    int-to-float v2, v2

    iget-boolean v3, v0, Landroid/support/v7/widget/jn;->T:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v7/widget/jn;->U:Z

    if-eqz v3, :cond_2

    add-float/2addr v2, v5

    :cond_2
    move/from16 v18, v2

    mul-int/lit16 v2, v12, 0x2710

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v5, v16, v3

    float-to-int v5, v5

    add-int/2addr v2, v5

    mul-int/lit16 v5, v14, 0x2710

    mul-float v8, v17, v3

    float-to-int v8, v8

    add-int/2addr v5, v8

    mul-int/lit16 v8, v4, 0x2710

    mul-float v3, v3, v18

    float-to-int v3, v3

    add-int/2addr v8, v3

    iget v3, v0, Landroid/support/v7/widget/jn;->A:I

    const/16 v20, 0x0

    if-eqz v3, :cond_4

    add-int v3, v2, v13

    add-int v6, v5, v15

    if-le v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move/from16 v22, v3

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    :goto_1
    if-nez v22, :cond_9

    if-ne v12, v14, :cond_5

    cmpl-float v3, v16, v17

    if-nez v3, :cond_5

    if-ne v4, v12, :cond_5

    cmpl-float v3, v18, v16

    if-nez v3, :cond_5

    move v8, v13

    move v5, v15

    goto :goto_3

    :cond_5
    if-ge v2, v8, :cond_7

    if-ge v8, v5, :cond_7

    if-ne v4, v14, :cond_6

    cmpl-float v2, v18, v17

    if-eqz v2, :cond_7

    :cond_6
    iget v2, v0, Landroid/support/v7/widget/jn;->G:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move v5, v2

    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    if-ne v4, v12, :cond_8

    cmpl-float v2, v18, v16

    if-nez v2, :cond_8

    iget v2, v0, Landroid/support/v7/widget/jn;->G:I

    add-int/2addr v2, v3

    move v5, v2

    move v8, v13

    goto :goto_3

    :cond_8
    if-ne v4, v14, :cond_9

    cmpl-float v2, v18, v17

    if-nez v2, :cond_9

    move v5, v15

    goto :goto_2

    :cond_9
    const/4 v5, -0x1

    const/4 v8, -0x1

    :goto_3
    move v2, v1

    move/from16 v23, v10

    const/4 v3, 0x1

    const/16 v24, 0x0

    :goto_4
    iget v1, v0, Landroid/support/v7/widget/jn;->G:I

    move/from16 v25, v10

    const-string v10, "%d"

    if-gt v3, v1, :cond_1e

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/support/v7/widget/jn;->F:I

    const/16 v21, 0x1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, v1, v23

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_a
    const/16 v21, 0x1

    mul-int/lit8 v1, v23, 0x2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v9

    iget v6, v0, Landroid/support/v7/widget/jn;->C:I

    add-int/2addr v1, v6

    move v6, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->E:I

    add-int v1, v23, v1

    move-object/from16 v27, v10

    iget v10, v0, Landroid/support/v7/widget/jn;->F:I

    rem-int/2addr v1, v10

    iget-object v10, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    move/from16 v28, v9

    iget-object v9, v0, Landroid/support/v7/widget/jn;->z:[I

    aget v1, v9, v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/support/v7/widget/jn;->H:I

    if-lt v3, v1, :cond_b

    iget v1, v0, Landroid/support/v7/widget/jn;->I:I

    if-le v3, v1, :cond_c

    :cond_b
    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v9, v0, Landroid/support/v7/widget/jn;->a:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    iget-object v9, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    if-eqz v22, :cond_13

    if-ne v12, v4, :cond_d

    cmpl-float v1, v16, v18

    if-nez v1, :cond_d

    if-ne v13, v3, :cond_d

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    const/4 v10, 0x2

    if-eq v1, v10, :cond_e

    :cond_d
    if-ne v14, v4, :cond_f

    cmpl-float v1, v17, v18

    if-nez v1, :cond_f

    if-ne v15, v3, :cond_f

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_f

    :cond_e
    int-to-float v1, v6

    int-to-float v10, v2

    sub-float/2addr v10, v11

    move/from16 v29, v5

    iget v5, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v5, v5

    move/from16 v30, v8

    iget-object v8, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_f
    move/from16 v29, v5

    move/from16 v30, v8

    :goto_6
    if-ne v14, v4, :cond_11

    cmpl-float v1, v17, v18

    if-nez v1, :cond_11

    if-ne v15, v3, :cond_11

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_10

    goto :goto_7

    :cond_10
    const/4 v8, 0x1

    goto :goto_8

    :cond_11
    :goto_7
    if-ne v12, v4, :cond_12

    cmpl-float v1, v16, v18

    if-nez v1, :cond_12

    if-ne v13, v3, :cond_12

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_12

    :goto_8
    int-to-float v1, v6

    int-to-float v5, v2

    sub-float/2addr v5, v11

    iget v10, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v10, v10

    iget-object v8, v0, Landroid/support/v7/widget/jn;->L:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v10, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_12
    move v10, v3

    move/from16 v33, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v21, v15

    move/from16 v15, v28

    move/from16 v26, v29

    move/from16 v8, v30

    move v12, v2

    move/from16 v30, v4

    move v14, v6

    goto/16 :goto_e

    :cond_13
    move/from16 v29, v5

    if-ge v8, v3, :cond_15

    move/from16 v5, v29

    if-ge v3, v5, :cond_14

    sub-int v1, v6, v28

    int-to-float v10, v1

    int-to-float v1, v2

    sub-float/2addr v1, v11

    move/from16 v29, v2

    iget v2, v0, Landroid/support/v7/widget/jn;->k:I

    move/from16 v30, v3

    int-to-float v3, v2

    sub-float v3, v1, v3

    mul-int/lit8 v1, v28, 0x2

    int-to-float v1, v1

    add-float v31, v10, v1

    const/4 v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    add-float v32, v3, v1

    iget-object v2, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v33, v12

    move/from16 v12, v29

    move-object/from16 v29, v2

    move v2, v10

    move/from16 v10, v30

    move/from16 v30, v4

    move/from16 v4, v31

    move/from16 v31, v13

    move v13, v5

    move/from16 v5, v32

    move/from16 v32, v14

    move/from16 v21, v15

    const/4 v15, -0x1

    move v14, v6

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_14
    move v10, v3

    move/from16 v30, v4

    move/from16 v33, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v21, v15

    const/4 v15, -0x1

    move v12, v2

    move v13, v5

    goto :goto_9

    :cond_15
    move v10, v3

    move/from16 v30, v4

    move/from16 v33, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v21, v15

    move/from16 v13, v29

    const/4 v15, -0x1

    move v12, v2

    :goto_9
    move v14, v6

    :goto_a
    if-eq v8, v15, :cond_16

    if-ne v8, v13, :cond_16

    if-ne v10, v8, :cond_16

    int-to-float v1, v14

    int-to-float v2, v12

    sub-float/2addr v2, v11

    iget v3, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v26, v13

    move/from16 v15, v28

    goto/16 :goto_e

    :cond_16
    if-ne v13, v10, :cond_18

    int-to-float v1, v12

    sub-float v6, v1, v11

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_17

    int-to-float v1, v14

    goto :goto_b

    :cond_17
    sub-int v1, v14, v28

    int-to-float v1, v1

    :goto_b
    move v2, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v3, v1

    sub-float v3, v6, v3

    move/from16 v5, v28

    int-to-float v4, v5

    add-float/2addr v4, v2

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v26, v3, v1

    iget-object v1, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move v15, v5

    move/from16 v5, v26

    move/from16 v26, v13

    move v13, v6

    move-object/from16 v6, v28

    :goto_c
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    iget v2, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e

    :cond_18
    move/from16 v26, v13

    move/from16 v15, v28

    if-ne v8, v10, :cond_1a

    int-to-float v1, v12

    sub-float v13, v1, v11

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_19

    sub-int v6, v14, v15

    int-to-float v1, v6

    goto :goto_d

    :cond_19
    int-to-float v1, v14

    :goto_d
    move v2, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v3, v1

    sub-float v3, v13, v3

    int-to-float v4, v15

    add-float/2addr v4, v2

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    goto :goto_c

    :cond_1a
    :goto_e
    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    if-nez v1, :cond_1b

    move/from16 v13, v26

    if-ne v10, v13, :cond_1c

    iget v1, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f

    :cond_1b
    move/from16 v13, v26

    :cond_1c
    :goto_f
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v20

    move-object/from16 v5, v27

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v14

    int-to-float v3, v12

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v23, 0x1

    iget v2, v0, Landroid/support/v7/widget/jn;->F:I

    if-ne v1, v2, :cond_1d

    iget v1, v0, Landroid/support/v7/widget/jn;->h:I

    add-int v2, v12, v1

    add-int/lit8 v24, v24, 0x1

    const/16 v23, 0x0

    goto :goto_10

    :cond_1d
    move/from16 v23, v1

    move v2, v12

    :goto_10
    add-int/lit8 v3, v10, 0x1

    move v5, v13

    move v9, v15

    move/from16 v15, v21

    move/from16 v10, v25

    move/from16 v4, v30

    move/from16 v13, v31

    move/from16 v14, v32

    move/from16 v12, v33

    goto/16 :goto_4

    :cond_1e
    move v12, v2

    move v13, v5

    move v15, v9

    move-object v5, v10

    const/4 v6, 0x1

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->ai:Z

    if-nez v1, :cond_2a

    move v14, v12

    move/from16 v10, v24

    const/4 v12, 0x1

    :goto_11
    const/4 v1, 0x6

    if-eq v10, v1, :cond_2a

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/support/v7/widget/jn;->F:I

    sub-int/2addr v1, v6

    sub-int v1, v1, v23

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_12

    :cond_1f
    mul-int/lit8 v1, v23, 0x2

    :goto_12
    add-int/2addr v1, v6

    mul-int v1, v1, v15

    iget v2, v0, Landroid/support/v7/widget/jn;->C:I

    add-int/2addr v1, v2

    move v4, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->E:I

    add-int v1, v23, v1

    iget v2, v0, Landroid/support/v7/widget/jn;->F:I

    rem-int/2addr v1, v2

    iget-object v2, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/v7/widget/jn;->z:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    if-eqz v1, :cond_23

    iget v1, v0, Landroid/support/v7/widget/jn;->G:I

    add-int/2addr v1, v6

    if-ne v13, v1, :cond_23

    iget v1, v0, Landroid/support/v7/widget/jn;->s:I

    if-lt v12, v1, :cond_22

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/jn;->k()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_14

    :cond_20
    iget v1, v0, Landroid/support/v7/widget/jn;->s:I

    if-ne v12, v1, :cond_23

    int-to-float v1, v14

    sub-float v3, v1, v11

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_21

    int-to-float v1, v4

    goto :goto_13

    :cond_21
    sub-int v1, v4, v15

    int-to-float v1, v1

    :goto_13
    move v2, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v6, v1

    sub-float v6, v3, v6

    int-to-float v9, v15

    add-float/2addr v9, v2

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v17, v6, v1

    iget-object v1, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v30, v8

    move v8, v3

    move v3, v6

    move v6, v4

    move v4, v9

    move-object v9, v5

    move/from16 v5, v17

    move-object/from16 v27, v9

    move/from16 v17, v10

    const/4 v9, 0x1

    move v10, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    iget v2, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_22
    :goto_14
    move-object/from16 v27, v5

    move/from16 v30, v8

    move/from16 v17, v10

    const/4 v9, 0x1

    move v10, v4

    sub-int v4, v10, v15

    int-to-float v2, v4

    int-to-float v1, v14

    sub-float/2addr v1, v11

    iget v3, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v1, v15, 0x2

    int-to-float v1, v1

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v8, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_23
    move-object/from16 v27, v5

    move/from16 v30, v8

    move/from16 v17, v10

    const/4 v9, 0x1

    move v10, v4

    :goto_15
    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->T:Z

    if-nez v1, :cond_25

    iget v1, v0, Landroid/support/v7/widget/jn;->f:I

    add-int/2addr v1, v9

    iget v2, v0, Landroid/support/v7/widget/jn;->g:I

    const/16 v8, 0xb

    if-le v1, v8, :cond_24

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    :cond_24
    iget-object v3, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v12}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    iget-object v2, v0, Landroid/support/v7/widget/jn;->O:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_16

    :cond_25
    const/16 v8, 0xb

    :cond_26
    :goto_16
    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->A:I

    if-eqz v2, :cond_28

    iget v2, v0, Landroid/support/v7/widget/jn;->G:I

    add-int/2addr v2, v9

    if-ne v13, v2, :cond_28

    iget v2, v0, Landroid/support/v7/widget/jn;->s:I

    if-le v12, v2, :cond_27

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/jn;->k()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    iget v2, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_28
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v20

    move-object/from16 v6, v27

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v10

    int-to-float v4, v14

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v23, 0x1

    iget v2, v0, Landroid/support/v7/widget/jn;->F:I

    if-ne v1, v2, :cond_29

    iget v1, v0, Landroid/support/v7/widget/jn;->h:I

    add-int/2addr v14, v1

    add-int/lit8 v10, v17, 0x1

    const/16 v23, 0x0

    goto :goto_17

    :cond_29
    move/from16 v23, v1

    move/from16 v10, v17

    :goto_17
    add-int/lit8 v12, v12, 0x1

    move-object v5, v6

    move/from16 v8, v30

    const/4 v6, 0x1

    goto/16 :goto_11

    :cond_2a
    move-object v6, v5

    move/from16 v30, v8

    const/16 v8, 0xb

    const/4 v9, 0x1

    if-lez v25, :cond_37

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->ah:Z

    if-nez v1, :cond_37

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v2, v0, Landroid/support/v7/widget/jn;->g:I

    iget v3, v0, Landroid/support/v7/widget/jn;->f:I

    invoke-virtual {v1, v2, v3, v9}, Ljava/util/Calendar;->set(III)V

    move/from16 v10, v25

    neg-int v2, v10

    const/4 v12, 0x5

    invoke-virtual {v1, v12, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/jn;->T:Z

    if-eqz v2, :cond_2c

    iget v1, v0, Landroid/support/v7/widget/jn;->g:I

    iget v2, v0, Landroid/support/v7/widget/jn;->f:I

    iget-boolean v3, v0, Landroid/support/v7/widget/jn;->U:Z

    xor-int/2addr v3, v9

    sub-int/2addr v2, v3

    if-gez v2, :cond_2b

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xb

    :cond_2b
    iget-boolean v3, v0, Landroid/support/v7/widget/jn;->aj:Z

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v7/widget/jn;->a(IIZ)I

    move-result v1

    sub-int/2addr v1, v10

    add-int/2addr v1, v9

    :cond_2c
    move v14, v1

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v10, :cond_37

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_2d

    iget v1, v0, Landroid/support/v7/widget/jn;->F:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v13

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_19

    :cond_2d
    mul-int/lit8 v1, v13, 0x2

    :goto_19
    add-int/2addr v1, v9

    mul-int v1, v1, v15

    iget v2, v0, Landroid/support/v7/widget/jn;->C:I

    add-int/2addr v1, v2

    move v5, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->h:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v1, 0x3

    iget v1, v0, Landroid/support/v7/widget/jn;->E:I

    add-int/2addr v1, v13

    iget v2, v0, Landroid/support/v7/widget/jn;->F:I

    rem-int/2addr v1, v2

    iget-object v2, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/v7/widget/jn;->z:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroid/support/v7/widget/jn;->A:I

    if-eqz v1, :cond_31

    if-nez v30, :cond_31

    iget v1, v0, Landroid/support/v7/widget/jn;->o:I

    if-gt v14, v1, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/jn;->j()Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_1b

    :cond_2e
    iget v1, v0, Landroid/support/v7/widget/jn;->o:I

    if-ne v14, v1, :cond_31

    int-to-float v1, v4

    sub-float v3, v1, v11

    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->d:Z

    if-eqz v1, :cond_2f

    sub-int v1, v5, v15

    int-to-float v1, v1

    goto :goto_1a

    :cond_2f
    int-to-float v1, v5

    :goto_1a
    move v2, v1

    iget v1, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v8, v1

    sub-float v8, v3, v8

    int-to-float v12, v15

    add-float/2addr v12, v2

    const/16 v18, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v18, v8, v1

    iget-object v1, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move v9, v3

    move v3, v8

    move v8, v4

    move v4, v12

    move v12, v5

    move/from16 v5, v18

    move/from16 v25, v10

    move-object v10, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v12

    iget v2, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_30
    :goto_1b
    move v8, v4

    move v12, v5

    move/from16 v25, v10

    move-object v10, v6

    sub-int v5, v12, v15

    int-to-float v2, v5

    int-to-float v1, v8

    sub-float/2addr v1, v11

    iget v3, v0, Landroid/support/v7/widget/jn;->k:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v9, v15, 0x2

    int-to-float v1, v9

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v9, v0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_31
    move v8, v4

    move v12, v5

    move/from16 v25, v10

    move-object v10, v6

    :goto_1c
    iget-boolean v1, v0, Landroid/support/v7/widget/jn;->T:Z

    if-nez v1, :cond_33

    iget v1, v0, Landroid/support/v7/widget/jn;->f:I

    const/4 v2, 0x1

    add-int/lit8 v9, v1, -0x1

    iget v1, v0, Landroid/support/v7/widget/jn;->g:I

    if-gez v9, :cond_32

    add-int/lit8 v1, v1, -0x1

    const/16 v9, 0xb

    :cond_32
    iget-object v2, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    invoke-virtual {v2, v1, v9, v14}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroid/support/v7/widget/jn;->P:Ljava/util/Calendar;

    iget-object v2, v0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1d

    :cond_33
    const/4 v4, 0x2

    const/4 v6, 0x5

    :cond_34
    :goto_1d
    iget-object v1, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/jn;->A:I

    if-eqz v2, :cond_36

    if-nez v30, :cond_36

    iget v2, v0, Landroid/support/v7/widget/jn;->o:I

    if-ge v14, v2, :cond_35

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/jn;->j()Z

    move-result v2

    if-nez v2, :cond_36

    :cond_35
    iget v2, v0, Landroid/support/v7/widget/jn;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_36
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v20

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v12

    int-to-float v5, v8

    iget-object v8, v0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v6, v10

    move/from16 v10, v25

    const/16 v8, 0xb

    const/4 v9, 0x1

    const/4 v12, 0x5

    goto/16 :goto_18

    :cond_37
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/jn;->a(III)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/jn;->a(IIIZ)V

    return-void
.end method

.method private static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->ah:Z

    return p0
.end method

.method private b(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iput v0, p0, Landroid/support/v7/widget/jn;->i:I

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->i:I

    iget p1, p0, Landroid/support/v7/widget/jn;->i:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->H:I

    return p0
.end method

.method private static b(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->ai:Z

    return p0
.end method

.method static synthetic d(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->I:I

    return p0
.end method

.method static synthetic e(Landroid/support/v7/widget/jn;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->l()I

    move-result p0

    return p0
.end method

.method static synthetic f(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->D:I

    return p0
.end method

.method static synthetic g(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->T:Z

    return p0
.end method

.method static synthetic h(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->f:I

    return p0
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/jn;->x:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/jn;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/jn;->K:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/jn;->L:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/jn;->L:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/jn;->u:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->L:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/jn;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/jn;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const-string v2, "sec-roboto-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v7/widget/jn;->J:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method static synthetic i(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->U:Z

    return p0
.end method

.method static synthetic j(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->g:I

    return p0
.end method

.method private j()Z
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->T:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/jn;->n:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->U:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroid/support/v7/widget/jn;->p:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v0, v3

    iget v3, p0, Landroid/support/v7/widget/jn;->g:I

    iget v4, p0, Landroid/support/v7/widget/jn;->m:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/jn;->aj:Z

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/jn;->g:I

    iget v4, p0, Landroid/support/v7/widget/jn;->m:I

    add-int/2addr v4, v2

    if-ne v3, v4, :cond_4

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v0, v3

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->aj:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->m:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    iget v3, p0, Landroid/support/v7/widget/jn;->n:I

    add-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->m:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/jn;->n:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method static synthetic k(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->G:I

    return p0
.end method

.method private k()Z
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->T:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/jn;->r:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->U:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroid/support/v7/widget/jn;->t:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v3, v0

    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v4, p0, Landroid/support/v7/widget/jn;->q:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_2

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->ak:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v4, p0, Landroid/support/v7/widget/jn;->q:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_4

    const/high16 v0, 0x41400000    # 12.0f

    add-float/2addr v3, v0

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->ak:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->q:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    iget v3, p0, Landroid/support/v7/widget/jn;->r:I

    sub-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->q:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/jn;->f:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/jn;->r:I

    if-nez v0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private l()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/jn;->B:I

    iget v1, p0, Landroid/support/v7/widget/jn;->E:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/jn;->F:I

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/jn;->E:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic l(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->C:I

    return p0
.end method

.method static synthetic m(Landroid/support/v7/widget/jn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->e:Landroid/content/Context;

    return-object p0
.end method

.method private m()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic n(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->h:I

    return p0
.end method

.method static synthetic o(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->i:I

    return p0
.end method

.method static synthetic p(Landroid/support/v7/widget/jn;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/jn;->F:I

    return p0
.end method

.method static synthetic q(Landroid/support/v7/widget/jn;)Ldalvik/system/PathClassLoader;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->V:Ldalvik/system/PathClassLoader;

    return-object p0
.end method

.method static synthetic r(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->aj:Z

    return p0
.end method

.method static synthetic s(Landroid/support/v7/widget/jn;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/jn;->ak:Z

    return p0
.end method

.method static synthetic t(Landroid/support/v7/widget/jn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic u(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->aa:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic v(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->ac:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic w(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->ad:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic x(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/jn;->ae:Ljava/lang/reflect/Method;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 5

    const-string v0, "CscFeature_Calendar_SetColorOfDays"

    const-string v1, "XXXXXXR"

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/jn;->F:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Landroid/support/v7/widget/jn;->F:I

    rem-int/2addr v3, v4

    const/16 v4, 0x52

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/jn;->z:[I

    iget v4, p0, Landroid/support/v7/widget/jn;->v:I

    aput v4, v2, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x42

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/jn;->z:[I

    iget v4, p0, Landroid/support/v7/widget/jn;->w:I

    aput v4, v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/jn;->z:[I

    iget v4, p0, Landroid/support/v7/widget/jn;->u:I

    aput v4, v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p17

    iput v3, v0, Landroid/support/v7/widget/jn;->A:I

    iget v3, v0, Landroid/support/v7/widget/jn;->h:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    iput v4, v0, Landroid/support/v7/widget/jn;->h:I

    :cond_0
    move v3, p1

    iput v3, v0, Landroid/support/v7/widget/jn;->D:I

    invoke-static/range {p2 .. p2}, Landroid/support/v7/widget/jn;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v3, p2

    iput v3, v0, Landroid/support/v7/widget/jn;->f:I

    :cond_1
    move/from16 v3, p3

    iput v3, v0, Landroid/support/v7/widget/jn;->g:I

    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/jn;->f:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/jn;->g:I

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    iput-object v1, v0, Landroid/support/v7/widget/jn;->N:Ljava/util/Calendar;

    iput-object v2, v0, Landroid/support/v7/widget/jn;->O:Ljava/util/Calendar;

    iget-boolean v3, v0, Landroid/support/v7/widget/jn;->T:Z

    const/4 v7, 0x7

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v8, v0, Landroid/support/v7/widget/jn;->aa:Ljava/lang/reflect/Method;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v0, Landroid/support/v7/widget/jn;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v0, Landroid/support/v7/widget/jn;->f:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-boolean v10, v0, Landroid/support/v7/widget/jn;->U:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    invoke-direct {p0, v3, v8, v9}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    iget-object v8, v0, Landroid/support/v7/widget/jn;->ac:Ljava/lang/reflect/Method;

    new-array v9, v11, [Ljava/lang/Object;

    invoke-direct {p0, v3, v8, v9}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v8, v0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    iget-object v9, v0, Landroid/support/v7/widget/jn;->ad:Ljava/lang/reflect/Method;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    iget-object v10, v0, Landroid/support/v7/widget/jn;->ae:Ljava/lang/reflect/Method;

    new-array v13, v11, [Ljava/lang/Object;

    invoke-direct {p0, v9, v10, v13}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    iget-object v7, v0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    iget-object v10, v0, Landroid/support/v7/widget/jn;->ab:Ljava/lang/reflect/Method;

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v11

    aput-object v8, v12, v6

    aput-object v9, v12, v5

    invoke-direct {p0, v7, v10, v12}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_0
    iput v3, v0, Landroid/support/v7/widget/jn;->B:I

    :cond_3
    iget v3, v0, Landroid/support/v7/widget/jn;->f:I

    iget v7, v0, Landroid/support/v7/widget/jn;->g:I

    iget-boolean v8, v0, Landroid/support/v7/widget/jn;->U:Z

    invoke-direct {p0, v3, v7, v8}, Landroid/support/v7/widget/jn;->a(IIZ)I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/jn;->B:I

    iget v3, v0, Landroid/support/v7/widget/jn;->f:I

    iget v7, v0, Landroid/support/v7/widget/jn;->g:I

    invoke-static {v3, v7}, Landroid/support/v7/widget/jn;->a(II)I

    move-result v3

    :goto_1
    iput v3, v0, Landroid/support/v7/widget/jn;->G:I

    invoke-static/range {p4 .. p4}, Landroid/support/v7/widget/jn;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, p4

    goto :goto_2

    :cond_5
    iget-object v3, v0, Landroid/support/v7/widget/jn;->M:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    :goto_2
    iput v3, v0, Landroid/support/v7/widget/jn;->E:I

    iget v3, v0, Landroid/support/v7/widget/jn;->f:I

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_6

    iget v3, v0, Landroid/support/v7/widget/jn;->g:I

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_3

    :cond_6
    move/from16 v1, p5

    :goto_3
    iget v3, v0, Landroid/support/v7/widget/jn;->f:I

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_7

    iget v3, v0, Landroid/support/v7/widget/jn;->g:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_4

    :cond_7
    move/from16 v2, p6

    :goto_4
    const/16 v3, 0x20

    if-lez v1, :cond_8

    if-ge v2, v3, :cond_8

    iput v1, v0, Landroid/support/v7/widget/jn;->H:I

    :cond_8
    if-lez v2, :cond_9

    if-ge v2, v3, :cond_9

    if-lt v2, v1, :cond_9

    iput v2, v0, Landroid/support/v7/widget/jn;->I:I

    :cond_9
    iget-object v1, v0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {v1}, Landroid/support/v7/widget/jo;->c()V

    move/from16 v1, p9

    iput v1, v0, Landroid/support/v7/widget/jn;->m:I

    move/from16 v1, p10

    iput v1, v0, Landroid/support/v7/widget/jn;->n:I

    move/from16 v1, p11

    iput v1, v0, Landroid/support/v7/widget/jn;->o:I

    move/from16 v1, p12

    iput v1, v0, Landroid/support/v7/widget/jn;->p:I

    move/from16 v1, p13

    iput v1, v0, Landroid/support/v7/widget/jn;->q:I

    move/from16 v1, p14

    iput v1, v0, Landroid/support/v7/widget/jn;->r:I

    move/from16 v1, p15

    iput v1, v0, Landroid/support/v7/widget/jn;->s:I

    move/from16 v1, p16

    iput v1, v0, Landroid/support/v7/widget/jn;->t:I

    return-void
.end method

.method public a(Landroid/support/v7/widget/jp;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jn;->R:Landroid/support/v7/widget/jp;

    return-void
.end method

.method public a(Landroid/support/v7/widget/jq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jn;->ag:Landroid/support/v7/widget/jq;

    return-void
.end method

.method public a(ZZLdalvik/system/PathClassLoader;)V
    .locals 4

    const-string v0, "SemSimpleMonthView"

    iput-boolean p1, p0, Landroid/support/v7/widget/jn;->T:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/jn;->U:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/jn;->T:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    if-nez p1, :cond_2

    iput-object p3, p0, Landroid/support/v7/widget/jn;->V:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string p1, "com.android.calendar.Feature"

    iget-object p2, p0, Landroid/support/v7/widget/jn;->V:Ldalvik/system/PathClassLoader;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    const-string p1, "setLunar, Calendar Feature class is null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Class;

    const-string v2, "getSolarLunarConverter"

    invoke-direct {p0, p1, v2, v1}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, p2, [Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v2}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/jn;->W:Ljava/lang/Object;

    :try_start_1
    const-string p1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    iget-object v1, p0, Landroid/support/v7/widget/jn;->V:Ldalvik/system/PathClassLoader;

    invoke-static {p1, p3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    const-string p1, "setLunar, Calendar Converter class is null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "convertLunarToSolar"

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->aa:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "getWeekday"

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->ab:Ljava/lang/reflect/Method;

    new-array v0, p2, [Ljava/lang/Class;

    const-string v1, "getYear"

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->ac:Ljava/lang/reflect/Method;

    new-array v0, p2, [Ljava/lang/Class;

    const-string v1, "getMonth"

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->ad:Ljava/lang/reflect/Method;

    new-array v0, p2, [Ljava/lang/Class;

    const-string v1, "getDay"

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/jn;->ae:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p2

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p2, v0, p3

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p2, v0, v2

    const-string p2, "getDayLengthOf"

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/jn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/jn;->af:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_0
    const-string p1, "setLunar, Calendar Converter class not found"

    goto/16 :goto_0

    :catch_1
    const-string p1, "setLunar, Calendar Feature class not found"

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {v0}, Landroid/support/v7/widget/jo;->e()V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/jn;->E:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/jn;->F:I

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/jo;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/jn;->ah:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/jn;->ai:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/jn;->aj:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/jn;->ak:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->m()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/jn;->d:Z

    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {p1}, Landroid/support/v7/widget/jo;->c()V

    iget-object p1, p0, Landroid/support/v7/widget/jn;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/jn;->h:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/jn;->k:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/jn;->j:I

    sget v0, Landroid/support/v7/b/e;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/jn;->i:I

    invoke-direct {p0}, Landroid/support/v7/widget/jn;->i()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/jn;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/jn;->i:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/jn;->b(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {p1}, Landroid/support/v7/widget/jo;->c()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/jn;->Q:Landroid/support/v7/widget/jo;

    invoke-virtual {p1}, Landroid/support/v7/widget/jo;->c()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/jn;->a(FF)I

    move-result p1

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->ah:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/jn;->H:I

    if-lt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->ai:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/jn;->I:I

    if-le p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-gtz p1, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->T:Z

    if-eqz v4, :cond_5

    iget v2, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->f:I

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->U:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/jn;->aj:Z

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/jn;->a(IIZ)I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {p0, v2, v0, v3, v1}, Landroid/support/v7/widget/jn;->a(IIIZ)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroid/support/v7/widget/jn;->g:I

    iget v5, p0, Landroid/support/v7/widget/jn;->f:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/support/v7/widget/jn;->a(IIIZ)V

    goto :goto_1

    :cond_6
    iget v4, p0, Landroid/support/v7/widget/jn;->G:I

    if-le p1, v4, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->T:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget v2, p0, Landroid/support/v7/widget/jn;->g:I

    iget v3, p0, Landroid/support/v7/widget/jn;->f:I

    iget-boolean v4, p0, Landroid/support/v7/widget/jn;->ak:Z

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    if-le v3, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/jn;->G:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2, v3, p1, v5}, Landroid/support/v7/widget/jn;->a(IIIZ)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroid/support/v7/widget/jn;->g:I

    iget v6, p0, Landroid/support/v7/widget/jn;->f:I

    iget v7, p0, Landroid/support/v7/widget/jn;->G:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget v4, p0, Landroid/support/v7/widget/jn;->G:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v2, v0, v5}, Landroid/support/v7/widget/jn;->a(IIIZ)V

    goto :goto_1

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/jn;->g:I

    iget v2, p0, Landroid/support/v7/widget/jn;->f:I

    invoke-direct {p0, v0, v2, p1}, Landroid/support/v7/widget/jn;->a(III)V

    :goto_1
    return v1
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/jn;->S:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method
