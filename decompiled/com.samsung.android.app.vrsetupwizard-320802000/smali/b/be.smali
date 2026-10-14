.class public abstract Lb/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/an;JLc/j;)Lb/be;
    .locals 1
    .param p0    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    new-instance v0, Lb/bf;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/bf;-><init>(Lb/an;JLc/j;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/an;[B)Lb/be;
    .locals 3
    .param p0    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    invoke-virtual {v0, p1}, Lc/f;->b([B)Lc/f;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lb/be;->a(Lb/an;JLc/j;)Lb/be;

    move-result-object p0

    return-object p0
.end method

.method private e()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Lb/be;->a()Lb/an;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lb/an;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract a()Lb/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()J
.end method

.method public abstract c()Lc/j;
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lb/be;->c()Lc/j;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/io/Reader;
    .locals 3

    iget-object v0, p0, Lb/be;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/bg;

    invoke-virtual {p0}, Lb/be;->c()Lc/j;

    move-result-object v1

    invoke-direct {p0}, Lb/be;->e()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/bg;-><init>(Lc/j;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lb/be;->a:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method
