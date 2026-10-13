.class public final synthetic LbB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbB0;->w:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, LbB0;->w:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v0

    new-instance v1, LdB0;

    invoke-direct {v1, p1}, LdB0;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V

    .line 2
    new-instance p1, LYN0;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, LYN0;-><init>(Landroid/app/Activity;ZLorg/chromium/base/Callback;)V

    .line 3
    iget-object v0, p1, LYN0;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    new-instance v1, LXd1;

    sget-object v3, LEd1;->q:[LUd1;

    invoke-direct {v1, v3}, LXd1;-><init>([LUd1;)V

    sget-object v3, LEd1;->a:Lfe1;

    .line 5
    new-instance v4, LXN0;

    invoke-direct {v4, p1}, LXN0;-><init>(LYN0;)V

    .line 6
    invoke-virtual {v1, v3, v4}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v3, LEd1;->j:Lke1;

    const v4, 0x7f1301d4

    .line 7
    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 8
    iget-boolean v3, p1, LYN0;->d:Z

    if-eqz v3, :cond_0

    .line 9
    sget-object v3, LEd1;->c:Lke1;

    const v4, 0x7f130641

    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v3, LEd1;->e:Lke1;

    const v4, 0x7f130640

    .line 10
    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v3, LEd1;->g:Lke1;

    const v4, 0x7f130527

    .line 11
    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    goto :goto_0

    .line 12
    :cond_0
    sget-object v3, LEd1;->c:Lke1;

    const v4, 0x7f13063f

    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v3, LEd1;->e:Lke1;

    const v4, 0x7f13063e

    .line 13
    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v3, LEd1;->g:Lke1;

    const v4, 0x7f13057f

    .line 14
    invoke-virtual {v1, v3, v0, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 15
    :goto_0
    invoke-virtual {v1}, LXd1;->a()Lle1;

    move-result-object v0

    iput-object v0, p1, LYN0;->c:Lle1;

    .line 16
    new-instance v0, LBd1;

    new-instance v1, Lbl0;

    iget-object v3, p1, LYN0;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lbl0;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, LBd1;-><init>(LAd1;I)V

    iput-object v0, p1, LYN0;->b:LBd1;

    .line 17
    iget-object p1, p1, LYN0;->c:Lle1;

    .line 18
    invoke-virtual {v0, p1, v3, v3}, LBd1;->a(Lle1;IZ)V

    return v2
.end method
