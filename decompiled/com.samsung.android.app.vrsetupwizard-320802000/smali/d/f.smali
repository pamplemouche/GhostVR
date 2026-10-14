.class final Ld/f;
.super Ljava/lang/Object;

# interfaces
.implements Ld/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/k<",
        "Lb/be;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/f;

    invoke-direct {v0}, Ld/f;-><init>()V

    sput-object v0, Ld/f;->a:Ld/f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/be;

    invoke-virtual {p0, p1}, Ld/f;->a(Lb/be;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/be;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lb/be;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
