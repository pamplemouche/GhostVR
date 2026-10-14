.class final Ld/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/k<",
        "Lb/be;",
        "Lb/be;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/b;->a:Ld/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/be;)Lb/be;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ld/bb;->a(Lb/be;)Lb/be;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lb/be;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lb/be;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/be;

    invoke-virtual {p0, p1}, Ld/b;->a(Lb/be;)Lb/be;

    move-result-object p1

    return-object p1
.end method
