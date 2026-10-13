.class public Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;
.super Landroid/widget/LinearLayout;
.source "TooltipView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOOLTIP_TEXT_MAX_WIDTH:I = 0x154


# instance fields
.field private mCaretDown:Landroid/widget/ImageView;

.field private mCaretLeft:Landroid/widget/ImageView;

.field private mCaretRight:Landroid/widget/ImageView;

.field private mCaretUp:Landroid/widget/ImageView;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object p1, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->TAG:Ljava/lang/String;

    const-string p2, "TooltipView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTooltipTextStaticLayout(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 9

    .line 118
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v3, 0x154

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private getTooltipTextStaticLayoutV23(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x154

    .line 132
    invoke-static {p1, v2, v0, v1, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 134
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private getTooltipTextViewWidth(Ljava/lang/String;)I
    .locals 5

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->getTooltipTextStaticLayoutV23(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->getTooltipTextStaticLayout(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 101
    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 104
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    float-to-double v0, v1

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public configureTooltip(Ljava/lang/String;)V
    .locals 9

    .line 46
    sget-object v0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuring TooltipView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 49
    sget-object v1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 52
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "text"

    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "position"

    .line 56
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->getTooltipPosition(Ljava/lang/String;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    sget-object v2, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse tooltip configuration json - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    sget-object p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Top:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_1
    sget-object v4, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Bottom:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    if-ne v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 63
    :goto_2
    sget-object v5, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Left:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    if-ne v1, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 64
    :goto_3
    sget-object v6, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    if-ne v1, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 67
    :goto_4
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretDown:Landroid/widget/ImageView;

    const/16 v7, 0x8

    if-eqz p1, :cond_4

    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    const/16 v8, 0x8

    :goto_5
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretUp:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const/4 v8, 0x0

    goto :goto_7

    :cond_6
    const/16 v8, 0x8

    :goto_7
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretRight:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v5, :cond_a

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    if-nez p1, :cond_9

    if-eqz v4, :cond_b

    .line 76
    :cond_9
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->setOrientation(I)V

    goto :goto_9

    .line 74
    :cond_a
    :goto_8
    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->setOrientation(I)V

    .line 80
    :cond_b
    :goto_9
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->getTooltipTextViewWidth(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->TAG:Ljava/lang/String;

    const-string v1, "Initializing TooltipView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 36
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_text:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mTextView:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_caret_left:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretLeft:Landroid/widget/ImageView;

    .line 40
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_caret_right:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretRight:Landroid/widget/ImageView;

    .line 41
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_caret_up:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretUp:Landroid/widget/ImageView;

    .line 42
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->tooltip_caret_down:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/tooltip/TooltipView;->mCaretDown:Landroid/widget/ImageView;

    return-void
.end method
