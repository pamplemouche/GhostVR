.class final Lb/bf;
.super Lb/be;


# instance fields
.field final synthetic a:Lb/an;

.field final synthetic b:J

.field final synthetic c:Lc/j;


# direct methods
.method constructor <init>(Lb/an;JLc/j;)V
    .locals 0

    iput-object p1, p0, Lb/bf;->a:Lb/an;

    iput-wide p2, p0, Lb/bf;->b:J

    iput-object p4, p0, Lb/bf;->c:Lc/j;

    invoke-direct {p0}, Lb/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/bf;->a:Lb/an;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lb/bf;->b:J

    return-wide v0
.end method

.method public c()Lc/j;
    .locals 1

    iget-object v0, p0, Lb/bf;->c:Lc/j;

    return-object v0
.end method
