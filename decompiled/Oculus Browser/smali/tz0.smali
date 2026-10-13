.class public Ltz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltz0;->x:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    iput-object p2, p0, Ltz0;->w:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltz0;->x:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 2
    iget-object v0, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    iget-object v1, p0, Ltz0;->x:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->l0:Lpf1;

    .line 6
    iget-object v1, v1, Lhf1;->w:Landroid/graphics/Rect;

    .line 7
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 8
    iget-object v2, p0, Ltz0;->w:Landroid/view/View;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
