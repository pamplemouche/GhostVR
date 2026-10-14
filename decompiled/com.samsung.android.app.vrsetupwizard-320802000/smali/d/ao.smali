.class final Ld/ao;
.super Ld/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/z<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/z;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ld/at;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "@Url parameter is null."

    invoke-static {p2, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ld/at;->a(Ljava/lang/Object;)V

    return-void
.end method
