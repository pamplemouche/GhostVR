.class public Lua0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lwa0;


# direct methods
.method public constructor <init>(Lwa0;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua0;->d:Lwa0;

    iput-object p2, p0, Lua0;->a:Landroid/content/Intent;

    iput-object p3, p0, Lua0;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lua0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p2, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lua0;->d:Lwa0;

    .line 2
    invoke-virtual {p1}, Lwa0;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lua0;->d:Lwa0;

    iget-object v1, p0, Lua0;->a:Landroid/content/Intent;

    iget-object v2, p0, Lua0;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    iget-object v4, v0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-boolean v5, p0, Lua0;->c:Z

    .line 6
    iget-boolean v6, v4, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 7
    invoke-static/range {v0 .. v6}, Lwa0;->a(Lwa0;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p1, p0, Lua0;->c:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lua0;->d:Lwa0;

    .line 10
    invoke-virtual {p1}, Lwa0;->a()V

    :cond_1
    :goto_0
    return-void
.end method
