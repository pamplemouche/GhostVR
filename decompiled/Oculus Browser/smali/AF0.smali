.class public final synthetic LAF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEk0;


# instance fields
.field public final a:LGF0;


# direct methods
.method public constructor <init>(LGF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAF0;->a:LGF0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LAF0;->a:LGF0;

    .line 1
    iget-object v1, v0, LGF0;->f:Ljava/lang/String;

    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, LGF0;->a:LGE0;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, LGF0;->h:Ljava/lang/String;

    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, LGF0;->g:Ljava/lang/String;

    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, v0, LGF0;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    .line 7
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, v0, LGF0;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
