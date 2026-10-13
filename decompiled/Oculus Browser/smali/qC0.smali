.class public LqC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, LqC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, LqC0;->w:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    .line 2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    sget-object p2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->K0:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {p1, v3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->b(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    .line 6
    invoke-virtual {p2}, LyC0;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    iget p2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->H0:I

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_1
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->E0:LtC0;

    iget-object v2, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    iget-object v3, p1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->J0:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, v2, LyC0;->w:LzC0;

    .line 9
    invoke-virtual {v0}, LzC0;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, LJ/N;->M9r8DppB(Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, LJ/N;->MqBZoiAf(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, LJ/N;->MQcuS5Ux(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x9

    if-ge v0, v4, :cond_3

    .line 13
    invoke-virtual {v2, v0, v1}, LyC0;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/16 v4, 0x8

    if-ge v0, v4, :cond_4

    .line 14
    invoke-virtual {v2, v0, v1}, LyC0;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v2}, LyC0;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOB0;

    .line 16
    invoke-virtual {v4}, LOB0;->a()V

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v0, LsC0;

    invoke-direct {v0, v3}, LsC0;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v2, v0}, LyC0;->a(LxC0;)V

    .line 20
    iget-object v0, p1, Lz2;->C:Landroid/os/Bundle;

    const-string v2, "org.chromium.chrome.preferences.navigation_source"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SingleWebsitePreferences.NavigatedFromToReset"

    const/4 v2, 0x3

    .line 22
    invoke-static {v1, v0, v2}, LfV;->a(Ljava/lang/String;II)V

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_5
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 24
    throw p1
.end method
