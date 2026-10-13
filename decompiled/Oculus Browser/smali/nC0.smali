.class public final synthetic LnC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

.field public final x:LOB0;

.field public final y:Landroid/support/v7/preference/PreferenceScreen;

.field public final z:LXx0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;LOB0;Landroid/support/v7/preference/PreferenceScreen;LXx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LnC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iput-object p2, p0, LnC0;->x:LOB0;

    iput-object p3, p0, LnC0;->y:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, LnC0;->z:LXx0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LnC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    iget-object v0, p0, LnC0;->x:LOB0;

    iget-object v1, p0, LnC0;->y:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, LnC0;->z:LXx0;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {v0}, LOB0;->a()V

    .line 2
    invoke-virtual {v1, v2}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->p()V

    .line 4
    iget v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->P()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "site_permissions"

    .line 6
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
