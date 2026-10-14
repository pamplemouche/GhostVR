.class public final Lb/a/c/i;
.super Lb/be;


# instance fields
.field private final a:Lb/ag;

.field private final b:Lc/j;


# direct methods
.method public constructor <init>(Lb/ag;Lc/j;)V
    .locals 0

    invoke-direct {p0}, Lb/be;-><init>()V

    iput-object p1, p0, Lb/a/c/i;->a:Lb/ag;

    iput-object p2, p0, Lb/a/c/i;->b:Lc/j;

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 2

    iget-object v0, p0, Lb/a/c/i;->a:Lb/ag;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lb/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/an;->a(Ljava/lang/String;)Lb/an;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lb/a/c/i;->a:Lb/ag;

    invoke-static {v0}, Lb/a/c/f;->a(Lb/ag;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lc/j;
    .locals 1

    iget-object v0, p0, Lb/a/c/i;->b:Lc/j;

    return-object v0
.end method
