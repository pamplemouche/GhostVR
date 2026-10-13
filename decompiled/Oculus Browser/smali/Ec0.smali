.class public abstract LEc0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Intent;Z)Z
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "disable-fre"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2
    invoke-static {}, LdT;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.intent.action.MAIN"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 4
    invoke-static {}, LMc0;->a()Z

    .line 5
    :cond_2
    invoke-static {}, LFc0;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_5

    .line 6
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    const-string p1, "skip_welcome_page"

    .line 7
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    .line 8
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    const-string p1, "lightweight_first_run_flow"

    .line 9
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method
