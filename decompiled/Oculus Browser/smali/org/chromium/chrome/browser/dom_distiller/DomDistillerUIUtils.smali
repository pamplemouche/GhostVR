.class public final Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LG70;


# direct methods
.method public static openSettings(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    const-string p0, "DomDistiller_DistilledPagePrefsOpened"

    .line 3
    invoke-static {p0}, LhV;->a(Ljava/lang/String;)V

    .line 4
    new-instance p0, LO8;

    const v1, 0x7f140245

    invoke-direct {p0, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->a(Landroid/content/Context;)Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    move-result-object v0

    invoke-virtual {p0, v0}, LO8;->a(Landroid/view/View;)LO8;

    .line 6
    invoke-virtual {p0}, LO8;->b()LP8;

    :cond_2
    return-void
.end method
