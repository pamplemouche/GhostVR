.class public Lb/a/e/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lc/j;

.field d:Lc/i;

.field e:Lb/a/e/s;

.field f:Lb/a/e/aj;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb/a/e/s;->f:Lb/a/e/s;

    iput-object v0, p0, Lb/a/e/r;->e:Lb/a/e/s;

    sget-object v0, Lb/a/e/aj;->a:Lb/a/e/aj;

    iput-object v0, p0, Lb/a/e/r;->f:Lb/a/e/aj;

    iput-boolean p1, p0, Lb/a/e/r;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lb/a/e/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/e/j;

    invoke-direct {v0, p0}, Lb/a/e/j;-><init>(Lb/a/e/r;)V

    return-object v0
.end method

.method public a(Lb/a/e/s;)Lb/a/e/r;
    .locals 0

    iput-object p1, p0, Lb/a/e/r;->e:Lb/a/e/s;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lc/j;Lc/i;)Lb/a/e/r;
    .locals 0

    iput-object p1, p0, Lb/a/e/r;->a:Ljava/net/Socket;

    iput-object p2, p0, Lb/a/e/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/e/r;->c:Lc/j;

    iput-object p4, p0, Lb/a/e/r;->d:Lc/i;

    return-object p0
.end method
