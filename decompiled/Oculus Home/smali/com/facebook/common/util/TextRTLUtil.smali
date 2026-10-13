.class public Lcom/facebook/common/util/TextRTLUtil;
.super Ljava/lang/Object;
.source "TextRTLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/facebook/common/util/TextRTLUtil;->getTextDirectionHeuristicApi17(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/facebook/common/util/TextRTLUtil;->getTextDirectionHeuristicBelowApi17(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTextDirectionHeuristicApi17(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 60
    :pswitch_3
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 62
    :pswitch_4
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getTextDirectionHeuristicBelowApi17(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 70
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0
.end method

.method public static isRtl(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lcom/facebook/common/util/TextRTLUtil;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
