.class final Ld/am;
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
.field private final a:Ld/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Ld/k;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ld/z;-><init>()V

    iput-object p1, p0, Ld/am;->a:Ld/k;

    iput-boolean p2, p0, Ld/am;->b:Z

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
    iget-object v0, p0, Ld/am;->a:Ld/k;

    invoke-interface {v0, p2}, Ld/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Ld/am;->b:Z

    invoke-virtual {p1, p2, v0, v1}, Ld/at;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
