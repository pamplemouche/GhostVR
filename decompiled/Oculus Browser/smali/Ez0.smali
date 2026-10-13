.class public LEz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwh;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEz0;->a:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, LEz0;->a:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->v0:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, LEz0;->a:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 5
    iput-object p1, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->v0:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->x0:LFz0;

    if-eqz v0, :cond_4

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, v0, LFz0;->I:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->y0:Ljava/util/List;

    .line 10
    invoke-virtual {v0, p1}, LOz0;->a(Ljava/util/List;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v4, v0, LFz0;->I:Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;

    .line 15
    iget-object v4, v4, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->y0:Ljava/util/List;

    .line 16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHz0;

    .line 17
    iget-object v6, v5, LHz0;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v0, v3}, LOz0;->a(Ljava/util/List;)V

    :goto_1
    return v1

    :cond_4
    const/4 p1, 0x0

    .line 21
    throw p1

    :cond_5
    :goto_2
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
