.class public abstract LFc0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()Z
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "first_run_flow"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "force-first-run-flow-complete"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
