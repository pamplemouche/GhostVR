.class final Ld/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/k<",
        "Lb/az;",
        "Lb/az;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    sput-object v0, Ld/c;->a:Ld/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/az;)Lb/az;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/az;

    invoke-virtual {p0, p1}, Ld/c;->a(Lb/az;)Lb/az;

    move-result-object p1

    return-object p1
.end method
