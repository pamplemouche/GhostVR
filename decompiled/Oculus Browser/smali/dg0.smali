.class public Ldg0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldg0;->w:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Ldg0;->w:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    .line 2
    iget-object p2, p2, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    .line 3
    invoke-interface {p2}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->a()V

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Ldg0;->w:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->a(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;)V

    return-void
.end method

.method public onInteractabilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldg0;->w:Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    .line 3
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->a(Z)V

    return-void
.end method
