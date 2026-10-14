.class final Ld/ad;
.super Ld/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ld/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ld/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld/k<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ld/z;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ld/ad;->a:Ljava/lang/String;

    iput-object p2, p0, Ld/ad;->b:Ld/k;

    iput-boolean p3, p0, Ld/ad;->c:Z

    return-void
.end method


# virtual methods
.method a(Ld/at;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/at;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/ad;->b:Ld/k;

    invoke-interface {v0, p2}, Ld/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ld/ad;->a:Ljava/lang/String;

    iget-boolean v1, p0, Ld/ad;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Ld/at;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
