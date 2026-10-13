.class public Lcom/oculus/horizon/widget/PINIndicator;
.super Landroid/widget/LinearLayout;
.source "PINIndicator.java"


# static fields
.field private static final sInputFieldIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    sget v0, Lcom/oculus/horizon/R$id;->first_digit:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->second_digit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->third_digit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$id;->fourth_digit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/widget/PINIndicator;->sInputFieldIds:Ljava/util/List;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/PINIndicator;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/PINIndicator;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/PINIndicator;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lcom/oculus/horizon/R$layout;->widget_enter_pin:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public setDigitCount(I)V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/oculus/horizon/widget/PINIndicator;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 41
    sget-object v0, Lcom/oculus/horizon/widget/PINIndicator;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PINIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 42
    if-ge v1, p1, :cond_0

    sget v0, Lcom/oculus/horizon/R$drawable;->widget_pin_indicator_filled:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_0
    sget v0, Lcom/oculus/horizon/R$drawable;->widget_pin_indicator_empty:I

    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public setError()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/oculus/horizon/widget/PINIndicator;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 51
    sget-object v0, Lcom/oculus/horizon/widget/PINIndicator;->sInputFieldIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PINIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    sget v2, Lcom/oculus/horizon/R$drawable;->red_filled_circle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
