.class final Ld/an;
.super Ld/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/z<",
        "Lb/aq;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/an;

    invoke-direct {v0}, Ld/an;-><init>()V

    sput-object v0, Ld/an;->a:Ld/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/z;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ld/at;Lb/aq;)V
    .locals 0
    .param p2    # Lb/aq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ld/at;->a(Lb/aq;)V

    :cond_0
    return-void
.end method

.method bridge synthetic a(Ld/at;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lb/aq;

    invoke-virtual {p0, p1, p2}, Ld/an;->a(Ld/at;Lb/aq;)V

    return-void
.end method
