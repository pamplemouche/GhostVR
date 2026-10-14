.class public Lcom/samsung/android/app/vrsetupwizard/common/c/m;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 3

    const-string v0, "[SALogger]init()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SALogger]SA Logger Set : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/a/a/a/c;

    invoke-direct {v0}, Lcom/samsung/a/a/a/c;-><init>()V

    const-string v1, "480-399-515053"

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/c;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/c;

    move-result-object v0

    const-string v2, "10.1"

    invoke-virtual {v0, v2}, Lcom/samsung/a/a/a/c;->c(Ljava/lang/String;)Lcom/samsung/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->c()Lcom/samsung/a/a/a/c;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/a/a/a/j;->a(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V

    invoke-static {}, Lcom/samsung/a/a/a/j;->a()Lcom/samsung/a/a/a/j;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/a/a/a/j;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/j;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SALogger]screenLog : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/a/a/a/j;->a()Lcom/samsung/a/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/samsung/a/a/a/i;

    invoke-direct {v1}, Lcom/samsung/a/a/a/i;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/a/a/a/i;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/i;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/i;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/a/a/a/j;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SALogger]eventLog : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] at ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/a/a/a/j;->a()Lcom/samsung/a/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/samsung/a/a/a/g;

    invoke-direct {v1}, Lcom/samsung/a/a/a/g;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/a/a/a/g;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/g;

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/g;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/a/a/a/g;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/a/a/a/j;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SALogger]eventLog : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] at ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "det"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/a/a/a/j;->a()Lcom/samsung/a/a/a/j;

    move-result-object p2

    new-instance v1, Lcom/samsung/a/a/a/g;

    invoke-direct {v1}, Lcom/samsung/a/a/a/g;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/a/a/a/g;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/g;

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/g;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/g;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/g;->a(Ljava/util/Map;)Lcom/samsung/a/a/a/h;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/g;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/g;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/a/a/a/j;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SALogger]eventLog : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "det"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/a/a/a/j;->a()Lcom/samsung/a/a/a/j;

    move-result-object p1

    new-instance v1, Lcom/samsung/a/a/a/g;

    invoke-direct {v1}, Lcom/samsung/a/a/a/g;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/a/a/a/g;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/g;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/g;->a(Ljava/util/Map;)Lcom/samsung/a/a/a/h;

    move-result-object p0

    check-cast p0, Lcom/samsung/a/a/a/g;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/g;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/a/a/a/j;->a(Ljava/util/Map;)I

    :cond_0
    return-void
.end method
