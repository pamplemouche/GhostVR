.class final Ld/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/k<",
        "TT;",
        "Lb/az;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lb/an;


# instance fields
.field private final b:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/xml; charset=UTF-8"

    invoke-static {v0}, Lb/an;->a(Ljava/lang/String;)Lb/an;

    move-result-object v0

    sput-object v0, Ld/a/a/b;->a:Lb/an;

    return-void
.end method

.method constructor <init>(Lorg/simpleframework/xml/Serializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/a/b;->b:Lorg/simpleframework/xml/Serializer;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/a/a/b;->b(Ljava/lang/Object;)Lb/az;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lb/az;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lb/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lc/f;->d()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Ld/a/a/b;->b:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ld/a/a/b;->a:Lb/an;

    invoke-virtual {v0}, Lc/f;->o()Lc/k;

    move-result-object v0

    invoke-static {p1, v0}, Lb/az;->a(Lb/an;Lc/k;)Lb/az;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
