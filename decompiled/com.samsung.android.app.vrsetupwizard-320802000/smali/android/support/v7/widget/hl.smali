.class public Landroid/support/v7/widget/hl;
.super Landroid/view/View;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePicker;

.field private b:Ljava/util/Calendar;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/hl;->g:[I

    const-string p1, "XXXXXXR"

    iput-object p1, p0, Landroid/support/v7/widget/hl;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/hl;->b:Ljava/util/Calendar;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v7/b/e;->sesl_date_picker_month_day_label_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Landroid/support/v7/b/l;->DatePicker_dayTextColor:I

    sget v1, Landroid/support/v7/b/d;->sesl_date_picker_normal_text_color_light:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/hl;->d:I

    sget v0, Landroid/support/v7/b/l;->DatePicker_sundayTextColor:I

    sget v1, Landroid/support/v7/b/d;->sesl_date_picker_sunday_text_color_light:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/hl;->e:I

    sget p3, Landroid/support/v7/b/d;->sesl_date_picker_saturday_week_text_color_light:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/support/v4/a/a/f;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/hl;->f:I

    iget-object p1, p0, Landroid/support/v7/widget/hl;->i:Ljava/lang/String;

    const-string p3, "CscFeature_Calendar_SetColorOfDays"

    invoke-static {p3, p1}, Landroid/support/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/hl;->h:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    iget p3, p0, Landroid/support/v7/widget/hl;->d:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    const-string p3, "sec-roboto-light"

    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->J(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->K(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/hl;->h:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    rem-int/2addr v5, v6

    const/16 v6, 0x42

    if-eq v4, v6, :cond_2

    const/16 v6, 0x52

    if-eq v4, v6, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/hl;->g:[I

    iget v6, p0, Landroid/support/v7/widget/hl;->d:I

    aput v6, v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/hl;->g:[I

    iget v6, p0, Landroid/support/v7/widget/hl;->e:I

    aput v6, v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/hl;->g:[I

    iget v6, p0, Landroid/support/v7/widget/hl;->f:I

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->L(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    rem-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/hl;->b:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->M(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/hl;->b:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->k(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->I(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_4
    mul-int/lit8 v5, v2, 0x2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v1

    iget-object v6, p0, Landroid/support/v7/widget/hl;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->N(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/support/v7/widget/hl;->g:[I

    aget v3, v7, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v5

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v7/widget/hl;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
