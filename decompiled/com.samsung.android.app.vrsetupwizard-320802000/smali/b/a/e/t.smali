.class final Lb/a/e/t;
.super Lb/a/e/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/e/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/e/b;->e:Lb/a/e/b;

    invoke-virtual {p1, v0}, Lb/a/e/ab;->a(Lb/a/e/b;)V

    return-void
.end method
