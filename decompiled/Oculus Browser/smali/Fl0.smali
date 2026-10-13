.class public abstract LFl0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LIl0;


# direct methods
.method public static a()LIl0;
    .locals 4

    .line 1
    sget-object v0, LFl0;->a:LIl0;

    if-nez v0, :cond_4

    .line 2
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "force-enable-night-mode"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "night_mode_available"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, LCl0;

    .line 5
    sget-object v1, LNl0;->c:LNl0;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, LNl0;

    invoke-direct {v1}, LNl0;-><init>()V

    sput-object v1, LNl0;->c:LNl0;

    .line 7
    :cond_1
    sget-object v1, LNl0;->c:LNl0;

    .line 8
    sget-object v2, LLl0;->e:LLl0;

    if-nez v2, :cond_2

    .line 9
    new-instance v2, LLl0;

    invoke-direct {v2}, LLl0;-><init>()V

    sput-object v2, LLl0;->e:LLl0;

    .line 10
    :cond_2
    sget-object v2, LLl0;->e:LLl0;

    .line 11
    sget-object v3, Lay0;->a:Lcy0;

    .line 12
    invoke-direct {v0, v1, v2, v3}, LCl0;-><init>(LNl0;LLl0;Lcy0;)V

    sput-object v0, LFl0;->a:LIl0;

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    new-instance v0, LEl0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LEl0;-><init>(LDl0;)V

    sput-object v0, LFl0;->a:LIl0;

    .line 14
    :cond_4
    :goto_1
    sget-object v0, LFl0;->a:LIl0;

    return-object v0
.end method
