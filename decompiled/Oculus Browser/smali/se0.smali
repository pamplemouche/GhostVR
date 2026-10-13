.class public Lse0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lse0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lse0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lse0;
    .locals 1

    .line 1
    sget-object v0, Lse0;->c:Lse0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lse0;

    invoke-direct {v0, p0}, Lse0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lse0;->c:Lse0;

    .line 3
    :cond_0
    sget-object p0, Lse0;->c:Lse0;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 4
    iget-object v0, p0, Lse0;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lse0;->b:Ljava/lang/Boolean;

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {v1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lse0;->b:Ljava/lang/Boolean;

    goto :goto_3

    :cond_1
    const v1, 0x11e7c17d

    .line 11
    iget-object v3, p0, Lse0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const v1, 0x645b72

    .line 12
    iget-object v2, p0, Lse0;->a:Landroid/content/Context;

    const-string v4, "com.google.android.gms"

    invoke-static {v2, v4}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lse0;->b:Ljava/lang/Boolean;

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lse0;->b:Ljava/lang/Boolean;

    .line 15
    :goto_3
    iget-object v0, p0, Lse0;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
