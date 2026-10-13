.class public LTi0;
.super LSG0;
.source "PG"


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final synthetic x:LWi0;


# direct methods
.method public constructor <init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTi0;->x:LWi0;

    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p2, p0, LTi0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, LTi0;->x:LWi0;

    iget-object p2, p0, LTi0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v0, 0x5

    invoke-static {p1, p2, v0}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    :cond_0
    return-void
.end method

.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, LTi0;->x:LWi0;

    iget-object p2, p0, LTi0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object p1, p0, LTi0;->x:LWi0;

    iget-object v0, p0, LTi0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method

.method public onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object p1, p0, LTi0;->x:LWi0;

    iget-object v0, p0, LTi0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, LWi0;->a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method
