.class public final synthetic LPz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPz0;->w:Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LPz0;->w:Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->l0:LGz0;

    invoke-interface {p1}, LGz0;->a()V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, LTz0;->a(I)V

    return-void
.end method
