.class public LUB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMC0;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;LSB0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget-object v0, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOB0;

    .line 5
    iget-object v0, v0, LOB0;->A:Ljava/lang/String;

    .line 6
    iget-object v1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 7
    iget-object v1, v1, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v2, v1, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LyC0;

    .line 12
    invoke-virtual {v1}, LyC0;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOB0;

    .line 13
    iget-object v4, v3, LOB0;->A:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 16
    iget-object v4, v4, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 19
    iget-object v3, v3, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->I0:Ljava/lang/String;

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    invoke-virtual {v1}, LyC0;->b()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 23
    iget-object v4, v4, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->I0:Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    :cond_3
    iget-object v3, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 26
    iget-object v3, v3, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 29
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 32
    :cond_5
    iget-object p1, p0, LUB0;->a:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 33
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->P()V

    :goto_1
    return-void
.end method
