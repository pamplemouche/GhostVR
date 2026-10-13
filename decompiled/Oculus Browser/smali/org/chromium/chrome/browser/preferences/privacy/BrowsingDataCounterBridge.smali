.class public Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:LIA0;


# direct methods
.method public constructor <init>(LIA0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->b:LIA0;

    .line 3
    invoke-static {p0, p2, p3}, LJ/N;->MkVeYuAp(Ljava/lang/Object;II)J

    move-result-wide p1

    .line 4
    iput-wide p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->a:J

    return-void
.end method

.method private onBrowsingDataCounterFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->b:LIA0;

    check-cast v0, LLA0;

    .line 2
    iget-object v1, v0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->a(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean v1, v0, LLA0;->A:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, LLA0;->y:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->p0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
