.class public final synthetic LjC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LjC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LjC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    .line 1
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "clear_data"

    .line 3
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->Q()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "site_usage"

    .line 5
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "chooser_permission_list"

    .line 6
    invoke-virtual {v0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 7
    move-object v4, v1

    check-cast v4, LXx0;

    .line 8
    iget-object v5, v4, LXx0;->i0:Lqy0;

    if-nez v5, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v5, v4}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, LXx0;->i0:Lqy0;

    .line 10
    invoke-interface {v5, v4}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_5

    .line 11
    iget-object v4, v0, Lrc;->u0:LDc;

    .line 12
    iget-object v4, v4, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 13
    invoke-virtual {v4, v1}, Lvc;->e(Landroid/support/v7/preference/Preference;)Z

    .line 14
    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->p()V

    .line 15
    :cond_5
    iput v3, v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->G0:I

    .line 16
    iget v1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->H0:I

    if-lez v1, :cond_6

    .line 17
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v1

    const v3, 0x7f1303af

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 20
    :cond_6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->P()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->Q()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_3
    return-void
.end method
