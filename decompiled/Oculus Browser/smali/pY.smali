.class public LpY;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:LxI0;

.field public c:Ljava/lang/Boolean;

.field public d:LpI0;

.field public e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LpY;->a:Landroid/app/Activity;

    .line 3
    new-instance p1, LoY;

    invoke-direct {p1, p0}, LoY;-><init>(LpY;)V

    iput-object p1, p0, LpY;->b:LxI0;

    return-void
.end method


# virtual methods
.method public a(LpI0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LpY;->d:LpI0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, LpY;->b:LxI0;

    check-cast v0, LrI0;

    .line 3
    iget-object v0, v0, LrI0;->d:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iput-object p1, p0, LpY;->d:LpI0;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, LpY;->b:LxI0;

    check-cast p1, LrI0;

    invoke-virtual {p1, v0}, LrI0;->a(LxI0;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, LpY;->b()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 7
    iget-object v0, p0, LpY;->d:LpI0;

    if-eqz v0, :cond_1

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, LpY;->a()Z

    move-result v0

    .line 3
    iget-object v1, p0, LpY;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_4

    .line 4
    :cond_1
    iget-object v1, p0, LpY;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v4, "setAssistBlocked"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 6
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, LpY;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v1, p0, LpY;->a:Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8
    :try_start_1
    iget-object v4, p0, LpY;->e:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LpY;->c:Ljava/lang/Boolean;

    :catch_1
    return-void
.end method
