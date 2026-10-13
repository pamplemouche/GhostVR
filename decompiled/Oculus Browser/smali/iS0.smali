.class public LiS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNS0;


# instance fields
.field public a:Landroid/content/Context;

.field public b:LOS0;

.field public c:Z

.field public final synthetic d:LjS0;


# direct methods
.method public constructor <init>(LjS0;Landroid/content/Context;LOS0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiS0;->d:LjS0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LiS0;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, LiS0;->b:LOS0;

    return-void
.end method


# virtual methods
.method public a(LJS0;)V
    .locals 2

    .line 1
    iget-object p1, p0, LiS0;->d:LjS0;

    .line 2
    iget-object p1, p1, LjS0;->a:LaS0;

    .line 3
    iget-object v0, p0, LiS0;->a:Landroid/content/Context;

    iget-object v1, p0, LiS0;->b:LOS0;

    invoke-interface {p1, v0, v1}, LaS0;->a(Landroid/content/Context;LOS0;)Z

    move-result p1

    iput-boolean p1, p0, LiS0;->c:Z

    return-void
.end method

.method public a(LLS0;)V
    .locals 2

    .line 4
    iget-object p1, p0, LiS0;->d:LjS0;

    .line 5
    iget-object p1, p1, LjS0;->a:LaS0;

    .line 6
    iget-object v0, p0, LiS0;->a:Landroid/content/Context;

    iget-object v1, p0, LiS0;->b:LOS0;

    invoke-interface {p1, v0, v1}, LaS0;->a(Landroid/content/Context;LOS0;)Z

    move-result p1

    iput-boolean p1, p0, LiS0;->c:Z

    return-void
.end method
