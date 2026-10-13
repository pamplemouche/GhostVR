.class public Lfy0;
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
    iput-object p1, p0, Lfy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lfy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->u0:Lpt0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "Settings.HomePageIsCustomized"

    .line 3
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p1, Lpt0;->a:Landroid/content/SharedPreferences;

    const-string v0, "homepage_partner_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Lfy0;->w:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
