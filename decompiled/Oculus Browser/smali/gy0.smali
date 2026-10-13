.class public Lgy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lgy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->u0:Lpt0;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->v0:Landroid/widget/EditText;

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LvV0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, v0, Lpt0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage_custom_uri"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iget-object p1, p0, Lgy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->u0:Lpt0;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "Settings.HomePageIsCustomized"

    .line 10
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object p1, p1, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v0, "homepage_partner_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 12
    iget-object p1, p0, Lgy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
