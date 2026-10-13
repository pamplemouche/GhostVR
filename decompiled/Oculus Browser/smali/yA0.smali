.class public final synthetic LyA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHy0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LyA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LyA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 1
    iput-object p1, v0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->I0:Ljava/lang/String;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->G0:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;->Q()V

    return-void
.end method
