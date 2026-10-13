.class public Lfp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 2
    iget-object v0, v0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    iget-object v1, p0, Lfp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 4
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v1}, Lrc1;->a(Landroid/view/View;)Z

    return-void
.end method
