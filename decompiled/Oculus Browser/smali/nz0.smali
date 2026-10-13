.class public Lnz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 p1, 0x18

    .line 1
    invoke-static {p1}, LO60;->a(I)V

    .line 2
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 3
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->z:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 5
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->A:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 8
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 9
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->B:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a(Landroid/widget/TextView;)V

    .line 11
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 12
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    .line 13
    new-instance v0, Lpz0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpz0;-><init>(Llz0;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 15
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->y:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f13026c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lnz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 18
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a()V

    return-void
.end method
