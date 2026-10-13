.class public final synthetic Lat0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ldt0;

.field public final x:Landroid/content/Intent;

.field public final y:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldt0;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat0;->w:Ldt0;

    iput-object p2, p0, Lat0;->x:Landroid/content/Intent;

    iput-object p3, p0, Lat0;->y:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lat0;->w:Ldt0;

    iget-object v1, p0, Lat0;->x:Landroid/content/Intent;

    iget-object v2, p0, Lat0;->y:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1
    iget-object v3, v0, Ldt0;->d:LEc1;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 3
    iget-object v4, v0, Ldt0;->d:LEc1;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, LEc1;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Ldt0;->d:LEc1;

    new-instance v3, Lbt0;

    invoke-direct {v3, v0}, Lbt0;-><init>(Ldt0;)V

    invoke-interface {v1, v2, v3}, LEc1;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, v0, Ldt0;->e:Let0;

    invoke-interface {v0, v1}, Let0;->a(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
