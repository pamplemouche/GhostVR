.class public LE70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# instance fields
.field public final synthetic w:LG70;


# direct methods
.method public constructor <init>(LG70;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE70;->w:LG70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->a:Ljava/lang/String;

    invoke-static {v0}, LZS0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object p1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, LE70;->w:LG70;

    .line 4
    iget-object p1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    const-class v1, Lw70;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, LE70;->w:LG70;

    .line 7
    iget-object p1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "org.chromium.chrome.browser.dom_distiller.EXTRA_READER_MODE_PARENT"

    invoke-static {p1, v2, v1}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p1

    .line 9
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, LE70;->w:LG70;

    .line 11
    iget-object p1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 12
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V

    .line 13
    iget-object p1, p0, LE70;->w:LG70;

    .line 14
    iget-object p1, p1, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
