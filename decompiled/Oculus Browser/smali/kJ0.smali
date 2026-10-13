.class public final synthetic LkJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LpJ0;

.field public final x:I


# direct methods
.method public constructor <init>(LpJ0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LkJ0;->w:LpJ0;

    iput p2, p0, LkJ0;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LkJ0;->w:LpJ0;

    iget v1, p0, LkJ0;->x:I

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionsCountForGroup-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, LpJ0;->m:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v3, "tab_group_pref"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, LpJ0;->m:Landroid/content/SharedPreferences;

    .line 6
    :cond_0
    sget-object v1, LpJ0;->m:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "TabGroups.SessionsPerGroup"

    .line 9
    invoke-static {v0, v2}, LfV;->c(Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    throw v0
.end method
