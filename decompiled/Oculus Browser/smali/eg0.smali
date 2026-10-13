.class public Leg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic x:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leg0;->x:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    iput-object p2, p0, Leg0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leg0;->x:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    .line 2
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->K:Z

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, LuO0;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Leg0;->x:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    iget-object v0, p0, Leg0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 6
    iget-object p1, p0, Leg0;->x:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->L:Z

    :cond_1
    :goto_0
    return-void
.end method
