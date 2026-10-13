.class public final synthetic LlJ0;
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

    iput-object p1, p0, LlJ0;->w:LpJ0;

    iput p2, p0, LlJ0;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LlJ0;->w:LpJ0;

    iget v1, p0, LlJ0;->x:I

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()V

    .line 2
    sget-object v0, LpJ0;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v2, "tab_group_pref"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LpJ0;->m:Landroid/content/SharedPreferences;

    .line 5
    :cond_0
    sget-object v0, LpJ0;->m:Landroid/content/SharedPreferences;

    const-string v2, "SessionsCountForGroup-"

    .line 6
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v0, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 9
    throw v0
.end method
