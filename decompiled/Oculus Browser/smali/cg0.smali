.class public final synthetic Lcg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

.field public final b:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg0;->a:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    iput-object p2, p0, Lcg0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcg0;->a:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    iget-object v1, p0, Lcg0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-boolean p1, v0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->K:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->L:Z

    :goto_0
    return-void
.end method
