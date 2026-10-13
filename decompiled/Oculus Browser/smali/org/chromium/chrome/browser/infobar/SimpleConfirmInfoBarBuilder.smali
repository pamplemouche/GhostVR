.class public Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    move v0, p3

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 2
    invoke-virtual {v2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    move-object v0, p0

    move v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p1

    .line 4
    invoke-static/range {v0 .. v8}, LJ/N;->M3acrtLM(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static onInfoBarButtonClicked(Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;Z)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;->a(Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static onInfoBarDismissed(Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;->a()V

    :cond_0
    return-void
.end method

.method public static onInfoBarLinkClicked(Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;->b()Z

    move-result p0

    :goto_0
    return p0
.end method
