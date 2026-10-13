.class public Loz0;
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
    iput-object p1, p0, Loz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x1a

    .line 1
    invoke-static {p1}, LO60;->a(I)V

    .line 2
    iget-object p1, p0, Loz0;->w:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;

    .line 3
    iget v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->w:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->w:I

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a()V

    return-void
.end method
