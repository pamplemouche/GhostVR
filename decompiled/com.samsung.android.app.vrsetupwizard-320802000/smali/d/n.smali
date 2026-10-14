.class Ld/n;
.super Ljava/lang/Object;

# interfaces
.implements Ld/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/h<",
        "Ljava/lang/Object;",
        "Ld/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ld/m;


# direct methods
.method constructor <init>(Ld/m;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Ld/n;->b:Ld/m;

    iput-object p2, p0, Ld/n;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ld/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld/n;->b(Ld/g;)Ld/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Ld/n;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Ld/g;)Ld/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Ld/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
