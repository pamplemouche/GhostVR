.class public Le20;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LXR;

.field public final b:LUg0;

.field public final c:Lv20;


# direct methods
.method public constructor <init>(LXR;LUg0;Lv20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le20;->a:LXR;

    .line 3
    iput-object p2, p0, Le20;->b:LUg0;

    .line 4
    iput-object p3, p0, Le20;->c:Lv20;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .line 4
    iget-object v0, p0, Le20;->a:LXR;

    check-cast v0, LYR;

    invoke-virtual {v0}, LYR;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcy0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    iget-object v3, p0, Le20;->c:Lv20;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    const-string v3, "TrustedWebActivity.ClearDataDialogOnUninstallAccepted"

    goto :goto_1

    :cond_0
    const-string v3, "TrustedWebActivity.ClearDataDialogOnClearAppDataAccepted"

    .line 7
    :goto_1
    invoke-static {v3, v1}, LfV;->a(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_2
    iget-object p2, p0, Le20;->a:LXR;

    check-cast p2, LYR;

    invoke-virtual {p2}, LYR;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcy0;

    .line 10
    iget-object p2, p2, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 11
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
