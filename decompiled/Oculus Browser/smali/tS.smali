.class public LtS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LuS;


# direct methods
.method public synthetic constructor <init>(LuS;LpS;)V
    .locals 0

    .line 1
    iput-object p1, p0, LtS;->w:LuS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LtS;->w:LuS;

    .line 2
    iget-object v1, v0, LuS;->b:Landroid/app/AlarmManager;

    .line 3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, LuS;->a:Landroid/content/Context;

    const-class v4, LmS;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, v0, LuS;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6
    sget-object v0, LSS;->a:LTS;

    .line 7
    iget-boolean v0, v0, LTS;->a:Z

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, LtS;->w:LuS;

    .line 9
    iget-object v1, v0, LuS;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 10
    iget-object v0, v0, LuS;->q:LnS;

    if-eqz v0, :cond_4

    .line 11
    sget-object v1, LnS;->e:Ljava/lang/Class;

    const-string v2, "Attempting to upload analytics"

    invoke-static {v1, v2}, LgS;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, LnS;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, v0, LnS;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 15
    invoke-virtual {v0, v5}, LnS;->b(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 16
    :goto_2
    iget-object v0, p0, LtS;->w:LuS;

    .line 17
    iget-object v1, v0, LuS;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v0, v3}, LuS;->a(Z)V

    goto :goto_3

    .line 19
    :cond_4
    throw v1

    :cond_5
    :goto_3
    return-void
.end method
