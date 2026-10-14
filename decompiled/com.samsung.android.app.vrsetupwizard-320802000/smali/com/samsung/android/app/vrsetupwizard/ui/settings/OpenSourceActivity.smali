.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# instance fields
.field private n:Landroid/webkit/WebView;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    const-string v0, "file:///android_asset/open_source_announcement.html"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0066

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->setContentView(I)V

    const p1, 0x7f0f00cb

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->b(I)V

    const p1, 0x7f09009e

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/open_source_announcement.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "[OpenSourceActivity]onResume()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "537"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
